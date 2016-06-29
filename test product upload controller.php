<?php 



<?php

namespace Fully\Http\Controllers;

use Flash;
use Fully\Helpers\Thumbnail;
use Fully\Http\Controllers\AppBaseController;
use Fully\Http\Requests\CreateProductRequest;
use Fully\Http\Requests\UpdateProductRequest;
use Fully\Logic\Image\ImageRepository;
use Fully\Models\Product;
use Fully\Models\ProductFeature;
use Fully\Models\ProductVariant;
use Fully\Models\User;
use Fully\Repositories\Category\CategoryInterface;
use Fully\Repositories\Category\CategoryRepository as Category;
use Fully\Repositories\ProductRepository;
use Illuminate\Http\Request;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;
use File;

class ProductController extends AppBaseController
{
	/**
	 * @var mixed
	 */
	private $productRepository;
	/**
	 * @var mixed
	 */
	private $model;
	/**
	 * @var mixed
	 */
	private $user;
	/**
	 * @var mixed
	 */
	protected $img;
	/**
	 * @var mixed
	 */
	protected $category;

	/**
	 * @param ProductRepository $productRepo
	 * @param CategoryInterface $category
	 */
	public function __construct(ProductRepository $productRepo, CategoryInterface $category, Product $model, User $user, ImageRepository $imageRepository)
	{
		$this->productRepository = $productRepo;
		$this->category          = $category;
		$this->model             = $model;
		$this->user              = $user;
		$this->image             = $imageRepository;

	}

	/**
	 * Display a listing of the Product.
	 *
	 * @param  Request    $request
	 * @return Response
	 */
	public function index(Request $request)
	{
		$this->productRepository->pushCriteria(new RequestCriteria($request));
		$products = $this->productRepository->paginate(20);

		return view('backend.products.index')
			->with('products', $products);
	}

	/**
	 * Show the form for creating a new Product.
	 *
	 * @return Response
	 */
	public function create()
	{
		$categories = $this->category->lists();

		return view('backend.products.create', compact('categories'));
	}

