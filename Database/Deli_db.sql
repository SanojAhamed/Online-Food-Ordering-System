SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(6, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@gmail.com', '', '2022-03-20 09:36:18');

CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J');

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(18, 52, 'Caprese stuffed chicken', 'A twist on the classic Caprese! Succulent chicken is filled with both fresh and sun dried tomatoes for a flavour packed chicken PLUS melted mozzarella cheese! Cooked in a perfect balsamic reduction, this is the chicken of ', '100.00', '623353652eb53.jpg'),
(19, 52, 'Spinach Artichoke Stuffed Chicken', 'Spinach Artichoke Stuffed Chicken Breasts is a delicious way to turn a creamy dip into an incredible dinner! with the option of serving it with a ‘no cream’ creamy sauce!', '150.00', '623354625884f.jpg'),
(20, 52, 'Caprese Stuffed Garlic Butter Portobellos', 'Portobello mushrooms stuffed and broiled with garlic butter and fresh mozzarella cheese, grape tomato slices and drizzled with a rich balsamic glaze! Low carb heaven!', '120.00', '623354e713a8b.jpg'),
(21, 52, 'Grilled Lemon Herb Mediterranean Chicken Salad', 'this Grilled Lemon Herb Mediterranean Chicken Salad recipe is as closest to perfect as you can get! Full of Mediterranean flavours: olives, tomatoes, cucumber, avocados, and chicken', '599.00', '6233554fe82f7.jpg'),
(22, 53, 'Creamy Herb Chicken', 'Tender chicken breasts simmered in a flavourful and creamy herb sauce with a hint of garlic', '499.00', '623355ee3f58b.jpg'),
(23, 53, 'Hot Fudge Chocolate Pudding Cake', 'An extremely easy and fast to make! A rich chocolate fudge sauce forms underneath a layer of chocolate cake while baking, by itself!', '199.00', '623356472959e.jpg'),
(24, 53, 'Creamy Parmesan Carbonara Chicken (No Egg)', 'The ultimate twist with Carbonara flavours! Crispy, golden chicken fillets soak up a carbonara inspired sauce for a new chicken recipe loved by the entire family!', '220.00', '623356b3df667.jpg'),
(25, 54, 'Spinach Artichoke Stuffed Chicken', 'Spinach Artichoke Stuffed Chicken Breasts is a delicious way to turn a creamy dip into an incredible dinner! with the option of serving it with a ‘no cream’ creamy sauce!', '200.00', '6233588c5a574.jpg'),
(26, 54, 'Quick Soft Cinnamon Rolls', 'Cinnamon rolls with a cream cheese glaze are super fluffy and light with a simple homemade dough, and a quick method to get baking!', '120.00', '623357fbeaca0.jpg'),
(28, 54, 'Creamy Salmon Piccata', 'Move over chicken…. THIS creamy salmon piccata is THE classy yet easy salmon recipe you’ve been waiting for, with a delicious creamy lemon caper sauce!', '400.00', '6235ea1bf30df.jpg'),
(29, 65, 'Chicken Chettinad Curry', 'A fiery curry, Chicken Chettinad is one of the most popular dishes from this region. The tanginess of tomatoes, the sweetness of the onions and cinnamon and the heat from red chillies', '350.00', '6235ee0246746.jpg'),
(30, 65, 'Chettinad Fish Fry', 'Fleshy surmai fillets are marinated and wrapped in an exquisite Chettinad masala paste and then pan fried. These succulent fish fillets are perfect as appetizers', '200.00', '6235ef06179ed.jpg'),
(31, 65, 'Chettinad Egg Curry', 'This chettinad egg curry is a simple egg recipe to prepare and has a myriad of spices mixed with some coconut milk adding to the thick gravy. It is spicy and tangy with the addition of lime', '100.00', '6235f05019c2e.jpg'),
(32, 57, 'Chicken sandwich', ' skinless chicken breast or thigh served between slices of bread, on a bun, or on a roll.', '199.00', '6235f2b6d56d5.jpg'),
(33, 57, ' Uttapam', 'Uttapam are savory pancakes with crispy golden edges and a pillowy soft center topped with veggies. Traditionally served as breakfast in India, wholesome Uttapam also makes for a quick and satiating meal.', '99.00', '6235f4de5db83.jpg'),
(34, 60, 'Chana Masala', 'Chana Masala, also known as Chole Masala, is an authentic North Indian style curry made with white chickpeas, freshly powdered spices, onions, tomatoes and herbs', '199.00', '6235f995db263.jpg'),
(35, 60, 'Besan Ladoo', ' these are round sweet balls made by roasting gram flour and ghee together, and then adding sugar to make a thick pasty dough – that is then formed into delicious, melt-in-your-mouth balls.', '200.00', '6235fa361924b.jpg'),
(37, 60, 'Samosa', 'Flaky and crunchy fried samosa are one of the most popular street food snack in North Indian cuisine. They feature a pastry-like crust but are filled with savory potatoes and peas for a hearty, delicious snack.', '120.00', '6237334522669.jpg'),
(38, 50, 'Dosai', 'Rice and wheat are the top two grains consumed by Indians, with rice topping the list. Indians have taken this humble grain and transformed it into a plethora of sweet and savory dishes unlike any other culture in the worl', '150.00', '62373622e10a6.jpg'),
(39, 50, 'Idly', 'idly is a type of savory rice cake, originating from the Indian subcontinent, popular as a breakfast food in Southern India and in Sri Lanka.', '180.00', '6237371fe35b2.jpg'),
(40, 50, 'Appam', 'Appam is a type of pancake, originating from South India, made with fermented rice batter and coconut milk', '120.00', '623738575b588.jpg'),
(41, 55, 'Puttu', ' It is a dish made of steamed cylinders of ground rice layered with coconut shavings, sometimes with a sweet or savory filling. Puttu is served hot with sweet side dishes such as palm sugar or banana', '199.00', '62373a897a4c6.jpg'),
(42, 55, 'Pongal', 'The two varieties of pongal are chakarai pongal, which is sweet, and venn pongal, which is made from clarified butter. The word pongal generally refers to spicy venn pongal and is a common breakfast food.', '160.00', '62373c09a4b04.jpg'),
(43, 55, 'Parota', 'Porottas/Parathas are commonly eaten with vegetable kurma/korma, chicken, fish, mutton, or beef curry. They are also served stuffed with vegetables such as potatoes or radish', '100.00', '62373d32d5143.jpg'),
(44, 56, 'Coconut Rice', 'Coconut rice is a dish prepared by soaking white rice in coconut milk or cooking rice with coconut flakes. As both coconut and the rice-plant are commonly found in the tropics all around the world', '150.00', '623746726eaa1.jpg'),
(45, 56, 'Patrode', 'It is made from colocasia leaves (chevu in Tulu, taro, kesuve or arbi) stuffed with gram or rice flour and flavorings such as spices, tamarind, and jaggery (raw sugar).', '100.00', '62374753e63aa.jpg'),
(46, 56, 'Chicken Ishtu', 'Cardamom, cinnamon, and cloves are paired together to bring out a sweet yet aromatic flavor. Potatoes, beans, and carrots are the vegetables of choice here, adding body and varied texture to the overall dish.', '180.00', '623747f111c69.jpg'),
(47, 48, 'Schezwan Fried Rice', 'Indo-Chinese style schezwan fried rice! It’s super easy to make and filled with tender rice, colorful veggies and it’s all stir-fried with a spicy schezwan sauce.', '200.00', '6238960466488.jpg'),
(48, 48, 'Schezwan Noodles', 'Schezwan noodles recipe is made with the spicy schezwan sauce and Hakka Noodles is made with soy sauce. Hakka Noodles is more like your simple stir-fried noodles', '150.00', '623896f62b300.jpg'),
(49, 48, 'Veg Manchurian Recipe', 'Cabbage is usually the leading vegetable in the manchurian balls, with carrots, green beans, bell peppers and even cauliflower added to the mix', '250.00', '623897eb56c5a.jpg'),
(50, 61, 'French Fries', 'French fries, are one of the most popular side dishes in the world. They find accompaniment in dips, mayonnaise, ketchup, and even vinegar.', '150.00', '623899823950b.jpg'),
(51, 61, 'French Toast', 'French toast is a dish made of sliced bread soaked in beaten eggs and typically milk, then pan fried. Alternative names and variants include \"eggy bread\"', '200.00', '62389a4b4634a.jpg'),
(52, 61, 'Winter Chicken', 'chicken fried with beautiful, ripe, cherry tomatoes in a creamy sauce is guaranteed to hit the spot. Add a dollop of pesto for an extra layer of nutty flavours', '250.00', '62389b56305f6.jpg'),
(53, 51, 'Prawn Pie', 'The dish is made from a spicy flavored flaky pie pastry that is stuffed in with chopped prawns that is cooked in Recheado masala. This is one of the common masala used in most of the Goan cooking', '200.00', '62389c87b9371.jpg'),
(54, 51, 'Chicken Kiev', 'Chicken Kiev or chicken Kyiv is a dish made of chicken fillet pounded and rolled around cold butter, then coated with egg and bread crumbs, and either fried or baked', '249.00', '62389d1d37b43.jpg'),
(55, 51, 'Mutton Stew', 'French ragoût (stew) of lamb or mutton. Often, vegetables are added.Lamb stew is a preparation in which tough cuts of lamb.', '149.00', '62389ed6884cb.jpg'),
(56, 49, 'Margherita Pizza', 'Pizza Margherita (more commonly known in English as Margherita pizza) is a typical Neapolitan pizza, made with San Marzano tomatoes, mozzarella cheese, fresh basil, salt, and extra-virgin olive oil.', '120.00', '62389fbca300a.jpg'),
(57, 49, ' Mushroom Risotto', 'Mushroom risotto is a creamy Italian rice with chicken broth and your favorite mushrooms. You can make it on the stovetop with a little patience and meditative stirring', '180.00', '6238a08145beb.jpg'),
(58, 49, 'Lasagna', 'Lasagna is the name of one of the oldest and best-known pasta shapes. It is usually rectangular or ribbon shaped, thicker than tagliatelle, made from a dough based on flour and eggs', '249.00', '6238a1543564b.jpg'),
(59, 59, 'Classic Pasta Amatriciana', 'Denoting a spicy pasta sauce made with tomatoes, pancetta or bacon, and basil.', '149.00', '6238a27c7f0e3.jpg'),
(60, 59, 'Fettuccine Pomodoro', 'Pomodoro sauce is a very simple classic Italian tomato-based sauce recipe consisting of few ingredients.', '200.00', '6238a3547bab1.jpg'),
(61, 59, 'Pasta Carbonara', 'The silky carbonara sauce is created when the beaten eggs are tossed with the hot pasta and a little fat from the pancetta or bacon.', '249.00', '6238a3e1d1c05.jpg');

-- --------------------------------------------------------

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(71, 39, 'in process', 'Dispatching...', '2022-03-17 12:31:14'),
(72, 39, 'closed', 'Order delivered.', '2022-03-17 12:35:00'),
(73, 42, 'closed', 'Order delivered & payment received successfully.', '2022-03-23 13:53:20'),
(74, 47, 'rejected', 'Order Cancelled by User.', '2022-03-23 13:54:08'),
(75, 43, 'in process', 'Expected Delivery: 25th March, Friday ', '2022-03-23 14:07:03');



CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(48, 17, 'Scallion', 'scallion@gmail.com', '91-44-4565 3333', 'scallion.com', '11am', '11pm', 'mon-sat', '36, Sardar Patel Road Guindy, Chennai-32.', '6228c94e35623.jpg', '2022-03-09 15:35:42'),

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(12, 'Cafe', '2022-03-05 14:07:48'),


CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(42, 42, 'Creamy Herb Chicken', 1, '499.00', 'closed', '2022-03-23 13:53:20'),
(43, 40, 'Parota', 1, '100.00', 'in process', '2022-03-23 14:07:03'),
(44, 41, 'Chicken Chettinad Curry', 1, '350.00', NULL, '2022-03-23 13:47:01'),
(45, 43, 'Coconut Rice', 1, '150.00', NULL, '2022-03-23 13:47:38'),
(46, 44, 'Schezwan Fried Rice', 1, '200.00', NULL, '2022-03-23 13:51:12'),
(47, 44, 'Schezwan Noodles', 1, '150.00', 'rejected', '2022-03-23 13:54:08'),
(48, 39, 'Winter Chicken', 1, '250.00', NULL, '2022-03-23 13:51:40');


ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);


ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);


ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);


ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);


ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);


ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;


ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;


ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;


ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;


ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;


ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

