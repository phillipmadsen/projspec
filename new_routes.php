<?php





Route::group(['prefix' => LaravelLocalization::getCurrentLocale()], function ()
{
    Route::group([
        'prefix'     => 'admin',

        'middleware' => ['before', 'sentinel.auth', 'sentinel.permission']
    ], function ()
    {

        Route::resource('products', 'ProductController', ['before' => 'hasAccess:products', 'except' => [  'show' ]]);
        
        
        

Route::post('admin/products', ['as' => 'admin.products.store', 'uses' => 'ProductController@store']);
Route::get('admin/products/create', ['as' => 'admin.products.create', 'uses' => 'ProductController@create']);
Route::put('admin/products/{products}', ['as' => 'admin.products.update', 'uses' => 'ProductController@update']);

Route::get('admin/products/{products}', ['as' => 'admin.products.show', 'uses' => 'ProductController@show']);
Route::get('admin/products/{products}/edit', ['as' => 'admin.products.edit', 'uses' => 'ProductController@edit']);
        
        Route::delete('admin/products/{products}', ['as' => 'admin.products.destroy', 'uses' => 'ProductController@destroy']);
        
        Route::get('products/{id}/delete', ['as'   => 'admin.products.delete', 'uses' => 'ProductController@confirmDestroy'])->where('id', '\d+');
    });
});
