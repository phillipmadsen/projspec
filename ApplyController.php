<?php namespace Fully\Http\Controllers;
use Input;
use Redirect;
use Session;
use Validator;

class ApplyController extends Controller
{
	public function upload()
	{
		// getting all of the post data
		$file = ['image' => Input::file('image')];
		                                  // setting up rules
		$rules = ['image' => 'required']; //mimes:jpeg,bmp,png and for max size max:10000
		                                  // doing the validation, passing post data, rules and the messages
		$validator = Validator::make($file, $rules);
		if ($validator->fails())
		{
			// send back to the page with the input data and errors
			return Redirect::to('upload')->withInput()->withErrors($validator);
		}
		else
		{
			// checking file is valid.
			if (Input::file('image')->isValid())
			{
				$destinationPath = 'uploads';                                          // upload path
				$extension       = Input::file('image')->getClientOriginalExtension(); // getting image extension
				$fileName        = rand(11111, 99999) . '.' . $extension;              // renameing image
				Input::file('image')->move($destinationPath, $fileName);               // uploading file to given path
				                                                                       // sending back with message
				Session::flash('success', 'Upload successfully');
				return Redirect::to('upload');
			}
			else
			{
				// sending back with error message.
				Session::flash('error', 'uploaded file is not valid');
				return Redirect::to('upload');
			}
		}
	}

	public function multiple_upload()
	{
		// getting all of the post data
		$files = Input::file('images');
		// Making counting of uploaded images
		$file_count = count($files);
		// start count how many uploaded
		$uploadcount = 0;
		foreach ($files as $file)
		{
			$rules     = ['file' => 'required']; //'required|mimes:png,gif,jpeg,txt,pdf,doc'
			$validator = Validator::make(['file' => $file], $rules);
			if ($validator->passes())
			{
				$destinationPath = 'uploads';
				$filename        = $file->getClientOriginalName();
				$upload_success  = $file->move($destinationPath, $filename);
				$uploadcount++;
			}
		}
		if ($uploadcount == $file_count)
		{
			Session::flash('success', 'Upload successfully');
			return Redirect::to('uploading');
		}
		else
		{
			return Redirect::to('uploading')->withInput()->withErrors($validator);
		}
	}
}