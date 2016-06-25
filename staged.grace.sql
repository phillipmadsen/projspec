/*
Navicat MySQL Data Transfer

Source Server         : homeStead
Source Server Version : 50712
Source Host           : 127.0.0.1:33060
Source Database       : staged.grace

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-06-24 20:49:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activations
-- ----------------------------
DROP TABLE IF EXISTS `activations`;
CREATE TABLE `activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of activations
-- ----------------------------
INSERT INTO `activations` VALUES ('1', '1', 'pc9IyRtZe5gR3IG7TzsrfAlPTlazcuXS', '1', '2016-06-24 13:19:21', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `activations` VALUES ('2', '2', 'R0hjFfkZjUHT9HPx7vBKcoEIo9X8J5Cs', '1', '2016-06-24 13:19:21', '2016-06-24 13:19:21', '2016-06-24 13:19:21');

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(10) unsigned DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `is_draft` tinyint(1) NOT NULL DEFAULT '0',
  `has_product_link` tinyint(1) NOT NULL DEFAULT '0',
  `product_link_nofollow` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gp_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tw_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(10) unsigned DEFAULT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `link_to_product_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_to_product` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', '1', '1', '0', '0', '0', 'Enhance Your Quilt with Sewing and Quilting Machines', null, 'Quilts are made either by hand or with a sewing machine. If you choose to quilt with a sewing machine, you will need a very durable machine in order to sew through all three layers and create a quilt that will last for years.\r\n', '<p>Quilting started as a social activity. Farm wives got together when they weren&#39;t performing chores. They made bed coverings, curtains, petticoats and other articles. Patchwork was a result of a fabric shortage. Old items would be woven into a single fabric, producing wondrous designs. That form has become everything from an expression of art to a charitable statement.</p>\r\n\r\n<p>Today quilting is as much a hobby for enjoyment as it is a professional endeavor. Whether for fun or profit, quilting is a great opportunity to create. Nothing has made these projects easier than the quilting sewing machine.</p>\r\n\r\n<h2>Types of Quilting</h2>\r\n\r\n<p>Patchwork, or pieced, quilting is only one form of the art, usually the one most of us begin with. Most quilters tend to stay within traditional patterns that include blocks of rectangles and squares, rarely stepping outside of those shapes.</p>\r\n\r\n<p>Fortunately, a quilting sewing machine leads to venturing into other styles, especially if one utilizes a more advanced model that allows for easy design. Postage stamp quilting consists of squaring, but small rows of objects. There is also the more difficult appliqu&eacute; process that requires shapes on backgrounds that promise to create a stunning view. Paper piercing is developed when the quilter stitches fabric to a paper foundation. Used as guides, the quilter can block the entire quilt, constructing all sorts of objects and shapes.</p>\r\n\r\n<h2>The Growth and Beauty of Free Motion Quilting</h2>\r\n\r\n<p>Free motion quilting has grown in popularity among quilters. This is an advanced stitch process where the sewing machine uses a darning foot as opposed to its feed dogs. This lets the fabric move freely with the quilter carefully feeding the fabric. This requires a steady hand as even an experienced quilter can easily disrupt the stitch process.</p>\r\n\r\n<p>Free motion will produce an incredible design as it resembles embroidery done in a hand sewn fashion but with the convenience of modern technology. In the age of quilting sewing machines that can computer generate designs, old school quilters appreciate the greater control of the patterns free motion can put into their quilting.</p>\r\n\r\n<p>Some quilting sewing machines make for a better range of free motion. There are also courses that can help the quilter develop the steady touch this process requires.</p>\r\n\r\n<h2>How to Select Quilting Sewing Machines</h2>\r\n\r\n<p>From Singer to Brother, there are a broad selection of machines a quilter can choose from. A seasoned quilter will know how to wean through every feature, service and their accessories. Their experiences with quilting has taught them how to find the machine that fits. They look at the size, determining if it&#39;s too large or heavy for their considerations, especially if the quilting sewing machine has to go into the home. They look at everything in a machine, from built-in patterns, thread options and easy-to-use functionality. The professional quilter will consider customer needs and the production process to see if the quilting sewing machine can handle the workload.</p>\r\n\r\n<p>Fortunately, there are products that fit any budget and requirements.</p>\r\n\r\n<p>With a dedication to sew and learn, and with the right quilting sewing machine, the quilter can look forward to a productive and enjoyable future with their passion.</p>\r\n', 'enhance-your-quilt-with-sewing-quilting-machines', 'Enhance Your Quilt with Sewing and Quilting Machines', 'Enhance Your Quilt with Sewing and Quilting Machines', 'Enhance Your Quilt with Sewing and Quilting Machines', 'Enhance Your Quilt with Sewing and Quilting Machines', 'Enhance Your Quilt , Sewing Quilting Machines, Sewing Machines,  Quilting Machines', 'Patchwork, or pieced, quilting is only one form of the art, usually the one most of us begin with. Most quilters tend to stay within traditional patterns that include blocks of rectangles and squares, rarely stepping outside of those shapes.', '/uploads/article/', 'enahance_your_quilt-min.jpg', '429108', '1', '0', 'add seo product link title here', 'add seo link here', 'en', '2016-05-10 13:02:37', '2016-06-24 13:45:14', null);
INSERT INTO `articles` VALUES ('2', '1', '1', '0', '0', '0', 'Which Quilting Machine is Right for You?', null, 'It is easy to get confused when shopping for a quilting machine or sewing machine; so many brands, features, price ranges, and more. It can be hard to know where to start! So let\'s break down some of the things you may want to consider when looking for the best machine for you.', '<p>Quilters tend to be very passionate about their talent and rightfully so! However, finding the right sewing machine is essential for every level of quilting. Therefore, it&rsquo;s important to look at the features of quilting sewing machines for sale that are best for you.</p>\r\n\r\n<h2>Quilting Sewing Machine Basics and More</h2>\r\n\r\n<p>Before browsing a quilting machine sale, take some time to think about how you will use your machine. Is this a craft that you will be dabbling in, or is this an expert craftsmanship that you will be devoting much of your time to? Determine the type of quilting you will do; consider if you will you be making basic or heavy duty quilts, adding lace or using fancy embroidery stitching. Make a list of the extra features you prefer before looking at any quilting sewing machines for sale.</p>\r\n\r\n<h2>Recommended Quilting Sewing Machine Brand</h2>\r\n\r\n<p>For more than 25 years, the Grace Company has had a reputation for producing the best quilting sewing machine for sale. They are the number one manufacturer of both machines and hand quilting frames. Throughout the years, the Grace Company has expanded to include quilting hoops and additional accessories.</p>\r\n\r\n<h2>Best Quilt Sewing Machine for Sale</h2>\r\n\r\n<p>The top quilting machine for sale is the Unique Quilter by the Grace Company. They make the best machine quilting frames in the entire world and are rapidly becoming the frame manufacturer of choice for numerous long arm machine frame companies. The Grace Company makes quilting machine-frames and accessories for every level of quilter.</p>\r\n\r\n<h2>Quilt Frame Home Sewing Machine</h2>\r\n\r\n<p>One of the best quilting sewing machines for sale for home use is the long arm quilt frame machine. They allow you to make quilts of all sizes. The long arm permits you to move the sewing head freely without moving the fabric, which allows for the precision detail.</p>\r\n\r\n<h2>Industrial Sewing Machines for Sale</h2>\r\n\r\n<p>The Grace Company has the best industrial sewing machines for sale. Commercial quilting machines deliver the crucial combination of powerful performance, strong durability and high value for marketable sewing purposes. Home industrial grade sewing machines are available as well and are ideal for creating artistries made of sturdy materials such as pillows, cushions and seat covers.</p>\r\n', 'which-quilting-machine-is-right-for-you', 'Which Quilting Machine is Right for You?', 'Which Quilting Machine is Right for You?', 'Which Quilting Machine is Right for You?', 'Which Quilting Machine is Right for You?', 'right quilting machine, grace quilting machine', 'It is easy to get confused when shopping for a quilting machine or sewing machine; so many brands, features, price ranges, and more. It can be hard to know where to start! So let\'s break down some of the things you may want to consider when looking for the best machine for you.', '/uploads/article/', 'which_quilting_machine-min.jpg', '120449', '1', '0', 'add seo product link title here', 'add seo link here', 'en', '2016-05-10 13:02:37', '2016-06-24 18:48:47', null);
INSERT INTO `articles` VALUES ('3', '1', '1', '0', '0', '0', 'Hand Quilt Frames', null, 'Shop for Hand Quilting Frames Grace has a large selection of Hand Quilting frames.  Available in a variety of sizes from large profesional frames, lap size, hoops and stretcher bars.', '<p>The word quilt comes from the Latin word &quot;culcita,&quot; which means stuffed sack. &quot;Cuilte&quot; is the French word that more closely resembles the term used in the English language. The earliest known quilt consisted of a garment that adorned an ivory figure of an Egyptian Pharaoh that was traced to 3,400 B.C. One of the earliest surviving bed quilts was found in Sicily and was created sometime during the 14th century. Measuring 106 inches by 122 inches, the historic piece can now be found in the Victoria and Albert Museum in London.</p>\r\n\r\n<h2>Hand Quilt Frames</h2>\r\n\r\n<p>Pioneer women are credited with being the creators of hand quilt frames. The original frames might have stretched across the backs of chairs when in use. Other methods involved hanging the frame from the rafters of a home using ropes and pulleys. In each instance, when the day&#39;s work was completed, the quilt and frame were rolled or hoisted and removed from the living area. When homes and rooms grew larger, women could reserve a space to house the frame for extended lengths of time until the piece was completed. Full-sized, the Three Roller Frame and the Q-Snap Floor Frame are the three types of hand quilt frames commonly used today.</p>\r\n\r\n<h2>Full-Sized Frame</h2>\r\n\r\n<p>Also known as a stretcher frame, this device holds a stretched quilt horizontally, which creates a table-like image. The frame is typically constructed of wood and held together at the corners using C-clamps. Four legs support the frame and the quilt. The convenience of this type of frame involves the ability to hold the bottom, batting and top of the quilt tautly without the need for basting.</p>\r\n\r\n<h2>Three-Roller Frame</h2>\r\n\r\n<p>This type of frame is used for hand or machine quilting. The quilt back and batting are held in place by rolling the fabric onto two roller boards. The top of the quilt is rolled on a third board. All of the fabric layers are tightly maintained as the user rolls the quilt to the desired work section. Depending on the materials used in construction, the rollers may be extended or retracted to accommodate the length or width the quilt.</p>\r\n\r\n<h2>Q-Snap Floor Frame</h2>\r\n\r\n<p>This type of frame is typically constructed using PVC pipe. Similar to an embroidery hoop, the quilter lays the basted layers over the bottom frame and clamps the fabric using a top frame. Though having to baste a quilt prior to use, the lighter weight and smaller size of the overall frame makes the device easier to move from one location to another. Kits are also available that allow the user to tilt the frame to the angle of choice.</p>\r\n', 'hand-quilt-frames', 'Hand Quilt Frames', 'Hand Quilt Frames', 'Hand Quilt Frames', 'Hand Quilt Frames', 'Shop for Hand Quilting Frames , hand quilting frames', 'Shop for Hand Quilting Frames | Grace has a large selection of Hand Quilting frames.  Available in a variety of sizes from large professional frames, lap size, hoops and stretcher bars.', '/uploads/article/', 'hand_quilt_frames.jpg', '4040144', '1', '0', 'add seo product link title here', 'add seo link here', 'en', '2016-05-10 13:02:37', '2016-06-24 18:47:50', null);
INSERT INTO `articles` VALUES ('4', '1', '1', '0', '0', '0', 'The Grace Company', 'Fine Quilting Frames', 'For many companies, innovation and invention are the foundation on which success is built.  This has been a key component in the quilting industry, which has seen a dramatic transformation due to technology that has made the process of quilting easier for those who possess a passion for the craft.  Over the past 25 years, The Grace Company has taken innovation and invention to entirely new levels with its commitment to integrating the worlds of quilting and technology.', '<p>For many companies, innovation and invention are the foundation on which success is built. This has been a key component in the quilting industry, which has seen a dramatic transformation due to technology that has made the process of quilting easier for those who possess a passion for the craft. Over the past 25 years, The Grace Company has taken innovation and invention to entirely new levels with its commitment to integrating the worlds of quilting and technology. The results have been products that have not only revolutionized the industry, but also given those with a love of quilting the ability to create masterpieces almost beyond belief. With their commitment to customer service and always being willing to take a concept and develop it into yet another product to satisfy their customers, The Grace Company has started a tradition of excellence that has no end in sight.</p>\r\n\r\n<h2>Quilting Frames</h2>\r\n\r\n<p>To create any quilt, a quilting frame is required to make the task possible. The Grace Company, having developed a line of quilting frames unlike any previously seen, quickly became the go-to company for those needing the best possible equipment. With both machine-quilting and hand-quilting frames from which to choose, customers soon found themselves with a variety of possibilities when it came to quilting. The frames offered numerous advantages to customers, including:</p>\r\n\r\n<ul>\r\n	<li>Professional-quality rail system</li>\r\n	<li>Improved fabric tension</li>\r\n	<li>Height adjustment to fit sewing machines</li>\r\n	<li>Speed control and stitch regulators</li>\r\n</ul>\r\n\r\n<p><strong>With the introduction of these features, Grace quickly became the company associated with quilting quality and began its ascension to the top. </strong></p>\r\n\r\n<h2>Quilting Machines</h2>\r\n\r\n<p>Grace company has now developed 2 models of quilting machines you might have heard of or possibly used at one of the recent quilting shows around the Unites States in late 2014 or up to now. These two machines are:</p>\r\n\r\n<ul>\r\n	<li>Qnique Quilter</li>\r\n	<li>Block Rockit</li>\r\n</ul>\r\n\r\n<h2>Computerized Quilting Technology</h2>\r\n\r\n<p>However, what truly set The Grace Company apart from other competitors was its embracing of computerized technology when it came to quilting. With its development of quilting pattern software, the company made it possible to see how a design would look before the first stitch was sewed. In doing so, quilts could contain designs that were more intricate than ever before, and as a bonus would take far less time and effort than in previous years. Some of the most popular quilting software programs have included:</p>\r\n\r\n<ul>\r\n	<li>QuiltMotion</li>\r\n	<li>Quilter&#39;s Creative Touch</li>\r\n	<li>Quilter&#39;s Creative Design</li>\r\n</ul>\r\n\r\n<p>The grace company has created the computerized technology of many of your big quilting machine manufacturers which means if you have used computerized machine quilting then you most likely used one they created even if their name is not on it.</p>\r\n\r\n<p>With numerous testimonials from thousands of satisfied customers, The Grace Company has led the way for those who wish to continue combining traditional quilting methods with today&#39;s technology. And for those who have used the equipment as well as those who have viewed the masterpieces that have been made, the results speak for themselves.</p>\r\n', 'the-grace-company', 'The Grace Company', 'The Grace Company', 'The Grace Company', 'The Grace Company', 'The Grace Company', 'For many companies, innovation and invention are the foundation on which success is built.  This has been a key component in the quilting industry, which has seen a dramatic transformation due to technology that has made the process of quilting easier for those who possess a passion for the craft. ', '/uploads/article/', 'slide7a.jpg', '127563', '1', '0', 'add seo product link title here', 'add seo link here', 'en', '2016-05-10 13:02:37', '2016-06-24 18:57:59', null);
INSERT INTO `articles` VALUES ('5', '1', '1', '0', '0', '0', 'Grace Qnique Machine', null, 'The Q\'nique 14+ quilting machine is more affordable than long-arm machines and performs better than top-of-the-line home sewing machines. Quilters can complete free-motion quilting confidently or expand their design repertoire with precise laser-guided pantographs or computer-aided designs. Plus, this powerful, fully loaded mid-arm machine is compatible with Gracie quilting frames, Quilter\'s Creative Touch software and many other accessories that allow quilters to create a complete mid-arm package and to get the most from their new machine.', '<h2>Serious Quilters Require Specialized Sewing Machines</h2>\r\n\r\n<p>Anyone interested in making quilts or other layered fabric projects such as decorative wall hangings needs the best equipment available. In Canada, people who love to sew can find the Grace Qnique Machine for sale online and at brick-and-mortar stores. Quilters are serious about the machines they use, leading to looking for particular features that make stitching multiple layers of fabric together simpler. For over 25 years, The Grace Company headquartered in Salt Lake City has specialized in designing, manufacturing and selling the highest quality equipment necessary for individuals who love quilting. Instead of dealing with bulky materials on traditional sewing machines that have a small arm work area, buy the Grace Qnique Machine.</p>\r\n\r\n<h2>A Quilting Machine with Numerous Features is Necessary</h2>\r\n\r\n<p>Many quilters today want to make bedcovers for larger mattress sizes such as queen or king, leading to needing bigger quilt squares. Stitching on larger squares of fabric is easier with a mid-arm machine with a bigger working space to maneuver the material quickly. Instead of needing to stop and start the sewing machine often to rearrange fabric, the seamstress can rotate the squares while stitching. Not only is this maneuverability a great feature while making individual squares, it is also helpful when stitching on borders, fillings and backings of quilts. The engineers who designed the Grace Qnique Machine have thought of everything, including:</p>\r\n\r\n<ul>\r\n	<li>An easy to read full color LED menu screen</li>\r\n	<li>Built-in stitch regulation (precise, cruise, baste, manual)</li>\r\n	<li>Four different sewing modes</li>\r\n	<li>Hopping foot components</li>\r\n	<li>15-inch machine throat length</li>\r\n	<li>Six simple to use fingertip controls</li>\r\n	<li>Fast top stitching speed</li>\r\n	<li>Sturdy internal construction and mechanics</li>\r\n	<li>Heavy-duty metal body</li>\r\n	<li>Holders for large spools of thread</li>\r\n	<li>Unique wheels to move the machine</li>\r\n	<li>Beautiful crisp white finish</li>\r\n	<li>Easy dual threading and bobbin filling</li>\r\n	<li>Lightweight aluminum body for easy moving</li>\r\n	<li>Small enough to store easily</li>\r\n	<li>Interchangeable between left- and right-handed</li>\r\n	<li>Additional accessory power ports</li>\r\n	<li>Dual voltage power supply</li>\r\n	<li>Easy to change software with no technician required</li>\r\n</ul>\r\n\r\n<h2>What Owners Think about this Quilting Machine</h2>\r\n\r\n<p>This Grace Qnique Machine is shipped with several important accessories such as lubricating oil, quilting needles and bobbins that assist with making gorgeous quilts. Quilters are a cohesive group of enthusiasts who highly recommend this machine with an overall 89 percent rating. Owners of this quilting machine believe it has a high stitching accuracy, solid construction and is easy to use. Compared to other specialized quilting sewing machine, this one is much more affordable. For anyone struggling to make quilts on a traditional sewing machine, switching to a specialized machine is a life changer. Customers can request expedited shipping on the Grace Qnique Machine to begin sewing as fast as possible with a new machine.</p>\r\n', 'grace-qnique-machine', 'Grace Qnique Machine', 'Grace Qnique Machine', 'Grace Qnique Machine', 'Grace Qnique Machine', 'Grace Qnique Machine', 'The Q\'nique 14+ quilting machine is more affordable than long-arm machines and performs better than top-of-the-line home sewing machines. Quilters can complete free-motion quilting confidently or expand their design repertoire with precise laser-guided pantographs or computer-aided designs. Plus, this powerful, fully loaded mid-arm machine is compatible with Gracie quilting frames, Quilter\'s Creative Touch software and many other accessories that allow quilters to create a complete mid-arm package and to get the most from their new machine.', '/uploads/article/', 'qnique_machine-min.jpg', '342771', '1', '0', 'add seo product link title here', 'add seo link here', 'en', '2016-05-10 13:02:37', '2016-06-24 19:24:03', null);
INSERT INTO `articles` VALUES ('6', '1', '1', '0', '0', '0', 'Affordable Long Arm Quilting Machines', null, 'Affordable Long Arm Quilting Machines', '<p>For many years quilters had to go through the painstaking process of sewing their creations using a traditional sewing machine. This involved working in a tight space, trying to maneuver a large piece, or stack, of fabric. There is no question that the long arm sewing machine makes the joy of quilting even more joyous. If you are looking for affordable long arm quilting machines, there are a few very important questions to ask to ensure you end up with the best model.</p>\r\n\r\n<p><strong>How much quilting space does the machine offer?</strong></p>\r\n\r\n<p>The quilting space and throat space are not equal. Make sure to ask about available quilting space. When you consider investing into one of the affordable long arm quilting machines, remember the bigger is not always the best. The most fitting quilting space is always a comfortable distance for both reach and sight. The recommended distance, for the most comfortable controlled quilting, is from a 12-inch to a 14-inch reach.</p>\r\n\r\n<p><strong>Does the machine run smoothly at both high and low speeds? How much does the machine weigh?</strong></p>\r\n\r\n<p>A machine that is too heavy will cause stress on neck, arms, and back. Test any machine for five minutes or longer to get a sense of what several hours of quilting might feel like. A comfortable weight is usually 65 pounds or less. An excess of vibration can bring about intemperate noise and poor line quality.</p>\r\n\r\n<p><strong>Where is the machine manufactured and is there a trusted warranty?</strong></p>\r\n\r\n<p>If it is important to you that your quilting machine is produced in the United States, then ask the question. A trusted warranty for electrical, mechanical and the outer casting issues you a guarantee of grade A craftsmanship when investing in a quilting machine. Trustworthy companies will stand behind their product and provide a written warranty. They will also provide you convenient customer support services.</p>\r\n\r\n<p><strong>Does the frame system require constant adjustment as you roll your quilt?</strong></p>\r\n\r\n<p>Making acclamations to your knitting surface, by either bringing down or raising your quilt edge to give a level surface on which to join, every time you move your blanket, it turns out to be extremely badly designed and amazingly prolonged. An optional 24-inch Super Leader replaces the 18-inch leader and eliminates the need to reach across the frame to attach the backing.</p>\r\n\r\n<p>By asking the right questions when shopping for affordable long arm quilting machines, you know you will get the features that you need in the end. Keep this handy guide with you as you shop, and always ask about any sewing machine feature you are unsure about.</p>\r\n', 'affordable-long-arm-quilting-machines', 'Affordable Long Arm Quilting Machines', 'Affordable Long Arm Quilting Machines', 'Affordable Long Arm Quilting Machines', 'Affordable Long Arm Quilting Machines', 'Affordable Long Arm Quilting Machines, Affordable Long Arm Machine, quilting machines, quilting machine, quilting with Qnique, professional quilting', 'Long-arm quilters can vastly speed up you’re the production time  of your quilts, compared to normal quilters or hand quilting.', '/uploads/article/', 'affordable_longarm-min.jpg', '357640', '1', '0', 'add seo product link title here', 'add seo link here', 'en', '2016-05-10 13:02:37', '2016-06-24 19:39:53', null);
INSERT INTO `articles` VALUES ('7', '1', '1', '0', '0', '0', 'Quilting Machine Manufacturer  ', null, '', '<p>There&#39;s nothing that can compare to the fine art of quilting. As a tradition that has been passed down for generations, many a home has a collection of treasured quilts. Some are tucked away. Some are used. Others are lovingly passed on. Quilts hang on walls and are on display in museums and exhibits. They tell a story and great devotion is contained within every square. If you make magic with quilting and want to make your life easier, turn to a quilting machine manufacturer who knows quilting. With a unique quilting machine from the Grace Company, you will be able to make more dreams become reality with every completed quilt.</p>\r\n\r\n<h2>It&#39;s All about Helping You to Produce Works of Beauty</h2>\r\n\r\n<p>With a first rate quilting machine produced by the Grace Company, you won&#39;t believe what a difference it can make in your quilting projects. As a quilting machine manufacturer that specializes in all leading brands of quilting machines, there is sure to be a machine that is the right fit for you. When you combine a quilting machine with a frame, you&#39;ll find that it is much easier to produce beautiful quilts that will become part of your heritage. You&#39;ll be able to piece your quilts with ease as the machine sews your layers together. You can count on the expertise of a quilting machine manufacturer to understand the process of quilting inside and out. Let the Grace Company help you to indulge yourself even more in your favorite hobby. If quilting is a part of your livelihood, you really need to find out how a quilting machine can change your life.</p>\r\n\r\n<h2>Create a Legacy that is built to Last</h2>\r\n\r\n<p>When you design a quilt and see it through to completion, you are leaving a piece of yourself that will be passed on to the future. Whether you are creating quilts simply for the pure joy of it, you give them as gifts, or you sell them in a shop, your quilts capture your imagination. Each one tells a story and it all begins with you. Discover how the Grace Company can help you on the journey to becoming a dream maker. Learn more about quilting machines and find the machine that is the right fit for you. You owe it to yourself to find out how you can bring more quilts to the world.</p>\r\n\r\n<h2>Manufacturers</h2>\r\n\r\n<h3>B</h3>\r\n\r\n<ul>\r\n	<li>Bernina International</li>\r\n	<li>Brother Industries</li>\r\n</ul>\r\n\r\n<h3>E</h3>\r\n\r\n<ul>\r\n	<li>Elna (Swiss company)</li>\r\n</ul>\r\n\r\n<h3>F</h3>\r\n\r\n<ul>\r\n	<li>Feiyue (Sewing)</li>\r\n</ul>\r\n\r\n<h3>G</h3>\r\n\r\n<ul>\r\n	<li>Grace Company</li>\r\n</ul>\r\n\r\n<h3>H</h3>\r\n\r\n<ul>\r\n	<li>Husqvarna Sewing Machines</li>\r\n</ul>\r\n\r\n<h3>J</h3>\r\n\r\n<ul>\r\n	<li>Janome</li>\r\n	<li>Jones Sewing Machine Company</li>\r\n	<li>Juki</li>\r\n</ul>\r\n\r\n<h3>L</h3>\r\n\r\n<ul>\r\n	<li>Leader Sewing Machine</li>\r\n</ul>\r\n\r\n<h3>M</h3>\r\n\r\n<ul>\r\n	<li>Merrow Sewing Machine Company</li>\r\n</ul>\r\n\r\n<h3>N</h3>\r\n\r\n<ul>\r\n	<li>National Sewing Machine Company</li>\r\n</ul>\r\n\r\n<h3>P</h3>\r\n\r\n<ul>\r\n	<li>Pfaff</li>\r\n</ul>\r\n\r\n<h3>S</h3>\r\n\r\n<ul>\r\n	<li>Sewmor</li>\r\n	<li>Singer Corporation</li>\r\n	<li>SVP Worldwide</li>\r\n</ul>\r\n\r\n<h3>T</h3>\r\n\r\n<ul>\r\n	<li>Tacony Corporation</li>\r\n	<li>Taft-Peirce Manufacturing Company</li>\r\n	<li>Barth&eacute;lemy Thimonnier</li>\r\n	<li>Tikkakoski (company)</li>\r\n</ul>\r\n\r\n<h3>V</h3>\r\n\r\n<ul>\r\n	<li>VSM Group</li>\r\n</ul>\r\n\r\n<h3>W</h3>\r\n\r\n<ul>\r\n	<li>White Sewing Machine Company</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'quilting-machine-manufacturer', 'Quilting Machine Manufacturer', 'Quilting Machine Manufacturer', 'Quilting Machine Manufacturer', 'Quilting Machine Manufacturer', 'Quilting Machine Manufacturer, The Grace Company', 'Quilting Machine Manufacturer The Grace Company', '/uploads/article/', 'quilting_machine_manufacturer-min.jpg', '171819', '1', '0', 'add seo product link title here', 'add seo link here', 'en', '2016-05-10 13:02:37', '2016-06-24 20:02:51', null);
INSERT INTO `articles` VALUES ('8', '1', '1', '0', '0', '0', 'Grace Company Quilting Frames', null, '', '<p>Some of the most interesting quilting frames being made today are the Grace Company Quilting Frames. Grace Company designs their frames to work with large quilting machines, making it easy to quickly manufacture quilts as efficiently as possible. Here is a closer look at the benefits that these frames offer quilt makers.</p>\r\n\r\n<h2>Designed for Machine Use</h2>\r\n\r\n<p>Grace Company Quilting Frames are designed to make the creation of new quilts with machines as easy as possible. They are designed to be used with a wide range of different quilting machine types, allowing manufacturers to select the perfect machine and frame combo to allow their quilts to be manufactured with the highest quality possible.</p>\r\n\r\n<p>One thing that is getting a lot of attention in the quilt-making world these days is the Qnique Quilter. This is one of the best quilt-making machines on the market, and many manufacturers are turning to the Qnique Quilter to improve their capacity to make quilts quickly and efficiently with the highest possible quality.</p>\r\n\r\n<p>Grace Company Quilting Frames are designed to be used with the Qnique Quilter. In fact, the Qnique Quilter machine was actually designed specifically to be used with the frames made by Grace Company. The software that Qnique uses includes the best automated quilting programs to make quilting with these frames a breeze.</p>\r\n\r\n<p>This makes it easy for quilt makers to set up a combination of frame and machine that works perfectly together. This will streamline their quilt making, saving them time, money and energy. Using frames from Grace Company in conjunction with the Qnique Quilter is a great move that will instantly improve a quilt maker&rsquo;s bottom line.</p>\r\n\r\n<h2>Long History of Excellence</h2>\r\n\r\n<p>Grace Company Quilting Frames are the oldest in the quilting world. They have the longest track record of making great quilting frames. The high quality materials they use to construct their quilting frames ensure that all of their products meet quilters&rsquo; standards. This keeps the quilt makers coming back, and that is why the frames made by Grace Company have the highest possible reputation in the industry.</p>\r\n\r\n<p>Anyone looking for the best frames possible should check out Grace Company Quilting Frames. Their quality construction and ease-of-use make them a great fit in any quilting environment. They are known as the leaders in the quilting industry because of the quality of the frames they make, and quilts made with these frames will reflect that quality.</p>\r\n', 'grace-company-quilting-frames', 'Grace Company Quilting Frames', 'Grace Company Quilting Frames', 'Grace Company Quilting Frames', 'Grace Company Quilting Frames', 'Grace Company Quilting Frames, Machine Quilting Frames,Hand Quilting Frames, Rotary Cutters', 'Grace Company Quilting Frames, manufacturer of fine quality machine and hand quilting frames as well as quilting frame accessories and notions.', '/uploads/article/', 'grace_quilting_frames-min.jpg', '314771', '1', '0', 'add seo product link title here', 'add seo link here', 'en', '2016-05-10 13:02:37', '2016-06-24 20:20:09', null);
INSERT INTO `articles` VALUES ('9', '1', '1', '0', '0', '0', 'Mid Arm Quilting Machine', '', 'Learn the basics of mid-arm quilting machines and what makes them different from longarm and domestic sewing machines.', '<p>Creating a quilt can be one of the most beautiful crafting activities, but it can also be one of the most tedious. When looking at quilts that were made entirely by hand generations ago, it&#39;s hard to imagine how much time and effort it took. Fortunately, technology has advanced to the point of creating equipment that makes doing even the biggest and most complex quilt easier than ever. For many quilters, a mid-arm machine such as the Qnique Quilter works best for their projects. Allowing for work on projects that earlier would have required a long-arm machine, these machines offer a variety of features that make sewing even the most complex quilt a pleasure.</p>\r\n\r\n<h2>Advantages of a Mid Arm Quilting Machine</h2>\r\n\r\n<p>For those quilters who want plenty of work space packed into a smaller machine, the Qnique Quilter does just that. A mid arm quilting machine offers numerous advantages over traditional long arm machines, such as:</p>\r\n\r\n<ul>\r\n	<li>Extended Work Area</li>\r\n	<li>Multiple Accessory Ports</li>\r\n	<li>Dual Thread Towers</li>\r\n	<li>Built-in Stitch Regulation</li>\r\n</ul>\r\n\r\n<p>In addition, a mid arm quilting machine is easier to control due to its quick-access buttons that allow for all functions of the machine to be controlled from its two handles, each of which contain three function buttons.</p>\r\n\r\n<h2>The Technology of Quilting</h2>\r\n\r\n<p>What make today&#39;s quilts so much easier to make are the advances in technology. With computer automated software such as Quiltmotion available on these machines, the possibilities are endless when it comes to the patterns and styles that can be used on modern quilts. Whether working on a standard block or one that&#39;s a little bigger, a mid arm quilting machine can do the job every time.</p>\r\n\r\n<h2>Mid Arms and Quilting Frames</h2>\r\n\r\n<p>For many quilters, one of their biggest problems is finding a machine that fits well with their quilting frame. With a mid arm machine such as the Qnique Quilter, this is never an issue. The Grace Company, which is considered the pioneer of quilting frames, offers two frames that work well with mid arm machines. The SR-2 sets up in Queen or Crib size, while the recently-developed Qnique 14+ frame is a king-size version designed specifically for larger quilts.</p>\r\n\r\n<p>Making the best quilt takes the right combination of skill, style and patience along with the best equipment. For beginners as well as experienced quilters, using a mid arm quilting machine such as the Qnique Quilter can help turn an ordinary quilt into a true masterpiece.</p>\r\n', 'mid-arm-quilting-machine', 'Mid Arm Quilting Machine', 'Mid Arm Quilting Machine', 'Mid Arm Quilting Machine', 'Mid Arm Quilting Machine', 'Mid Arm Quilting Machine', 'Learn the basics of mid-arm quilting machines and what makes them different from longarm and domestic sewing machines.', '', 'midarm_quilting_machine-min.jpg', '0', '1', '0', 'add seo product link title here', 'add seo link here', 'en', '2016-05-10 13:02:37', '2016-06-24 20:31:57', null);

-- ----------------------------
-- Table structure for articles_tags
-- ----------------------------
DROP TABLE IF EXISTS `articles_tags`;
CREATE TABLE `articles_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `articles_tags_article_id_index` (`article_id`),
  KEY `articles_tags_tag_id_index` (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles_tags
-- ----------------------------
INSERT INTO `articles_tags` VALUES ('1', '1', '2', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `articles_tags` VALUES ('2', '1', '3', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `articles_tags` VALUES ('3', '1', '4', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `articles_tags` VALUES ('4', '2', '1', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `articles_tags` VALUES ('5', '2', '2', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `articles_tags` VALUES ('6', '3', '1', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `articles_tags` VALUES ('7', '3', '2', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `articles_tags` VALUES ('8', '3', '2', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `articles_tags` VALUES ('9', '4', '4', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `articles_tags` VALUES ('10', '4', '5', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `articles_tags` VALUES ('11', '2', '3', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `articles_tags` VALUES ('12', '5', '5', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `articles_tags` VALUES ('13', '5', '2', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `articles_tags` VALUES ('14', '1', '8', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `articles_tags` VALUES ('15', '1', '5', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `articles_tags` VALUES ('16', '6', '2', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `articles_tags` VALUES ('17', '7', '1', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `articles_tags` VALUES ('18', '8', '1', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `articles_tags` VALUES ('19', '9', '3', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `articles_tags` VALUES ('20', '9', '1', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `articles_tags` VALUES ('21', '10', '1', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `articles_tags` VALUES ('22', '10', '2', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `articles_tags` VALUES ('23', '10', '3', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `articles_tags` VALUES ('24', '10', '4', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `articles_tags` VALUES ('25', '10', '5', '2016-06-24 13:19:21', '2016-06-24 13:19:21');

-- ----------------------------
-- Table structure for blog_comments
-- ----------------------------
DROP TABLE IF EXISTS `blog_comments`;
CREATE TABLE `blog_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of blog_comments
-- ----------------------------

-- ----------------------------
-- Table structure for cart_items
-- ----------------------------
DROP TABLE IF EXISTS `cart_items`;
CREATE TABLE `cart_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cart_items
-- ----------------------------

-- ----------------------------
-- Table structure for carts
-- ----------------------------
DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of carts
-- ----------------------------

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'The Grace Company', 'the-grace-company', null, null, null, null, 'en');
INSERT INTO `categories` VALUES ('2', 'Hand Quilting', 'hand-quilting', null, null, null, null, 'en');
INSERT INTO `categories` VALUES ('3', 'Machine Quilting', 'machine-quilting', null, null, null, null, 'en');
INSERT INTO `categories` VALUES ('4', 'Quilting Machine', 'quilting-machine', null, null, null, null, 'en');
INSERT INTO `categories` VALUES ('5', 'Quilting Hoop', 'quilting-hoop', null, null, null, null, 'en');
INSERT INTO `categories` VALUES ('6', 'Lap Hoops', 'lap-hoops', null, null, null, null, 'en');
INSERT INTO `categories` VALUES ('7', 'Quilting Frames', 'quilting-frames', null, null, null, null, 'en');
INSERT INTO `categories` VALUES ('8', 'Qnique', 'qnique', null, null, null, null, 'en');
INSERT INTO `categories` VALUES ('9', 'Quilting Accessories', 'quilting-accessories', null, null, null, null, 'en');
INSERT INTO `categories` VALUES ('10', 'Machine Frame Accessories', 'machine-frame-accessories', null, null, null, null, 'en');
INSERT INTO `categories` VALUES ('11', 'Hand Frame Accessories', 'hand-frame-accessories', null, null, null, null, 'en');
INSERT INTO `categories` VALUES ('12', 'Hoop Accessories', 'hoop-accessories', null, null, null, null, 'en');

-- ----------------------------
-- Table structure for faqs
-- ----------------------------
DROP TABLE IF EXISTS `faqs`;
CREATE TABLE `faqs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(10) unsigned DEFAULT NULL,
  `answered_by` int(10) unsigned DEFAULT NULL,
  `asked_by` int(10) unsigned DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `published_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of faqs
-- ----------------------------
INSERT INTO `faqs` VALUES ('1', 'Does Grace Company make the Qnique Quilter?', 'Yes', '1', 'en', null, null, null, null, null, '1', '0000-00-00 00:00:00', '2016-06-24 13:19:22', '2016-06-24 13:19:22');

-- ----------------------------
-- Table structure for files
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `original_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of files
-- ----------------------------

-- ----------------------------
-- Table structure for form_posts
-- ----------------------------
DROP TABLE IF EXISTS `form_posts`;
CREATE TABLE `form_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_name_surname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sender_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sender_phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `is_answered` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of form_posts
-- ----------------------------

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `original_name` text COLLATE utf8_unicode_ci NOT NULL,
  `filename` text COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `images_product_id_index` (`product_id`),
  KEY `images_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of images
-- ----------------------------

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `php_sapi_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `context` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of logs
-- ----------------------------

-- ----------------------------
-- Table structure for maillist
-- ----------------------------
DROP TABLE IF EXISTS `maillist`;
CREATE TABLE `maillist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of maillist
-- ----------------------------

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `option` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', 'Home', null, '/', '10', '0', 'module', 'home', '0', '2016-06-24 13:19:22', '2016-06-24 13:19:22', 'en');
INSERT INTO `menus` VALUES ('2', 'Sewing Machines', null, '/en/sewing-machines/qnique', '11', '0', 'module', 'news', '1', '2016-06-24 13:19:22', '2016-06-24 13:19:22', 'en');
INSERT INTO `menus` VALUES ('3', 'Hand Quilting', null, '/en/hand-quilting/', '12', '0', 'module', 'news', '1', '2016-06-24 13:19:22', '2016-06-24 13:19:22', 'en');
INSERT INTO `menus` VALUES ('4', 'Machine Frames', null, '/en/machine-frames/', '13', '0', 'module', 'news', '1', '2016-06-24 13:19:22', '2016-06-24 13:19:22', 'en');
INSERT INTO `menus` VALUES ('5', 'Automation', null, '/en/automation/qct', '14', '0', 'module', 'news', '1', '2016-06-24 13:19:22', '2016-06-24 13:19:22', 'en');
INSERT INTO `menus` VALUES ('6', 'TrueCut', null, '/en/truecut/', '15', '0', 'module', 'news', '1', '2016-06-24 13:19:22', '2016-06-24 13:19:22', 'en');
INSERT INTO `menus` VALUES ('7', 'Community', null, '/en/community/', '16', '0', 'module', 'news', '1', '2016-06-24 13:19:22', '2016-06-24 13:19:22', 'en');
INSERT INTO `menus` VALUES ('8', 'Blog', null, '/en/community/blog', '18', '7', 'module', 'blog', '1', '2016-06-24 13:19:22', '2016-06-24 13:19:22', 'en');
INSERT INTO `menus` VALUES ('9', 'News', null, '/en/community/news', '17', '7', 'module', 'news', '0', '2016-06-24 13:19:22', '2016-06-24 13:19:22', 'en');
INSERT INTO `menus` VALUES ('10', 'Videos', null, '/en/community/video', '19', '7', 'module', 'video', '0', '2016-06-24 13:19:22', '2016-06-24 13:19:22', 'en');
INSERT INTO `menus` VALUES ('11', 'Faq', null, '/en/community/faq', '20', '7', 'module', 'faq', '0', '2016-06-24 13:19:22', '2016-06-24 13:19:22', 'en');
INSERT INTO `menus` VALUES ('12', 'Contact Us', null, '/en/contact', '21', '0', 'module', 'contact', '1', '2016-06-24 13:19:22', '2016-06-24 13:19:22', 'en');
INSERT INTO `menus` VALUES ('13', 'Shop', null, '/en/shop', '21', '0', 'module', 'shop', '1', '2016-06-24 13:19:22', '2016-06-24 13:19:22', 'en');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2013_10_24_070153_create_articles_table', '1');
INSERT INTO `migrations` VALUES ('2013_10_24_111453_create_pages_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_06_143600_create_photo_galleries_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_06_143700_create_photos_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_10_191159_create_form_posts_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_14_222615_create_tags_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_14_224042_create_articles_tags_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_22_085357_create_settings_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_27_110650_create_categories_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_29_083232_create_news_table', '1');
INSERT INTO `migrations` VALUES ('2013_12_11_124855_create_sliders_table', '1');
INSERT INTO `migrations` VALUES ('2014_01_13_204110_create_menus_table', '1');
INSERT INTO `migrations` VALUES ('2014_05_11_133026_create_maillist_table', '1');
INSERT INTO `migrations` VALUES ('2014_07_02_230147_migration_cartalyst_sentinel', '1');
INSERT INTO `migrations` VALUES ('2014_07_23_181907_create_faqs_table', '1');
INSERT INTO `migrations` VALUES ('2014_07_23_190645_create_projects_table', '1');
INSERT INTO `migrations` VALUES ('2014_07_23_205053_create_videos_table', '1');
INSERT INTO `migrations` VALUES ('2014_09_10_205053_create_logs_table', '1');
INSERT INTO `migrations` VALUES ('2016_02_23_170041_add_to_users_table', '1');
INSERT INTO `migrations` VALUES ('2016_02_23_170042_create_profiles_table', '1');
INSERT INTO `migrations` VALUES ('2016_05_12_173726_create_files_table', '1');
INSERT INTO `migrations` VALUES ('2016_06_02_231228_create_products_table', '1');
INSERT INTO `migrations` VALUES ('2016_06_06_203831_create_table_carts', '1');
INSERT INTO `migrations` VALUES ('2016_06_06_203851_create_table_carts_item', '1');
INSERT INTO `migrations` VALUES ('2016_06_12_195301_create_my_images_table', '1');
INSERT INTO `migrations` VALUES ('2016_06_21_221311_create_product_variants_table', '1');
INSERT INTO `migrations` VALUES ('2016_06_21_221520_create_product_features_table', '1');
INSERT INTO `migrations` VALUES ('2016_06_22_011452_create_images_table', '1');
INSERT INTO `migrations` VALUES ('2016_06_22_135703_add_to_product_features_table', '1');

-- ----------------------------
-- Table structure for my_images
-- ----------------------------
DROP TABLE IF EXISTS `my_images`;
CREATE TABLE `my_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path_720_box` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path_440_catalog` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path_270_grid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path_300_additional` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path_100_prodthumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path_64_thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of my_images
-- ----------------------------

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datetime` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', 'Nam consectetur ullamcorper leo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elit est, gravida ac arcu et, molestie commodo neque. Proin ut enim consectetur, varius ligula non, viverra diam. Nullam ut sollicitudin libero, nec pretium metus. Nulla sit amet iaculis libero. Maecenas pharetra venenatis libero nec facilisis. Proin nibh eros, tincidunt sed venenatis et, viverra quis ipsum. Ut at viverra lacus, quis convallis tortor. Ut laoreet euismod ante eget mollis. Ut eu sem neque. Aenean accumsan, velit sit amet imperdiet pharetra, magna tortor venenatis nisl, congue condimentum risus nisl eu leo. Integer vestibulum odio at leo euismod, id interdum dui molestie. Praesent laoreet rhoncus nisl quis blandit. Nullam sit amet porttitor nunc. Nam consectetur ullamcorper leo, nec condimentum nisi aliquam interdum. Phasellus sagittis, diam et imperdiet porttitor, erat nisi scelerisque risus, id imperdiet massa felis vel libero. Integer vel sem eu elit fringilla malesuada.Nam consectetur orci quis magna lacinia, in commodo enim ultrices. Cras facilisis feugiat enim quis tempus. Maecenas interdum nibh ut dapibus tempor. Morbi dolor risus, pulvinar nec malesuada nec, euismod ut nisl. Pellentesque pulvinar dictum condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent varius nisl vitae sapien pharetra blandit. In egestas magna non nulla porta, sed hendrerit augue congue. Duis dui felis, sodales eu pharetra eget, viverra in magna. Aenean in adipiscing lorem. Nulla orci ipsum, pharetra ut egestas in, vehicula et justo. Vivamus euismod dui a nulla ornare, at iaculis sem consectetur.', 'nam-consectetur-ullamcorper-leo', '2016-06-24', '2016-06-24 13:19:21', '2016-06-24 13:19:21', '1', null, null, null, 'en');
INSERT INTO `news` VALUES ('2', 'Nunc pulvinar ligula vel justo tincidunt', 'Praesent non turpis facilisis, tincidunt lectus tristique, aliquet quam. Nulla facilisi. Mauris rutrum suscipit elit in tincidunt. Suspendisse potenti. Curabitur sed metus quis arcu aliquam adipiscing. Praesent ultrices nisl suscipit ante suscipit aliquet. Sed enim diam, dictum eget cursus sit amet, porta mollis felis. Donec vestibulum varius felis vel tristique. Donec in adipiscing tortor. Vestibulum dignissim scelerisque ante at aliquet. Cras ultrices metus convallis mi porttitor fermentum.Suspendisse nec velit ut est tristique placerat. Vivamus venenatis nunc id mi facilisis congue. Sed quis ipsum euismod diam aliquet venenatis. Nam nunc diam, tristique at placerat at, ullamcorper ut nunc. Aenean et vulputate augue, nec blandit ligula. Sed venenatis id dolor eu pharetra. Vestibulum tempus justo vitae nunc pellentesque vehicula. Aenean convallis ante vel justo porttitor hendrerit.Etiam sodales est ac porttitor hendrerit. Nullam vulputate arcu fermentum tincidunt gravida. Nunc pulvinar ligula vel justo tincidunt, eget venenatis sapien faucibus. Nam lobortis cursus dolor, sed vehicula sem tempus eget. Duis arcu tellus, vehicula at dapibus id, aliquam eu eros. Aenean eget nibh nunc. Fusce vitae urna in lorem iaculis tincidunt. Aliquam erat volutpat. Sed feugiat odio vitae varius pretium. Nam mattis augue ac lectus pulvinar, quis tempus lacus ornare. Sed nec eros tellus. Cras placerat erat eu odio congue, eget elementum massa aliquam. Ut congue fermentum ante a accumsan.Quisque tincidunt risus et erat varius convallis. Nulla faucibus vehicula libero eu elementum. Mauris elementum imperdiet dolor at faucibus. Praesent luctus convallis condimentum. Nam quis dolor interdum, malesuada sapien rhoncus, bibendum erat. Pellentesque aliquet est in nulla facilisis cursus. Aliquam diam augue, tincidunt eget purus a, tincidunt facilisis neque. Vestibulum hendrerit congue.', 'nunc-pulvinar-ligula-vel-justo-tincidunt', '2016-06-24', '2016-06-24 13:19:21', '2016-06-24 13:19:21', '1', null, null, null, 'en');
INSERT INTO `news` VALUES ('3', 'Pellentesque pulvinar dictum condimentum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elit est, gravida ac arcu et, molestie commodo neque. Proin ut enim consectetur, varius ligula non, viverra diam. Nullam ut sollicitudin libero, nec pretium metus. Nulla sit amet iaculis libero. Maecenas pharetra venenatis libero nec facilisis. Proin nibh eros, tincidunt sed venenatis et, viverra quis ipsum. Ut at viverra lacus, quis convallis tortor. Ut laoreet euismod ante eget mollis. Ut eu sem neque. Aenean accumsan, velit sit amet imperdiet pharetra, magna tortor venenatis nisl, congue condimentum risus nisl eu leo. Integer vestibulum odio at leo euismod, id interdum dui molestie. Praesent laoreet rhoncus nisl quis blandit. Nullam sit amet porttitor nunc. Nam consectetur ullamcorper leo, nec condimentum nisi aliquam interdum. Phasellus sagittis, diam et imperdiet porttitor, erat nisi scelerisque risus, id imperdiet massa felis vel libero. Integer vel sem eu elit fringilla malesuada.Nam consectetur orci quis magna lacinia, in commodo enim ultrices. Cras facilisis feugiat enim quis tempus. Maecenas interdum nibh ut dapibus tempor. Morbi dolor risus, pulvinar nec malesuada nec, euismod ut nisl. Pellentesque pulvinar dictum condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent varius nisl vitae sapien pharetra blandit. In egestas magna non nulla porta, sed hendrerit augue congue. Duis dui felis, sodales eu pharetra eget, viverra in magna. Aenean in adipiscing lorem. Nulla orci ipsum, pharetra ut egestas in, vehicula et justo. Vivamus euismod dui a nulla ornare, at iaculis sem consectetur.', 'pellentesque-pulvinar-dictum-condimentum', '2016-06-24', '2016-06-24 13:19:21', '2016-06-24 13:19:21', '1', null, null, null, 'en');
INSERT INTO `news` VALUES ('4', 'Nunc rhoncus nulla facilisis turpis tristique egestas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vel consectetur eros, eget sagittis purus. In tincidunt, nunc eu ultrices condimentum, dui libero faucibus orci, sed laoreet nunc nisl porta tellus. Sed nec ligula fringilla, rutrum turpis non, blandit nibh. Nulla dignissim tempor velit, a hendrerit turpis adipiscing vel. Vivamus pellentesque mollis eros non ultrices. Nam venenatis nisi risus, vitae pretium mauris porta in. Nunc rhoncus nulla facilisis turpis tristique egestas. Fusce non cursus tellus.', 'nunc-rhoncus-nulla-facilisis-turpis-tristique-egestas', '2016-06-24', '2016-06-24 13:19:21', '2016-06-24 13:19:21', '1', null, null, null, 'en');
INSERT INTO `news` VALUES ('5', 'Donec ut tempor risus', 'Donec ut suscipit tortor. Proin nec iaculis risus. Praesent commodo felis a libero aliquam, sed viverra ligula dapibus. Suspendisse elementum eu odio quis accumsan. Donec ut tempor risus. Nunc viverra cursus tellus, nec vestibulum ante viverra sed. ', 'donec-ut-tempor-risus', '2016-06-24', '2016-06-24 13:19:21', '2016-06-24 13:19:21', '1', null, null, null, 'en');
INSERT INTO `news` VALUES ('6', 'Mauris in purus erat', 'Donec ut metus arcu. Mauris quis quam viverra, ultricies urna tincidunt, vestibulum risus. Duis in lectus arcu. Vivamus nec vulputate magna. Integer ut vestibulum quam. Duis ac sapien commodo, consectetur ligula sed, tincidunt mi. Mauris in purus erat. Integer eget mollis elit. ', 'mauris-in-purus-erat', '2016-06-24', '2016-06-24 13:19:21', '2016-06-24 13:19:21', '1', null, null, null, 'en');
INSERT INTO `news` VALUES ('7', 'Vestibulum quam sem', 'Phasellus nulla sem, rhoncus id justo vel, rhoncus mollis eros. Morbi mollis mauris nisi, quis fringilla metus pretium at. Curabitur vel mi turpis. Donec sapien neque, auctor vel hendrerit sed, accumsan a elit. Proin turpis purus, tristique quis commodo quis, vulputate vel mi. Etiam feugiat quam vitae neque volutpat, eget rhoncus turpis pulvinar. Fusce non dictum ante. Sed congue non justo ac tincidunt. Vestibulum quam sem, suscipit quis quam quis, pharetra vehicula enim. Nullam lacinia consequat lacus ac tristique. Integer vitae pellentesque leo, sit amet faucibus diam. Suspendisse nulla mi, rutrum in accumsan nec, viverra eu velit. Vivamus porta hendrerit eros, faucibus rhoncus sem bibendum iaculis. ', 'vestibulum-quam-sem', '2016-06-24', '2016-06-24 13:19:21', '2016-06-24 13:19:21', '1', null, null, null, 'en');
INSERT INTO `news` VALUES ('8', 'In leo dui, rutrum pellentesque', 'Nam convallis vulputate erat. Nullam vehicula mauris non sapien fermentum condimentum. Nulla aliquam consequat iaculis. In leo dui, rutrum pellentesque dignissim ac, lacinia et eros. Fusce pretium aliquam eros eget euismod. Donec tristique auctor semper. Aenean a aliquet ipsum, ut fringilla diam. Etiam sed ullamcorper arcu. Quisque vehicula dui fringilla faucibus condimentum. ', 'in-leo-dui-rutrum-pellentesque', '2016-06-24', '2016-06-24 13:19:21', '2016-06-24 13:19:21', '1', null, null, null, 'en');
INSERT INTO `news` VALUES ('9', 'Class aptent taciti sociosqu ad litora', 'Nunc quis lorem ut metus consequat mollis. Maecenas condimentum turpis bibendum est venenatis gravida. Pellentesque id vehicula magna, sit amet semper purus. Ut tempor eros quis dui dictum, a sagittis ligula volutpat. Duis fermentum mattis dolor ut feugiat. Etiam et laoreet dolor, ultricies iaculis nisi. Nam erat nulla, facilisis at enim a, consectetur ornare magna. Phasellus aliquam varius quam eu lacinia. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse nibh nulla, iaculis nec orci a, luctus gravida est. ', 'class-aptent-taciti-sociosqu-ad-litora', '2016-06-24', '2016-06-24 13:19:21', '2016-06-24 13:19:21', '1', null, null, null, 'en');
INSERT INTO `news` VALUES ('10', 'Aliquam sodales lacus varius, convallis odio id', 'Fusce lacinia pretium facilisis. Maecenas sed lectus id sapien vulputate ornare. Curabitur quis gravida turpis. Suspendisse id lectus ac magna ornare ultricies a non orci. Suspendisse potenti. Mauris id enim vitae nulla mollis imperdiet eget quis dui. Duis laoreet dolor eget lorem egestas, quis dignissim dui tempus. Morbi fermentum mi et nibh suscipit porta. Aenean scelerisque id augue vitae vestibulum. Aliquam sodales lacus varius, convallis odio id, dignissim purus. Fusce eu vestibulum ligula. Aenean sodales sem sit amet felis aliquam gravida. Duis lacus sem, varius nec arcu ac, venenatis iaculis urna. In sit amet arcu porttitor, rutrum enim in, ullamcorper nisi. Nam eget placerat odio. Fusce in porttitor turpis. ', 'aliquam-sodales-lacus-varius-convallis-odio-id', '2016-06-24', '2016-06-24 13:19:21', '2016-06-24 13:19:21', '1', null, null, null, 'en');
INSERT INTO `news` VALUES ('11', 'Curabitur placerat pharetra metus eu bibendum', 'Vivamus condimentum ultrices dignissim. Quisque pharetra pulvinar sem, in feugiat odio condimentum id. Sed lacinia nulla ac varius ultrices. Curabitur placerat pharetra metus eu bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus mi lacus, bibendum at massa non, tempus dapibus sapien. Praesent sollicitudin bibendum dolor, a congue sapien fringilla non. Donec in dui dui. ', 'curabitur-placerat-pharetra-metus-eu-bibendum', '2016-06-24', '2016-06-24 13:19:21', '2016-06-24 13:19:21', '1', null, null, null, 'en');
INSERT INTO `news` VALUES ('12', 'Quisque et convallis nulla', 'Ut id turpis molestie, porta diam vel, dapibus odio. Donec quis magna aliquet, varius ipsum eu, adipiscing sem. Cras vestibulum risus vitae condimentum vehicula. Pellentesque auctor auctor mattis. Pellentesque sollicitudin, dolor sed adipiscing posuere, arcu tellus sollicitudin ipsum, vel suscipit velit turpis accumsan sem. Quisque mollis mollis volutpat. Cras volutpat mauris iaculis molestie ullamcorper. Quisque et convallis nulla. Ut tincidunt ut sapien vel venenatis. Aliquam erat volutpat. Sed mollis gravida nunc, at aliquet justo consectetur non. Quisque a tellus eget lorem lobortis semper sit amet sed urna. Cras facilisis pretium lorem, non placerat libero elementum sit amet. Donec felis risus, iaculis viverra mattis a, pharetra vitae purus. ', 'quisque-et-convallis-nulla', '2016-06-24', '2016-06-24 13:19:21', '2016-06-24 13:19:21', '1', null, null, null, 'en');
INSERT INTO `news` VALUES ('13', 'Vivamus blandit nisi pellentesque', 'Vivamus diam sem, volutpat in cursus sit amet, viverra nec libero. Nam vestibulum rutrum nulla, ac tristique nisl adipiscing vel. In pellentesque quam erat, nec ullamcorper purus pharetra in. Mauris placerat, eros vitae commodo vestibulum, nunc sapien laoreet turpis, a convallis metus massa a sapien. Curabitur arcu metus, laoreet pretium velit sed, faucibus scelerisque ligula. Suspendisse ut ornare nunc, eu fermentum libero. Vivamus blandit nisi pellentesque, ullamcorper leo dapibus, accumsan ante. Praesent justo ipsum, vestibulum a justo non, tincidunt ultricies quam. ', 'vivamus-blandit-nisi-pellentesque', '2016-06-24', '2016-06-24 13:19:21', '2016-06-24 13:19:21', '1', null, null, null, 'en');
INSERT INTO `news` VALUES ('14', 'Pellentesque id leo neque', 'Curabitur tempor justo eu risus convallis molestie. Quisque lectus purus, vulputate sed neque sed, gravida sollicitudin mauris. Phasellus risus lacus, placerat ut massa nec, dapibus rutrum ante. Phasellus eleifend laoreet iaculis. Nam volutpat justo a lectus eleifend aliquet. Pellentesque id leo neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed tempus laoreet dui in vulputate. Quisque in dapibus libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ultrices lorem et enim facilisis, id imperdiet sem tempor. Vivamus pellentesque quam nec neque bibendum, egestas suscipit neque rutrum. Nam ornare, elit posuere pretium rutrum, tortor leo scelerisque erat, vel cursus metus magna eu libero. Sed interdum sed libero vel luctus. ', 'pellentesque-id-leo-neque', '2016-06-24', '2016-06-24 13:19:21', '2016-06-24 13:19:21', '1', null, null, null, 'en');
INSERT INTO `news` VALUES ('15', 'Sed id metus a ipsum bibendum sagittis', 'Phasellus accumsan sit amet neque interdum dapibus. Morbi consequat eros vel enim mattis, et rutrum neque consectetur. Suspendisse ultrices libero dignissim, facilisis est ut, tincidunt lacus. Curabitur ligula ligula, sodales eu faucibus vel, cursus et diam. Aliquam at neque et est venenatis ornare nec non lacus. Etiam quis lorem dolor. Vestibulum dictum lorem in nulla fermentum iaculis. In hac habitasse platea dictumst. Sed id metus a ipsum bibendum sagittis. Aenean mi purus, sollicitudin at convallis id, ultricies non neque. Nullam consectetur molestie diam, at lacinia libero imperdiet ac. Fusce lacinia tempus eros, non commodo libero scelerisque sit amet. Integer rhoncus molestie tristique. Pellentesque laoreet ultricies elit non rhoncus. Sed placerat sit amet enim at vulputate. Vivamus ornare quis diam id ultrices. ', 'sed-id-metus-a-ipsum-bibendum-sagittis', '2016-06-24', '2016-06-24 13:19:21', '2016-06-24 13:19:21', '1', null, null, null, 'en');
INSERT INTO `news` VALUES ('16', 'Maecenas dictum nulla turpis', 'Quisque eleifend sollicitudin velit. Mauris dictum, dolor at eleifend ullamcorper, risus erat tincidunt massa, vel pellentesque nisi nisi id ipsum. Nullam eu erat neque. Mauris a convallis neque, vitae semper libero. Praesent in cursus sapien, sed fermentum urna. Maecenas dictum nulla turpis, nec euismod nisi dictum eu. Suspendisse sollicitudin eros ipsum, ut sodales odio molestie vel. Nullam sed ante ut massa tempor suscipit. Quisque ac vehicula nulla, in fringilla mauris. Proin venenatis, velit ut tristique rhoncus, nulla orci molestie magna, quis gravida urna tortor in metus. Vestibulum non diam lacus. Donec elementum mattis massa, sit amet rhoncus odio dictum eu. Curabitur mattis risus non cursus auctor. ', 'maecenas-dictum-nulla-turpis', '2016-06-24', '2016-06-24 13:19:21', '2016-06-24 13:19:21', '1', null, null, null, 'en');
INSERT INTO `news` VALUES ('17', 'In ultricies in tortor sed pellentesque', 'Cras ac libero in ipsum rutrum placerat tincidunt nec turpis. Fusce rhoncus turpis at sem eleifend aliquam. Curabitur fringilla, ipsum in scelerisque laoreet, est ligula sagittis enim, vitae adipiscing dolor nisi ut dolor. Donec at risus imperdiet nisi blandit volutpat. In ultricies in tortor sed pellentesque. Phasellus nec elit in enim facilisis adipiscing ut eu orci. Quisque congue iaculis leo ac viverra. Pellentesque sagittis pellentesque ipsum, id blandit elit tempus eu. ', 'in-ultricies-in-tortor-sed-pellentesque', '2016-06-24', '2016-06-24 13:19:21', '2016-06-24 13:19:21', '1', null, null, null, 'en');
INSERT INTO `news` VALUES ('18', 'In hac habitasse platea dictumst', 'Sed quis felis aliquet, luctus erat non, congue dui. Integer imperdiet odio non lacus rhoncus fringilla. Sed at lacus sollicitudin tellus dignissim mollis vitae sed metus. Sed blandit nisi vitae risus commodo mollis. Ut metus lorem, luctus ut venenatis vitae, rutrum ut odio. Etiam viverra quis nunc sit amet vestibulum. Vestibulum fermentum mauris vel nisi rutrum faucibus. Quisque ac nibh at nunc facilisis pulvinar eu in leo. In hac habitasse platea dictumst. Nullam vulputate, sapien quis porta ultrices, erat lacus tincidunt felis, sit amet molestie leo dui a arcu. Sed convallis faucibus urna, venenatis pellentesque nibh placerat at. Aliquam et bibendum nisl. Ut ut cursus tellus. Nullam ut urna a mi accumsan ultrices. Suspendisse potenti. Aenean et bibendum augue, sed posuere mauris. ', 'in-hac-habitasse-platea-dictumst', '2016-06-24', '2016-06-24 13:19:21', '2016-06-24 13:19:21', '1', null, null, null, 'en');
INSERT INTO `news` VALUES ('19', 'Nullam sodales, purus quis pulvinar dapibus', 'Pellentesque commodo mollis porta. Fusce eget leo in massa elementum faucibus at et nunc. Pellentesque id metus vel ligula venenatis gravida. Nullam vitae sapien id nibh pellentesque ullamcorper vel in risus. Curabitur sed faucibus sapien. Pellentesque sodales leo in mi commodo volutpat. In tempor consectetur magna tincidunt iaculis. Nullam sodales, purus quis pulvinar dapibus, arcu tortor feugiat lectus, eu viverra est lorem aliquam eros. ', 'nullam-sodales-purus-quis-pulvinar-dapibus', '2016-06-24', '2016-06-24 13:19:21', '2016-06-24 13:19:21', '1', null, null, null, 'en');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `is_draft` tinyint(1) NOT NULL DEFAULT '0',
  `has_product_link` tinyint(1) NOT NULL DEFAULT '0',
  `product_link_nofollow` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(65) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `fb_title` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gp_title` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tw_title` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_to_product_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_to_product` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(10) unsigned NOT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(10) unsigned DEFAULT NULL,
  `section_id` int(10) unsigned DEFAULT NULL,
  `published_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `added_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('1', '1', '0', '0', '0', '', 'The Qnique Quilter Makes it Easy to Create Quilting Masterpieces', null, '', 'From early times women have sewn quilts from leftover bits of fabric to cover their beds and keep their families warm, but the sewing was done by hand since they did not have sewing machines then. The work was tedious and it took many hours to finish just one quilt. Women often got help from their neighbors and family members to finish the quilt in just one day, and each member of the group got help in making their own quilt. These gatherings were known as quilting bees, and served as social activities as well as work days. The modern sewing machine has made sewing a quilt much faster and easier than in pioneer days, but it is still necessary for a quilter to learn the intricate details of the art. It takes much more than looking through pattern books to find the right piece and then following the directions to make the quilt. Today\'s quilting machine is equipped with multiple accessories, so the operator must learn how to use them correctly. <h2 itemprop=\"hasPart about\">A New Quilting Machine</h2> The intricate stitches needed to create beautiful patterns on quilts should be uniform in length and consistency, and the Qnique Quilter\'s built-in regulation ensures perfect stitches. Highly detailed patterns are not difficult to create using this state of the art machine that uses laser technology to exactly follow the outline of images or patterns. Learning to use the Qunique Quilter is relatively easy by following the directions in the instruction books that are included, and online advice is always available. The Qnique Quilter is a state of the art machine that gives the operator all the tools needed to create pieces that are beautiful enough to sell at craft shows or online. Many women even find a satisfying career in making and selling quilts, and the Qnique Quilter can make this occupation much easier and more profitable. People who sew quilts and accessories at home to sell at shows or online are able to turn out more finished projects when they have a quilting frame. This modern machine is designed to work perfectly on many existing frames, and includes at complete set of instructions to set it up on various quilting frames. <h2 itemprop=\"hasPart about\">Low Priced Quilting Machine</h2> Considering the many benefits of owning a Qnique Quilter, prospective buyers might be concerned about its high cost. The cost of comparable longarm quilting machines typically falls between $6,000 to $18,000, but the Qnique Quilter can be purchased for much less then others. This is an incredibly reasonable price even though the Qnique offers all the advantages of the higher price machines, plus finger-tip controls for ease of operation. Although the Qnique is not classified as a longarm machine, its 15\" throat length offers the operator the ability to sew most patterns effortlessly. Quilting is a creative hobby that many women enjoy, and they make lovely quilts and accessories for their own home or as gifts. Other women have begun to sell their beautiful projects at shows, in a local quilt shop or online. Unless a quilter is focused on sewing and selling quilts and accessories as a career, she may not have considered purchasing a quilting machine for her home. However, the reasonable cost and high performance level of the Qnique Quilter could make the purchase a possibility. Although it is not likely that anyone who purchases this machine would want to return it, the company policy does have a return policy due to defects with or dissatisfaction with its performance.', 'qnique-quilter-makes-masterpieces', 'The Qnique Quilter Makes it Easy to Create Quilting Masterpieces', null, '', 'The Qnique Quilter Makes it Easy to Create Quilting Masterpieces', 'The Qnique Quilter Makes it Easy to Create Quilting Masterpieces', 'The Qnique Quilter Makes it Easy to Create Quilting Masterpieces', null, null, null, null, '0', 'en', '1', null, '2016-06-24 13:19:22', '2016-06-24 13:19:22', '2016-06-24 13:19:22', '2016-06-24 13:19:22', null);
INSERT INTO `pages` VALUES ('2', '1', '0', '0', '0', '', 'About Us', null, '', '<h2 itemprop=\"hasPart about\">The Grace Company</h2> <p>For many companies, innovation and invention are the foundation on which success is built.  This has been a key component in the quilting industry, which has seen a dramatic transformation due to technology that has made the process of quilting easier for those who possess a passion for the craft.  Over the past 25 years, The Grace Company has taken innovation and invention to entirely new levels with its commitment to integrating the worlds of quilting and technology.  The results have been products that have not only revolutionized the industry, but also given those with a love of quilting the ability to create masterpieces almost beyond belief.  With their commitment to customer service and always being willing to take a concept and develop it into yet another product to satisfy their customers, The Grace Company has started a tradition of excellence that has no end in sight. </p> <h2 itemprop=\"hasPart about\">Quilting Frames</h2> <p>To create any quilt, a quilting frame is required to make the task possible. The Grace Company, having developed a line of quilting frames unlike any previously seen, quickly became the go-to company for those needing the best possible equipment.  With both machine-quilting and hand-quilting frames from which to choose, customers soon found themselves with a variety of possibilities when it came to quilting.   The frames offered numerous advantages to customers, including:</p> <ul> <li>Professional-quality rail system</li> <li>Improved fabric tension</li> <li>Height adjustment to fit sewing machines</li> <li>Speed control and stitch regulators</li> </ul> <strong>With the introduction of these features, Grace quickly became the company associated with quilting quality and began its ascension to the top.</strong> <h2 itemprop=\"hasPart about\">Computerized Technology</h2> <p>However, what truly set The Grace Company apart from other competitors was its embracing of computerized technology when it came to quilting. With its development of quilting pattern software, the company made it possible to see how a design would look before the first stitch was sewed.  In doing so, quilts could contain designs that were more intricate than ever before, and as a bonus would take far less time and effort than in previous years.  Some of the most popular quilting software programs have included:</p> <ul> <li>QuiltMotion</li> <li>Quilter\'s Creative Touch</li> <li>Quilter\'s Creative Design</li> </ul> <p>With numerous testimonials from thousands of satisfied customers, The Grace Company has led the way for those who wish to continue combining traditional quilting methods with today\'s technology. And for those who have used the equipment as well as those who have viewed the masterpieces that have been made, the results speak for themselves.</p>', 'about-us', 'About Us', null, '', 'About The Grace Company', 'About The Grace Company', 'About The Grace Company', null, null, null, null, '0', 'en', '1', null, '2016-06-24 13:19:22', '2016-06-24 13:19:22', '2016-06-24 13:19:22', '2016-06-24 13:19:22', null);

-- ----------------------------
-- Table structure for persistences
-- ----------------------------
DROP TABLE IF EXISTS `persistences`;
CREATE TABLE `persistences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `persistences_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of persistences
-- ----------------------------
INSERT INTO `persistences` VALUES ('2', '1', 'f3enyERt65w9h0i5uSBhdMwmc7wyqB1S', '2016-06-24 17:29:26', '2016-06-24 17:29:26');

-- ----------------------------
-- Table structure for photo_galleries
-- ----------------------------
DROP TABLE IF EXISTS `photo_galleries`;
CREATE TABLE `photo_galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of photo_galleries
-- ----------------------------
INSERT INTO `photo_galleries` VALUES ('1', 'Fotoğraf Galerisi', 'fotograf-galerisi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In scelerisque eget tellus et tempor. Nulla vel lectus aliquam, tempus massa ornare, fermentum tellus. Maecenas in enim sed libero ultrices tincidunt. Ut turpis ante, facilisis a fringilla rhoncus, ornare quis ipsum. Nullam erat ligula, imperdiet vel neque ac, facilisis tempor est. Morbi nec volutpat turpis. Quisque blandit justo ut diam ultrices, id lobortis nunc molestie. Donec a leo at enim pretium vehicula eu non lorem. Cras consequat, arcu nec facilisis hendrerit, metus lacus malesuada nibh, a consequat nulla est et est. In cursus, lorem eu vehicula rhoncus, justo quam bibendum eros, ut iaculis nisi nisl at velit. Aliquam massa massa, sodales et nunc vitae, ullamcorper egestas est. Mauris iaculis convallis libero, a scelerisque dolor ornare ut. Pellentesque blandit in eros ut interdum. Nulla luctus condimentum dignissim. Pellentesque nec consectetur erat, accumsan cursus urna.', '2016-06-24 13:19:22', '2016-06-24 13:19:22', '1', 'tr');

-- ----------------------------
-- Table structure for photos
-- ----------------------------
DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `relationship_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of photos
-- ----------------------------

-- ----------------------------
-- Table structure for product_features
-- ----------------------------
DROP TABLE IF EXISTS `product_features`;
CREATE TABLE `product_features` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `feature_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `useicon` tinyint(1) NOT NULL DEFAULT '1',
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_features_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_features
-- ----------------------------
INSERT INTO `product_features` VALUES ('1', '1', '', '2016-06-24 17:30:48', '2016-06-24 17:30:48', '1', null);
INSERT INTO `product_features` VALUES ('2', '2', 'Easy to use', '2016-06-24 17:32:53', '2016-06-24 17:32:53', '1', null);
INSERT INTO `product_features` VALUES ('3', '2', 'Works Offline and On', '2016-06-24 17:32:53', '2016-06-24 17:32:53', '1', null);

-- ----------------------------
-- Table structure for product_variants
-- ----------------------------
DROP TABLE IF EXISTS `product_variants`;
CREATE TABLE `product_variants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `attribute_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_attribute_value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_variants_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_variants
-- ----------------------------
INSERT INTO `product_variants` VALUES ('1', '1', '', '', '2016-06-24 17:30:48', '2016-06-24 17:30:48', null);
INSERT INTO `product_variants` VALUES ('2', '2', '', '', '2016-06-24 17:32:53', '2016-06-24 17:32:53', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'tyler', '0', '0', null, 'The Grace Company', 'Qnuque', 'InStock', 'Draft', '', '', '', '', '', '', 'tyler', '', '', '', null, '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '', '', '', null, null, null, null, '', null, null, '', null, null, '', null, null, '', null, null, '', null, null, null, null, null, '', '', '0000-00-00 00:00:00', '2016-06-24 17:30:48', '2016-06-24 17:30:48', null);
INSERT INTO `products` VALUES ('2', 'quiltmotion', '0', '0', null, 'The Grace Company', 'Automation Software', 'InStock', 'Draft', '', '', '', '', '', '', 'QuiltMotion', 'Computer Automated Quilting Powered by QuiltCAD', 'QuiltMotions quilt design software comes with a library of over 200 patterns to choose from. You can always import new digital patterns from other sources, or use the pattern design software to create your own!', 'Enjoy the benefits of a professional automated quilting system in the comfort of your own home! You design it, QuiltMotion quilts it! QuiltMotion takes you seamlessly through pattern design to stitching with absolute ease.\r\n\r\nCall for availability and pricing\r\n1-800-264-0644\r\n\r\nDifferent versions of QuiltMotion have been designed for different branded sewing machines. Contact your sewing machine dealer to see if they have a QuiltMotion for your machine.', null, '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '', '', '', null, null, null, null, '', null, null, '', null, null, '', null, null, '', null, null, '', null, null, null, null, null, '', '', '0000-00-00 00:00:00', '2016-06-24 17:32:53', '2016-06-24 17:32:53', null);

-- ----------------------------
-- Table structure for profiles
-- ----------------------------
DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supervisor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employment_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employment_role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employment_status` enum('Active','LaidOff','OnContract','Dismissed','OnBreak','Maternity Leave',' Workers Comp') COLLATE utf8_unicode_ci NOT NULL,
  `phone_type` enum('Home','Mobile','Work','Office','Other') COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about_me` text COLLATE utf8_unicode_ci,
  `note` text COLLATE utf8_unicode_ci,
  `skypeid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `githubid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram_username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linked_in_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_api_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_api_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_code_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_fake` tinyint(1) NOT NULL DEFAULT '0',
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `is_employee` tinyint(1) NOT NULL DEFAULT '0',
  `birth_date` timestamp NULL DEFAULT NULL,
  `dob_month` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob_day` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob_year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_activated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of profiles
-- ----------------------------

-- ----------------------------
-- Table structure for projects
-- ----------------------------
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of projects
-- ----------------------------

-- ----------------------------
-- Table structure for reminders
-- ----------------------------
DROP TABLE IF EXISTS `reminders`;
CREATE TABLE `reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of reminders
-- ----------------------------

-- ----------------------------
-- Table structure for role_users
-- ----------------------------
DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of role_users
-- ----------------------------
INSERT INTO `role_users` VALUES ('1', '1', '2016-06-24 13:19:21', '2016-06-24 13:19:21');
INSERT INTO `role_users` VALUES ('2', '1', '2016-06-24 13:19:21', '2016-06-24 13:19:21');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'superadmin', 'SuperAdmin', null, '2016-06-24 13:19:21', '2016-06-24 13:19:21');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('1', '{\"site_title\":\"Grace Management Console\",\"ga_code\":\"UA-78414244-1\",\"meta_keywords\":\"Grace Multi Language Website and Content Managment System\",\"meta_description\":\"The new Grace Website Multi Language Content Managment System\"}', '2016-06-24 13:19:22', '2016-06-24 13:19:22', 'en');

-- ----------------------------
-- Table structure for sliders
-- ----------------------------
DROP TABLE IF EXISTS `sliders`;
CREATE TABLE `sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sliders
-- ----------------------------
INSERT INTO `sliders` VALUES ('1', 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '/uploads/slider/slider_1.jpg', 'slider_1.jpg', '676338', '1', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `sliders` VALUES ('2', 'Nullam sapien urna', 'Nullam sapien urna, volutpat vel tempus ac, porttitor sed lorem', '/uploads/slider/slider_2.jpg', 'slider_2.jpg', '572388', '2', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `sliders` VALUES ('3', 'Nunc fringilla', 'Nunc fringilla ut purus non pellentesque. Integer eget risus nunc', '/uploads/slider/slider_3.jpg', 'slider_3.jpg', '394405', '3', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `sliders` VALUES ('4', 'Morbi commodo', 'Morbi commodo massa at facilisis dignissim', '/uploads/slider/slider_4.jpg', 'slider_4.jpg', '335322', '4', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `sliders` VALUES ('5', 'Suspendisse', 'Suspendisse enim eros, egestas quis risus eu, vulputate dignissim nisl', '/uploads/slider/slider_5.jpg', 'slider_5.jpg', '698727', '5', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `sliders` VALUES ('6', 'Vestibulum', 'Vestibulum nec nisi feugiat, scelerisque urna ac, blandit nibh', '/uploads/slider/slider_6.jpg', 'slider_6.jpg', '844577', '6', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `sliders` VALUES ('7', 'Donec lobortis pulvinar faucibus', 'Donec lobortis pulvinar faucibus. Etiam interdum justo eu dolor vulputate, at condimentum dolor faucibus', '/uploads/slider/slider_7.jpg', 'slider_7.jpg', '503064', '7', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `sliders` VALUES ('8', 'Phasellus tempor ut ligula eget porta', 'Phasellus tempor ut ligula eget porta. Maecenas elementum iaculis ante, ut mattis lorem semper vel', '/uploads/slider/slider_8.jpg', 'slider_8.jpg', '623998', '8', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `sliders` VALUES ('9', 'Aenean', 'Aenean ornare erat sed semper gravida', '/uploads/slider/slider_9.jpg', 'slider_9.jpg', '412537', '9', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `sliders` VALUES ('10', 'Mauris dapibus tellus', 'Mauris dapibus tellus eu orci vulputate, hendrerit venenatis augue dictum', '/uploads/slider/slider_10.jpg', 'slider_10.jpg', '492158', '10', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `sliders` VALUES ('11', 'Aenean', 'Aenean ornare erat sed semper gravida', '/uploads/slider/slider_9.jpg', 'slider_9.jpg', '412537', '9', 'en', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `sliders` VALUES ('12', 'Mauris dapibus tellus', 'Mauris dapibus tellus eu orci vulputate, hendrerit venenatis augue dictum', '/uploads/slider/slider_10.jpg', 'slider_10.jpg', '492158', '10', 'en', '2016-06-24 13:19:22', '2016-06-24 13:19:22');

-- ----------------------------
-- Table structure for taggable_taggables
-- ----------------------------
DROP TABLE IF EXISTS `taggable_taggables`;
CREATE TABLE `taggable_taggables` (
  `tag_id` int(11) NOT NULL,
  `taggable_id` int(10) unsigned NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `taggable_taggables_taggable_id_index` (`taggable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of taggable_taggables
-- ----------------------------

-- ----------------------------
-- Table structure for taggable_tags
-- ----------------------------
DROP TABLE IF EXISTS `taggable_tags`;
CREATE TABLE `taggable_tags` (
  `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `normalized` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of taggable_tags
-- ----------------------------

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES ('1', 'Qnique', 'qnique', '2016-06-24 13:19:21', '2016-06-24 13:19:21', 'en');
INSERT INTO `tags` VALUES ('2', 'Quilting', 'quilting', '2016-06-24 13:19:21', '2016-06-24 13:19:21', 'en');
INSERT INTO `tags` VALUES ('3', 'Quilting Machine', 'quilting-machine', '2016-06-24 13:19:21', '2016-06-24 13:19:21', 'en');
INSERT INTO `tags` VALUES ('4', 'Sewing Machine', 'sewing-machine', '2016-06-24 13:19:21', '2016-06-24 13:19:21', 'en');
INSERT INTO `tags` VALUES ('5', 'Expert Quilter', 'expert-quilter', '2016-06-24 13:19:21', '2016-06-24 13:19:21', 'en');
INSERT INTO `tags` VALUES ('6', 'Quilting Tutorial', 'quilting-tutorial', '2016-06-24 13:19:21', '2016-06-24 13:19:21', 'en');
INSERT INTO `tags` VALUES ('7', 'Hand Quilting', 'hand-quilting', '2016-06-24 13:19:21', '2016-06-24 13:19:21', 'en');
INSERT INTO `tags` VALUES ('8', 'Hand Quilting Frame', 'hand-quilting-frame', '2016-06-24 13:19:21', '2016-06-24 13:19:21', 'en');
INSERT INTO `tags` VALUES ('9', 'Quilting Hoop', 'quilting-hoop', '2016-06-24 13:19:21', '2016-06-24 13:19:21', 'en');
INSERT INTO `tags` VALUES ('10', 'Quilting Lap Hoop', 'quilting-lap-hoop', '2016-06-24 13:19:21', '2016-06-24 13:19:21', 'en');
INSERT INTO `tags` VALUES ('11', 'Grace', 'grace', '2016-06-24 13:19:21', '2016-06-24 13:19:21', 'en');
INSERT INTO `tags` VALUES ('12', 'Grace Company', 'grace-company', '2016-06-24 13:19:21', '2016-06-24 13:19:21', 'en');
INSERT INTO `tags` VALUES ('13', 'Grace Frame', 'grace-frame', '2016-06-24 13:19:21', '2016-06-24 13:19:21', 'en');
INSERT INTO `tags` VALUES ('14', 'Grace Manufacturing', 'grace-manufacturing', '2016-06-24 13:19:21', '2016-06-24 13:19:21', 'en');
INSERT INTO `tags` VALUES ('15', 'Affordable Programmer', 'affordable-programmer', '2016-06-24 13:19:21', '2016-06-24 13:19:21', 'en');

-- ----------------------------
-- Table structure for throttle
-- ----------------------------
DROP TABLE IF EXISTS `throttle`;
CREATE TABLE `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of throttle
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `profile_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'pmadsen2013@gmail.com', '$2y$10$WwGqT0t8KUKjKFrT/22YFut7kPlPf2.mqZES7diXuVYYLFHHr7yJW', null, '2016-06-24 17:29:26', 'phillip', 'madsen', '2016-06-24 13:19:21', '2016-06-24 17:29:26', null);
INSERT INTO `users` VALUES ('2', 'admin@admin.com', '$2y$10$T/wserhFPeC5Mjh6OrQYHOogKAYYkpY4C6OjYpzAS.yjDo9iIc70a', null, null, 'Super', 'Admin', '2016-06-24 13:19:21', '2016-06-24 13:19:21', null);

-- ----------------------------
-- Table structure for videos
-- ----------------------------
DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of videos
-- ----------------------------
INSERT INTO `videos` VALUES ('1', 'Painless Billing With Laravel and Stripe', 'painless-billing-with-laravel-and-stripe', 'k9KKjxEq0Lg', 'youtube', 'en', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('2', 'Using Eloquent Outside of Laravel', 'using-eloquent-outside-of-laravel', 'L0g9ka5qaCc', 'youtube', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('3', 'Fast Laravel Workflow With Generators', 'fast-laravel-workflow-with-generators', 'rmtjulbbSmY', 'youtube', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('4', 'Laravel Envoy', 'laravel-envoy', 'ZI9vzxvERGI', 'youtube', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('5', 'PSR 4 Autoloading', 'psr-4-autoloading', 'FzdhnbM_0ug', 'youtube', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('6', 'Gulp This', 'gulp-this', '6Jhgkp67GxI', 'youtube', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('7', 'Test Databases In Memory (with Laravel)', 'test-databases-in-memory-with-laravel', 'NB9KfQiHJO0', 'youtube', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('8', 'Welcome to the Laravel Community', 'welcome-to-the-laravel-community', '2_BKIhjHwS8', 'youtube', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('9', 'Crazy Simple Pagination in Laravel', 'crazy-simple-pagination-in-laravel', 'lIEcyOUcNQk', 'youtube', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('10', 'Better Error Monitoring with Bugsnag and Laravel', 'better-error-monitoring-with-bugsnag-and-laravel', 'r4gK5uynk2s', 'youtube', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('11', 'Laravel Basic Authentication in 4 Minutes', 'laravel-basic-authentication-in-4-minutes', 'FqDomWno2C0', 'youtube', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('12', 'Understanding Fortrabbit Deployment Files', 'understanding-fortrabbit-deployment-files', 'YvJiKI4IQ0Q', 'youtube', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('13', 'Laravel - How to Tail Log Files', 'laravel-how-to-tail-log-files', 'lP5yFWAt8Nk', 'youtube', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('14', 'Laravel and the N+1 Problem', 'laravel-and-the-n1-problem', 'swhWRMkpVsg', 'youtube', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('15', 'Laravel Artisan Commands 101', 'laravel-artisan-commands-101', 'BviKET-QTEQ', 'youtube', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('16', 'Form Model Binding in Laravel', 'form-model-binding-in-laravel', 'EJwxG3b9j9c', 'youtube', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('17', 'C Tags', 'c-tags', 'cE7jSTdE_uQ', 'youtube', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('18', 'View Composers in Laravel', 'view-composers-in-laravel', 'X8yqmZtKOoY', 'youtube', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('19', 'Laravel - Understanding REST', 'laravel-understanding-rest', 'rD82cZjTUZs', 'youtube', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('20', 'Laravel Queues With Iron and Fortrabbit', 'laravel-queues-with-iron-and-fortrabbit', 'yeDCIognMRs', 'youtube', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('21', 'Namespacing Primer (with Laravel)', 'namespacing-primer-with-laravel', 'yAzd7Ig1Wgg', 'youtube', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('22', 'From Zero to Deploy with Laravel', 'from-zero-to-deploy-with-laravel', '8rblX6Ta1-U', 'youtube', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('23', 'Laravel Setup For Newbs', 'laravel-setup-for-newbs', '9AU2QvkqkBM', 'youtube', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('24', 'Laravel Caching Ins and Outs', 'laravel-caching-ins-and-outs', 'Hl4-dftfc0o', 'youtube', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('25', 'Laravel Authentication Essentials', 'laravel-authentication-essentials', 'msEwmVZ4wp4', 'youtube', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('26', 'Laravel 4 Update', 'laravel-4-update', '63892510', 'vimeo', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('27', 'Laravel 4 - Iron.io Push Queues & Closures', 'laravel-4-ironio-push-queues-closures', '64703617', 'vimeo', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('28', 'Laravel 4 - IoC Controller Injection & Unit Testing', 'laravel-4-ioc-controller-injection-unit-testing', '53029232', 'vimeo', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('29', 'Laravel 4 - Mail::queue and Mail::later', 'laravel-4-mailqueue-and-maillater', '64779946', 'vimeo', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('30', 'Laravel 4 - Eloquent Collections & Polymorphic Relations', 'laravel-4-eloquent-collections-polymorphic-relations', '53183075', 'vimeo', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('31', 'Laravel 4 - Controllers & Filters', 'laravel-4-controllers-filters', '52964368', 'vimeo', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('32', 'Laravel 4 - IoC Container Basics', 'laravel-4-ioc-container-basics', '53009943', 'vimeo', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('33', 'Laravel 4 - Error Handling', 'laravel-4-error-handling', '53445935', 'vimeo', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('34', 'Laravel 4 - Mail', 'laravel-4-mail', '53701740', 'vimeo', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('35', 'Laravel 4 - Migrations & Seeding', 'laravel-4-migrations-seeding', '53701204', 'vimeo', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('36', 'Laracon (Day 1: Talk 2) Jeffrey Way', 'laracon-day-1-talk-2-jeffrey-way', '61104599', 'vimeo', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('37', 'Laracon (Day 1: Talk 1) Taylor Otwell', 'laracon-day-1-talk-1-taylor-otwell', '61063778', 'vimeo', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
INSERT INTO `videos` VALUES ('38', 'Laracon (Day 1 Talk 3) Kenny Meyers', 'laracon-day-1-talk-3-kenny-meyers', '61269747', 'vimeo', 'tr', '2016-06-24 13:19:22', '2016-06-24 13:19:22');
SET FOREIGN_KEY_CHECKS=1;
