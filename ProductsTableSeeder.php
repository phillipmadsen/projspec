<?php

use Illuminate\Database\Seeder;

class ProductsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('products')->delete();
        
        \DB::table('products')->insert(array (
            0 => 
            array (
                'id' => 2,
                'slug' => 'quiltmotion',
                'ispromo' => 0,
                'is_published' => 0,
                'availability' => NULL,
                'manufacturer' => 'The Grace Company',
                'product_line' => 'Automation Software',
                'status' => 'InStock',
                'office_status' => 'Draft',
                'guid' => '',
                'asin' => '',
                'model' => '',
                'sku' => '',
                'upc' => '',
                'mpn' => '',
                'name' => 'QuiltMotion',
                'subtitle' => 'Computer Automated Quilting Powered by QuiltCAD',
                'short_description' => 'QuiltMotions quilt design software comes with a library of over 200 patterns to choose from. You can always import new digital patterns from other sources, or use the pattern design software to create your own!',
                'description' => 'Enjoy the benefits of a professional automated quilting system in the comfort of your own home! You design it, QuiltMotion quilts it! QuiltMotion takes you seamlessly through pattern design to stitching with absolute ease.

Call for availability and pricing
1-800-264-0644

Different versions of QuiltMotion have been designed for different branded sewing machines. Contact your sewing machine dealer to see if they have a QuiltMotion for your machine.',
                'feature' => NULL,
                'category' => '1',
                'meta_title' => '',
                'meta_description' => '',
                'facebook_title' => '',
                'google_plus_title' => '',
                'twitter_title' => '',
                'price' => 0,
                'promo_price' => 0,
                'msrp_price' => 0,
                'dealer_price' => 0,
                'employee_price' => 0,
                'sale_price' => 0,
                'sale_price_coupon_code' => '',
                'sale_price_start_date' => '0000-00-00 00:00:00',
                'sale_price_end_date' => '0000-00-00 00:00:00',
                'quantity' => 0,
                'tax_id' => 0,
                'tax_status' => '',
                'tax_class' => '',
                'video_url' => '',
                'path' => NULL,
                'file_name' => NULL,
                'file_size' => NULL,
                'image_alt' => NULL,
                'primary_image_label' => '',
                'primary_image_file_size' => NULL,
                'primary_image' => NULL,
                'second_image_label' => '',
                'second_image_file_size' => NULL,
                'second_image' => NULL,
                'third_image_label' => '',
                'third_image_file_size' => NULL,
                'third_image' => NULL,
                'fourth_image_label' => '',
                'fourth_image_file_size' => NULL,
                'fourth_image' => NULL,
                'fifth_image_label' => '',
                'fifth_image_file_size' => NULL,
                'fifth_image' => NULL,
                'product_doc' => NULL,
                'product_doc_label' => NULL,
                'product_doc_file_size' => NULL,
                'tracking' => '',
                'datalayer' => '',
                'pubished_at' => '0000-00-00 00:00:00',
                'created_at' => '2016-06-24 17:32:53',
                'updated_at' => '2016-06-24 17:32:53',
                'deleted_at' => NULL,
            ),
            1 => 
            array (
                'id' => 3,
                'slug' => 'z44-frame',
                'ispromo' => 0,
                'is_published' => 1,
                'availability' => NULL,
                'manufacturer' => 'The Grace Company',
                'product_line' => 'Hand Quilting',
                'status' => 'InStock',
                'office_status' => 'Draft',
                'guid' => '',
                'asin' => '',
                'model' => ' Z44',
                'sku' => '636343300455',
                'upc' => '636343300455',
                'mpn' => '3-FF Z44 Pro Frame',
                'name' => 'The Z44 No-Baste Hand Quilting Frame',
                'subtitle' => 'by The Grace Company',
                'short_description' => 'The Z44 is our top of the line hand quilting frame, as well as the most adjustable frame on the market. You can set the included height-adjustable legs to your level without the need of any tools! The work area also tilts to six different angles, letting you work in comfort. The Z44 is also durable and designed to withstand heavy use. Made with a beautifully crafted Baltic Birch wood, this is yet another way Grace quilting frames combine style and functionality.',
                'description' => 'When choosing a hand frame for your quilting projects, there are four major points every quilter should consider:

<ul><li>Typically hand frames come with three rails. For easier management and a cleaner work flow, a fourth rail would be instrumental.</li>

<li>Look for an easy to maintain unit with precision ratchets and durable aluminum rails that simplifies fabric and tension manipulation without basting.</li>

<li>The scope of projects has to be taken into account. Many frames will only accommodate queen sizes and smaller. If you\'re working on larger sizes, you want a frame that handles them.</li>

<li>Flexibility is critical. If you have limited space, a frame that folds would be ideal. Even better, a unit that folds with fabric still installed. You should also consider height adjustable legs.</li></ul>

Fortunately, there\'s the Grace Z44 Quilting Frame. No quilter will be disappointed by its performance. An affordable option, it has a design with all the aforementioned advantages, as well as a range of solid features that will enhance your quilting productivity in every way.

Utilizing the Grace Z44 Quilting Frame means access to:

<ul><li>Height adjustable legs that require no tools.</li>
<li>Six different tilting angles from vertical to horizontal, enhancing comfort in your work process.</li>
<li>A practical design that ensures leg space is never lost, regardless of frame angle.</li>
<li>Superior tension via a 50 tooth ratchet.</li>
<li>Easy foldaway for convenient storage.</li>
<li>Simplified set up for creating everything from crib (59 inches) to king (108) sizes.</li>
<li>With its Fabri-Fast features, there is no need for ties, tacks or tape. Attaching fabric will never be easier.</li>
<li>A fourth rail for superior batting control.</li></ul>

The Grace Z44 Quilting Frame isn\'t merely functional. Engineered from Baltic Birch wood, it has a beautiful finish. Its poles are multi-layered Alderwood laminations with other elements like hardwood, poplar hardwood and plywood to help ensure years of use without warping, twisting or breaking. 

Considering its cost, no quilter will be disappointed by the performance of the Grace Z44 Quilting Frame. Improve its flexibility by adjusting rails so that more than one person can work on the same project simultaneously. It also has options for hand applied stain, casters, super king extensions, swing arm lamp and bungee clamps.

For its affordability, convenience and performance, the Grace Z44 Quilting Frame delivers on its promise to be one of the best investments a quilter can find.',
                'feature' => NULL,
                'category' => '2',
                'meta_title' => 'The Z44 No-Baste Hand Quilting Frame',
                'meta_description' => 'The Z44 is our top of the line hand quilting frame, as well as the most adjustable frame on the market. You can set the included height-adjustable legs to your level without the need of any tools! The work area also tilts to six different angles, letting ',
                'facebook_title' => 'The Z44 No-Baste Hand Quilting Frame',
                'google_plus_title' => 'The Z44 No-Baste Hand Quilting Frame',
                'twitter_title' => 'The Z44 No-Baste Hand Quilting Frame',
                'price' => 699,
                'promo_price' => 0,
                'msrp_price' => 0,
                'dealer_price' => 0,
                'employee_price' => 0,
                'sale_price' => 0,
                'sale_price_coupon_code' => '',
                'sale_price_start_date' => '0000-00-00 00:00:00',
                'sale_price_end_date' => '0000-00-00 00:00:00',
                'quantity' => 0,
                'tax_id' => 0,
                'tax_status' => '',
                'tax_class' => '',
                'video_url' => 'https://www.youtube.com/watch?v=dWDBLEx8riw',
                'path' => '/uploads/tmp/hqf/',
                'file_name' => 'z44_sally.jpg',
                'file_size' => NULL,
                'image_alt' => 'z44 frame',
                'primary_image_label' => 'z44 frame',
                'primary_image_file_size' => NULL,
                'primary_image' => 'z44_sally.jpg',
                'second_image_label' => '',
                'second_image_file_size' => NULL,
                'second_image' => NULL,
                'third_image_label' => '',
                'third_image_file_size' => NULL,
                'third_image' => NULL,
                'fourth_image_label' => '',
                'fourth_image_file_size' => NULL,
                'fourth_image' => NULL,
                'fifth_image_label' => '',
                'fifth_image_file_size' => NULL,
                'fifth_image' => NULL,
                'product_doc' => NULL,
                'product_doc_label' => NULL,
                'product_doc_file_size' => NULL,
                'tracking' => '',
                'datalayer' => '',
                'pubished_at' => '0000-00-00 00:00:00',
                'created_at' => '2016-06-27 17:36:35',
                'updated_at' => '2016-06-27 17:36:35',
                'deleted_at' => NULL,
            ),
        ));
        
        
    }
}
