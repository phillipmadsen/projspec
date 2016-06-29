<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
	 protected $table = 'images';
	protected $guarded = ['id'];

	// protected $fillable = array('path');


    public static $rules = [
        'file' => 'required|mimes:png,gif,jpeg,jpg,bmp'
    ];

    public static $messages = [
        'file.mimes' => 'Uploaded file is not in image format',
        'file.required' => 'Image is required'
    ];

    /**
     * Relationship with the product model.
     *
     * @author	Phillip Madsen
     * @return	\Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function Product()
    {
    	return $this->belongsToMany(Product::class, 'product_id', 'products_images');
    }
  
 
}