	/**
	 * Store a newly created Product in storage.
	 *
	 * @param  CreateProductRequest $request
	 * @return Response
	 */
	public function store(CreateProductRequest $request)
	{
		$input = $request->all();

		$product = new Product($input);

		$product->save();

		$imageName = $request->file('primarty_image')->getClientOriginalName() . '.' .
		$request->file('primarty_image')->getClientOriginalExtension();

		$usethisname = str_slug($product->name, '-');
		$usedir      = $usethisname;
		$usename     = pathinfo($imageName, PATHINFO_FILENAME);

		$DestinationDir = base_path() . '/public/uploads/products/' . $usedir;
		if ($request->hasFile($DestinationDir)) {
		}else{
		File::makeDirectory($DestinationDir, $mode = 0777, true, true);
		}
	 






// $.ajax({
//     url: 'addimagegallery',
//     type: 'POST',
//     data: {addimagegallery: 'addimagegallery'},
// })
// .done(function(response) {
//     console.log(response);
// });




	// $path = public_path().'/images/article/imagegallery/' . $galleryId;
	// File::makeDirectory($path, $mode = 0777, true, true);

		//dd($DestinationDir . 'created');
	 
		//dd($DestinationDir . '/ created successfully!!' . $usename);
		// if (!file_exists($DestinationDir))
		// {
		// 	File::makeDirectory($DestinationDir);
		// 	dd($DestinationDir . 'created');
		// }
		// else
		// {
		// 	dd('already there');
		// }

		// dd($usedir);

		// $imageName = $product->id . '.' .
		// $request->file('image')->getClientOriginalExtension();

		// $request->file('image')->move(
		// 	base_path() . '/public/images/catalog/', $imageName
		// );

		// return \Redirect::route('admin.products.edit',
		// 	[$product->id])->with('message', 'Product added!');

		// if ($request->hasFile('product_image_file'))
		// {
		// 	$file = $request->file('product_image_file');
		// 	$file = $this->productRepository->uploadProductImage($file);

		// 	$request->merge(['product_image' => $file->getFileInfo()->getFilename()]);

		// 	$this->generateProductThumbnail($file);
		// }

		$product = $this->productRepository->create($input, $request->except('attribute_name', 'product_attribute_value', 'product_image_file'));



		if (!empty($request->original_name))
		{
			// foreach ($request->original_name as $productImage)
			 foreach ($data as $key => $value) {
			{
				$productImage               = new Image();
				$productImage->original_name = $productImage;
				$product->images()->save($$productImage);

			}


		 
		}


$uploadPicture = array();

    foreach( $pictures as $picture )
    {

        $destinationPath = public_path().'/assets/img';
        $fileName = $picture->getClientOriginalName();
        $uploadSuccess = $picture->move($destinationPath, $fileName);


        $pictureModel = new Picture;
        array_push($uploadPicture, new Picture(array(
        'picture_name' => $fileName
        )));
    }

    $item = Item::find($item->id);

    $item->pictures()->saveMany($uploadPicture);


    if($item->save() && $item->pictures()->saveMany($uploadPicture))
    {
        echo "<pre>".var_dump(Input::file('pictures'))."</pre>";
    }


























public function store(ProductRequest $request)
{

    $product = new Product(array(
      'name' => $request->get('name'),
      'sku'  => $request->get('sku')
    ));

    $product->save();

    $imageName = $product->id . '.' . 
        $request->file('image')->getClientOriginalExtension();

    $request->file('image')->move(
        base_path() . '/public/images/catalog/', $imageName
    );

    return \Redirect::route('admin.products.edit', 
        array($product->id))->with('message', 'Product added!');    
}

// -----------------------------------------

$count = $request->get('imageAndDescriptionCount');
$description = $request->get('description'); // assign array of descriptions
$image = $request->file('image'); // assign array of images

// set upload path using https://laravel.com/docs/5.1/helpers#method-storage-path 
// make sure 'storage/uploads' exists first
$destinationPath = storage_path . '/uploads'; 

for($i = 0; $i < $count; $i++) {

    $data = new Finding;
    $data->description = [$i];

    $file = $image[$i];

    if ($file->isValid()) {
        $extension = $file->getClientOriginalExtension(); // file extension
        $fileName = uniqid(). '.' .$extension; // file name with extension
        $file->move($destinationPath, $fileName); // move file to our uploads path

        $data->image_location = $fileName;
        // or you could say $destinationPath . '/' . $fileName
        $data->save();
    } else {
        // handle error here
    }

}

flash('success', 'Uploads Successful');
return Redirect::to('/upload');
// -----------------------------------------












		


		if (!empty($request->attribute_name))
		{
			foreach ($request->attribute_name as $key => $item)
			{
				$productVariant                          = new ProductVariant();
				$productVariant->attribute_name          = $item;
				$productVariant->product_attribute_value = $request->product_attribute_value[$key];
				$product->productVariants()->save($productVariant);
			}
		}

		if (!empty($request->feature_name))
		{
			foreach ($request->feature_name as $feature)
			{
				$productFeature               = new ProductFeature();
				$productFeature->feature_name = $feature;
				$product->productFeatures()->save($productFeature);

			}
		}

		Flash::success('Product saved successfully.');

		return redirect(route(getLang() . '.admin.products.index'));
	}

	/**
	 * Display the specified Product.
	 *
	 * @param  int        $id
	 * @return Response
	 */
	public function show($id)
	{
		$product = $this->productRepository->findWithoutFail($id);

		if (empty($product))
		{
			Flash::error('Product not found');

			return redirect(route(getLang() . '.admin.products.index'));
		}

		return view('backend.products.show')->with('product', $product);
	}

	/**
	 * Show the form for editing the specified Product.
	 *
	 * @param  int        $id
	 * @return Response
	 */
	public function edit($id)
	{
		$product = $this->productRepository->findWithoutFail($id);

		//  var_dump($product->toArray());

		//$category = $this->category->find($id);

		if (empty($product))
		{
			Flash::error('Product not found');

			return redirect(route(getLang() . '.admin.products.index'));
		}

		return view('backend.products.edit')->with('product', 'category');
	}

	/**
	 * Update the specified Product in storage.
	 *
	 * @param  int                  $id
	 * @param  UpdateProductRequest $request
	 * @return Response
	 */

	public function update($id, UpdateProductRequest $request)
	{
		$product = $this->productRepository->findWithoutFail($id);

		if (empty($product))
		{
			Flash::error('Product not found');

			return redirect(route(getLang() . '.admin.products.index'));
		}

		if ($request->hasFile('product_image_file'))
		{
			$file = $request->file('product_image_file');
			$file = $this->productRepository->uploadProductImage($file);
			$request->merge([
				'product_image' => $file->getFileInfo()->getFilename()
			]);
			$this->generateProductThumbnail($file);
		}
		if (empty($product))
		{
			Flash::error('Product not found');
			return redirect(route('admin.products.index'));
		}

		$product->update($request->except('attribute_name', 'product_attribute_value', 'product_image_file', 'feature_name'));

		if (!empty($request->attribute_name))
		{
			foreach ($request->attribute_name as $key => $item)
			{
				$productVariant                          = new ProductVariant();
				$productVariant->attribute_name          = $item;
				$productVariant->product_attribute_value = $request->product_attribute_value[$key];
				$product->productVariants()->save($productVariant);
			}
		}

		if (!empty($request->feature_name))
		{
			foreach ($request->feature_name as $feature)
			{
				$productFeature               = new ProductFeature();
				$productFeature->feature_name = $feature;
				$product->productFeatures()->save($productFeature);
			}
		}

		$product = $this->productRepository->update($request->all(), $id);

		Flash::success('Product updated successfully.');

		return redirect(route(getLang() . '.admin.products.index'));
	}

	/**
	 * Remove the specified Product from storage.
	 *
	 * @param  int        $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$product = $this->productRepository->findWithoutFail($id);

		if (empty($product))
		{
			Flash::error('Product not found');

			return redirect(route('admin.products.index'));
		}

		$this->productRepository->delete($id);

		Flash::success('Product deleted successfully.');

		return redirect(route('admin.products.index'));
	}

	/**
	 * @param  array   $variants
	 * @return mixed
	 */
	private function getProductVariants($variants = [])
	{
		if (isset($variants))
		{
			$variants = array_map(
				function ($v)
				{
					return explode(':', $v);
				},
				explode(',', $variants)
			);
		}
		return $variants;
	}

	/**
	 * @param  array   $features
	 * @return mixed
	 */
	private function getProductFeatures($features = [])
	{
		if (isset($features))
		{
			$features = array_map(
				function ($v)
				{
					return explode(':', $v);
				},
				explode(',', $features)
			);
		}
		return $features;
	}

	/**
	 * @param $file
	 */
	private function generateProductThumbnail($file)
	{
		$sourcePath = $file->getPath() . '/' . $file->getFilename();
		$thumbPath  = $file->getPath() . '/thumb_' . $file->getFilename();
		Thumbnail::generate_image_thumbnail($sourcePath, $thumbPath);
	}

	/**
	 * @param  $id
	 * @return mixed
	 */
	public function togglePublish($id)
	{
		return $this->product->togglePublish($id);
	}

	public function lists()
	{
		//	return $this->product->get()->where('lang', $this->getLang())->lists('title', 'id');
	}
}
