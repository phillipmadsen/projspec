/*
Navicat MySQL Data Transfer

Source Server         : Rackspace Server MYsQL phillip
Source Server Version : 50546
Source Host           : 162.242.218.155:3306
Source Database       : stage_grace

Target Server Type    : MYSQL
Target Server Version : 50546
File Encoding         : 65001

Date: 2016-06-28 13:23:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ispromo` tinyint(1) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `availability` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_line` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sku` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upc` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mpn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `feature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `promo_price` int(10) unsigned DEFAULT NULL,
  `msrp_price` int(10) unsigned DEFAULT NULL,
  `dealer_price` int(10) unsigned DEFAULT NULL,
  `employee_price` int(10) unsigned DEFAULT NULL,
  `sale_price` int(11) DEFAULT NULL,
  `sale_price_coupon_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sale_price_start_date` timestamp NULL DEFAULT NULL,
  `sale_price_end_date` timestamp NULL DEFAULT NULL,
  `quantity` int(10) unsigned DEFAULT NULL,
  `tax_id` int(10) unsigned DEFAULT NULL,
  `tax_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(10) unsigned DEFAULT NULL,
  `image_alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_image_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_image_file_size` int(10) unsigned DEFAULT NULL,
  `primary_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `second_image_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `second_image_file_size` int(10) unsigned DEFAULT NULL,
  `second_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `third_image_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `third_image_file_size` int(10) unsigned DEFAULT NULL,
  `third_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fourth_image_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fourth_image_file_size` int(10) unsigned DEFAULT NULL,
  `fourth_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fifth_image_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fifth_image_file_size` int(10) unsigned DEFAULT NULL,
  `fifth_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_doc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_doc_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_doc_file_size` int(10) unsigned DEFAULT NULL,
  `tracking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datalayer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pubished_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_pubished_at_index` (`pubished_at`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'grace-hoop-squared', '0', '1', null, 'The Grace Company', 'Hoops', 'InStock', 'Draft', '', '', '', '', '', '', 'The Grace Hoop2', '', 'The Grace Hoop2 is the foremost of a great line of square hoops designed to make hoop quilting easier. The square weave in fabric lends itself naturally to these hoops, achieving a better even tension on all sides. \r\n', 'The Grace Hoop2 is the foremost of a great line of square hoops designed to make hoop quilting easier. The square weave in fabric lends itself naturally to these hoops, achieving a better even tension on all sides. Designed with your comfort in mind, the Grace Hoop2 can adjust in height and angle to match your work-style.', null, '5', 'The Grace Hoop2', '', 'The Grace Hoop2', 'The Grace Hoop2', 'The Grace Hoop2', '299', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '25', '0', '', '', '', '/uploads/products/hoops/', 'chair-quilt_combo.jpg', null, null, ' Grace Hoop2', null, 'chair-quilt_combo.jpg', '', null, null, '', null, null, '', null, null, '', null, null, null, null, null, '', '', '0000-00-00 00:00:00', '2016-06-22 13:36:17', '2016-06-22 13:36:17', null);
INSERT INTO `products` VALUES ('3', 'z44', '0', '1', null, 'The Grace Company', 'Hand Quilting', 'InStock', 'Draft', '', '', 'z44', '', '', 'z44', 'The Z44 ', 'No-Baste Hand Quilting Frame', 'The Z44 is our top of the line hand quilting frame, as well as the most adjustable frame on the market. You can set the included height-adjustable legs to your level without the need of any tools! The work area also tilts to six different angles, letting you work in comfort. The Z44 is also durable and designed to withstand heavy use. Made with a beautifully crafted Baltic Birch wood, this is yet another way Grace quilting frames combine style and functionality.', '<p>When choosing a hand frame for your quilting projects, there are four major points every quilter should consider:</p>\r\n\r\n<ul>\r\n    <li>Typically hand frames come with three rails. For easier management and a cleaner work flow, a fourth rail would be instrumental.</li>\r\n    <li>Look for an easy to maintain unit with precision ratchets and durable aluminum rails that simplifies fabric and tension manipulation without basting.</li>\r\n    <li>The scope of projects has to be taken into account. Many frames will only accommodate queen sizes and smaller. If you\'re working on larger sizes, you want a frame that handles them.</li>\r\n    <li>Flexibility is critical. If you have limited space, a frame that folds would be ideal. Even better, a unit that folds with fabric still installed. You should also consider height adjustable legs.</li>\r\n</ul>\r\n\r\n<p>Fortunately, there\'s the Grace Z44 Quilting Frame. No quilter will be disappointed by its performance. An affordable option, it has a design with all the aforementioned advantages, as well as a range of solid features that will enhance your quilting productivity in every way.</p>\r\n\r\n<strong>Utilizing the Grace Z44 Quilting Frame means access to:</strong>\r\n\r\n<ul>\r\n<li>Height adjustable legs that require no tools.</li>\r\n<li>Six different tilting angles from vertical to horizontal, enhancing comfort in your work process.</li>\r\n<li>A practical design that ensures leg space is never lost, regardless of frame angle.</li>\r\n<li>Superior tension via a 50 tooth ratchet.</li>\r\n<li>Easy foldaway for convenient storage.</li>\r\n<li>Simplified set up for creating everything from crib (59 inches) to king (108) sizes.</li>\r\n<li>With its Fabri-Fast features, there is no need for ties, tacks or tape. Attaching fabric will never be easier.</li>\r\n<li>A fourth rail for superior batting control.</li>\r\n</ul>\r\n\r\n<p>The Grace Z44 Quilting Frame isn\'t merely functional. Engineered from Baltic Birch wood, it has a beautiful finish. Its poles are multi-layered Alderwood laminations with other elements like hardwood, poplar hardwood and plywood to help ensure years of use without warping, twisting or breaking.</p> \r\n\r\n<p>Considering its cost, no quilter will be disappointed by the performance of the Grace Z44 Quilting Frame. Improve its flexibility by adjusting rails so that more than one person can work on the same project simultaneously. It also has options for hand applied stain, casters, super king extensions, swing arm lamp and bungee clamps.</p>\r\n\r\n<p>For its affordability, convenience and performance, the Grace Z44 Quilting Frame delivers on its promise to be one of the best investments a quilter can find.</p>', null, '2', 'The Z44 No-Baste Hand Quilting Frame', 'The Z44 is our top of the line hand quilting frame, as well as the most adjustable frame on the market. You can set the included height-adjustable legs to your level without the need of any tools!  ', 'The Z44 No-Baste Hand Quilting Frame', 'The Z44 No-Baste Hand Quilting Frame', 'The Z44 No-Baste Hand Quilting Frame', '699', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '50', '0', '', '', '', '/uploads/products/', 'z44_sally.jpg', null, null, 'z44 frame', null, 'z44_sally.jpg', '', null, null, '', null, null, '', null, null, '', null, null, null, null, null, '', '', '0000-00-00 00:00:00', '2016-06-27 10:59:18', '2016-06-27 10:59:18', null);
INSERT INTO `products` VALUES ('4', 'ez3', '0', '1', null, 'The Grace Company', 'Qnuque', 'InStock', 'Draft', '', '', '', '', '636343346484', '', 'Start-Right EZ3', ' No-Baste Hand Quilting Frame', 'The EZ3 is a convenient, adjustable hand quilting frame. The three-rail, no-baste work area can tilt to four different angles. All adjustments can be made and locked in place without the need of any tools, just the knobs that come on the frame. The EZ3 also folds up for space-saving storage.\r\n\r\n \r\n\r\n\r\n', '<h2>The Ez3 Quilting Frame</h2>\r\n\r\n<p>Have you been searching for a versatile, reasonably priced, and user-friendly quilting frame? If so, the Start-Right EZ3 from The Grace Company could be just what you\'ve been dreaming of. Convenient and highly adjustable, the EZ3 quilting frame was designed with ease of use as a top priority. It is an ideal frame for both beginning and experienced quilters. Novices will appreciate its simple, straight forward operation, while veterans will appreciate how its streamlined workflow saves time and maximizes overall efficiency.</p>\r\n\r\n<h2>Forget About Basting</h2>\r\n\r\n<p>For many people new to using a quilting frame, basting is one of the hardest aspects of the process to get used to. Owners of the EZ3 quilting frame can forget all about this problem, though, as it uses a totally basting-free system. Three tough and durable aluminum rails in conjunction with precision ratchets make handling your fabric and maintaining proper tension exceedingly easy -- even for first-time users!</p>\r\n\r\n<h2>A Wealth of Options</h2>\r\n\r\n<p>With the EZ3 quilting frame, you can make three different sizes of quilts. So, whether you\'re in the mood for experimenting with a series of small, relatively quick-to-construct quilts or you\'re ready to begin work on your large-scale masterpiece, the EZ3 has you covered. The quilting frame\'s three sizes consist of craft (27 inches), crib (59 inches), and queen (91 inches.)</p>\r\n\r\n<h2>A Comfortable Workspace</h2>\r\n\r\n<p>Quilting is a time-consuming hobby. Once you begin a new project, you\'ll spend many hours working on it before it is finally complete. It is essential, both for your enjoyment and for doing your best work, to be comfortable while quilting. The EZ3 can accommodate people of nearly every size and shape. The quilting frame\'s work space can tilt from zero to forty degrees. This makes it easy to find the angle that works best for you.</p>\r\n\r\n<h2>Key Features</h2>\r\n\r\n<ul>\r\n<li>Supports craft, crib, and queen size projects</li>\r\n<li>30-tooth ratchets for strong, consistent tension</li>\r\n<li>Folds up for easy storage. Can be kept in a closet, up against the wall, or in other small spaces. It can even be folded with a project still in place!</li>\r\n<li>Work area can be adjusted to four different angles for customized comfort and convenience</li>\r\n<li>Frame Dimensions: 30 inches x 23 inches x 35 -- 99 inches (depending on selected project size)</li>\r\n<li>Work Area Dimensions: 27 inches (craft), 59 inches (crib), 91 inches (queen)</li>\r\n</ul>\r\n\r\n<p>Straight-line quilting is the easiest form of machine quilting. The results are always good, and it\'s quick, too!</p>\r\n\r\n<p>Begin by inserting an even-feed presser foot in your machine, as shown in Figure 2. These presser feet are also known as walking feet. If your machine did not come with an even-feed foot, make a trip to the sewing center to get one. Bring your machine\'s manual with you so the clerk can help you find the right foot for your model.</p>', null, '1', 'Start-Right EZ3 No-Baste Hand Quilting Frame', 'The EZ3 is a convenient, adjustable hand quilting frame. The three-rail, no-baste work area can tilt to four different angles. All adjustments can be made and locked in place without the need of any tools, just the knobs that come on the frame. The EZ3 al', 'Start-Right EZ3 No-Baste Hand Quilting Frame', 'Start-Right EZ3 No-Baste Hand Quilting Frame', 'Start-Right EZ3 No-Baste Hand Quilting Frame', '399', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '50', '0', '', '', '', '/uploads/products/', 'ez3-new-crib.jpg', null, null, 'ez3 frame', null, 'ez3-new-crib.jpg', '', null, null, '', null, null, '', null, null, '', null, null, null, null, null, '', '', '0000-00-00 00:00:00', '2016-06-27 21:00:07', '2016-06-27 21:00:07', null);
INSERT INTO `products` VALUES ('5', 'graceiebee-frame', '0', '1', null, 'The Grace Company', 'Hand Quilting', 'InStock', 'Draft', '', '', 'graceiebee', '', '636343171383', '', 'The Gracie Bee Quilting Frame', '', 'The Traditional style hand quilting frame done right:', 'The Gracie Bee traditional-style quilting frame has many non-traditional innovations. Leg joints easily slide together for a snug and sturdy fit. Each leg rests on two separate feet, eliminating wobble. All parts fit together without the need for any extra tools to create a uniquely functional group quilting frame. When not in use, all of the pieces come together compactly for convenient storage or travel.', null, '2', 'The Gracie Bee Quilting Frame', 'The Gracie Bee traditional-style quilting frame has many non-traditional innovations. Leg joints easily slide together for a snug and sturdy fit. Each leg rests on two separate feet, eliminating wobble. All parts fit together without the need for any extr', 'The Gracie Bee Quilting Frame', 'The Gracie Bee Quilting Frame', 'The Gracie Bee Quilting Frame', '399', '0', '499', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '50', '0', '', '', '', '/uploads/products/', 'graciebee.jpg', null, 'Graciebee', '', null, 'graciebee.jpg', '', null, null, '', null, null, '', null, null, '', null, null, null, null, null, '', '', '0000-00-00 00:00:00', '2016-06-27 21:22:03', '2016-06-27 21:22:03', null);
SET FOREIGN_KEY_CHECKS=1;
