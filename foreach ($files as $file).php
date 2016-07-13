<?php
            foreach ($files as $file)
            {

                $path = public_path('uploads/products');
                $filename = $this->file($request->file('images'));
                $original_name = $file->getClientOriginalName();
                // Validate each file
                $rules     = ['images' => 'image|mimes:jpg,jpeg,bmp,png,gif|max:9000'];
                $validator = Validator::make(['file' => $file], $rules);

                if ($validator->fails())
                {
                    return response()->json(['errors' => $validator->messages()->all()], 400);
                }

                //save the image and get the $path to the file

                ProductImage::create(
                    'product_id' => $product->id,
                     'original_name' => $original_name,
                     'filename' => $filename,
                    'path' => $path
                    );

                $file->move($path, $filename);

            }



                    $input = $request->all();

        $product = $this->productRepository->create($input, $request->except('attribute_name', 'product_attribute_value'));

        //if ($request->hasFile('image'))
        //{
        //    $file = $request->file('image');
        //    $file = $this->productRepository->uploadProductImage($file);
        //    $request->merge(['image' => $file->getFileInfo()->getFilename()]);
        //    $this->generateProductThumbnail($file);
        //
        //}


        // if($request->hasFile('images')) {

            $files = $request->file('images');

            foreach ($files as $file)
            {
                    $path = public_path('uploads/products');
                    // Validate each file
                    $rules     = ['images' => 'image|mimes:jpg,jpeg,bmp,png,gif|max:9000'];
                    $validator = Validator::make(['file' => $file], $rules);

                    if ($validator->fails())
                    {
                        return response()->json(['errors' => $validator->messages()->all()], 400);
                    }

                //save the image and get the $path to the file

                ProductImage::create(
                    'product_id' => $product->id,
                    'path' => $path
                    );

            }
        // }


    //dd($request->file('file'));

        $file = $request->file('image');
        //$name = time() . $file->getClientOriginalName();
        //$file->move('uploads/products/', $name);
        $file->move(storage_path() . '/test/', $file->getClientOriginalName());

        // $product = Product::findOrFail($id)->first();
        //$product = Product::findOrNew($id);

        //dd($product);

    $product->images = ProductImage::create([
                'product_id' => $product->id,
                'path' => '/uploads/products/{$name}'
        ]);

    public function uploadThumbAndMainImage($request,$ProductId)
    {
      // get basic info
        $s3 = Storage::disk('s3');
        $file = $request->file('images');
        $extension = $request->file('images')->guessExtension();
        $filename = uniqid() . '.' . $extension;
        $mimeType = $request->file('images')->getClientMimeType();
        $fileSize = $request->file('images')->getClientSize();
        $image = Image::make($file);

        // generate the thumb and medium image
        $imageThumb = Image::make($file)->fit(320)->crop(320, 240, 0, 0);
        $imageThumb->encode($extension);

        $imageMedium = Image::make($file)->resize(800, null, function ($constraint) {
            $constraint->aspectRatio();
        });
        $imageMedium->encode($extension);

        $image->encode($extension);

        // upload image to S3
        $s3->put("images/{$userId}/main/" . $filename, (string) $image, 'public');
        $s3->put("images/{$userId}/medium/" . $filename, (string) $imageMedium, 'public');
        $s3->put("images/{$userId}/thumb/" . $filename, (string) $imageThumb, 'public');






$pruduct_image = new ProductImage;

// If update(), either use route–model binding to get model instance injected into controller action
// Or find model from database
$pruduct_image = ProductImage::findOrFail($id);

// Fill model with data from request
$pruduct_image->fill($request->all());

// Do image upload logic…
$pruduct_image->image_filename = $filename;

// Save model
$pruduct_image->save();



    $pruduct_image = new ProductImage;
                $pruduct_image = ProductImage::findOrFail($id);


if($request->hasFile('image')) {
        $file = Input::file('image');
        $timestamp = str_replace([' ', ':', '-'], '', Carbon::now()->toDateTimeString());
        $name = $timestamp . '_' . $file->getClientOriginalName();
        $file->move(public_path() . '/uploads/images/', $name);

        $request->merge([
            'image' => $name,
        ]);
    }







}



    public function store(CreateProductRequest $request)
    {
        $input = $request->all();

        $product = $this->productRepository->create($input);

        if($request->hasFile('images'))
        {

            $files = $request->file('images');

            foreach ($files as $file)
            {

                $path = public_path('uploads/products');
                $filename = $this->file($request->file('images'));
                $original_name = $file->getClientOriginalName();
                // Validate each file
                $rules     = ['images' => 'image|mimes:jpg,jpeg,bmp,png,gif|max:9000'];
                $validator = Validator::make(['file' => $file], $rules);

                if ($validator->fails())
                {
                    return response()->json(['errors' => $validator->messages()->all()], 400);
                }

                //save the image and get the $path to the file

                Product_Image::create(
                    'product_id' => $product->id,
                    'original_name' => $original_name,
                    'filename' => $filename,
                    'path' => $path
                    );

                $file->move($path, $filename);

            }
        }
    }





class SaveModelWithImage
{
    public function __construct(ModelName $model)
    {
        $this->model = $model;
    }

    public function save(Request $request)
    {
        $this->model->fill($request->all());

        if ($request->hasFile('file_input_name')) {
            $this->model->image_filename = $this->uploadFile($request->file('file_input_name'));
        }

        return $this->model->save();
    }

    protected function uploadImage(UploadedFile $file)
    {
        // TODO: Generate filename

        // Move file to path of your choice
        $file->move(storage_path('app'));

        // Return generated filename
        return $filename;
    }
}