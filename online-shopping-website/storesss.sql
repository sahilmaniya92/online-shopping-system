-- Create Database
CREATE DATABASE IF NOT EXISTS `storesss`;
USE `storesss`;

-- Table: items
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `price` INT(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `items` (`id`, `name`, `price`) VALUES
(1, 'Canon EOS', 36000),
(2, 'Nikon DSLR', 40000),
(3, 'Sony DSLR', 45000),
(4, 'Olympus DSLR', 50000),
(5, 'Titan Model #301', 13000),
(6, 'Titan Model #201', 3000),
(7, 'HMT Milan', 8000),
(8, 'Faber Luba #111', 18000),
(9, 'H&W', 800),
(10, 'Luis Phil', 1000),
(11, 'John Zok', 1500),
(12, 'Jhalsani', 1300);

-- Table: users
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `contact` VARCHAR(255) NOT NULL,
  `city` VARCHAR(255) NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(1, 'Venu', 'venu@xyz.com', '100001', '1649611400', 'Bangalore', 'Sai Ram road'),
(2, 'Nidhi', 'nidhi19@gmail.com', '100005', '9877878788', 'Karwar', 'Kodibaag'),
(3, 'Riya', 'riya12@gmail.com', '1000090', '8788787877', 'Mumbai', 'Andheri'),
(4, 'Haritha', 'haritha888@gmail.com', '1000082', '8788787888', 'Bangalore', 'Electronic city'),
(5, 'Harsha', 'harsha45@gmail.com', '1000067', '8988988988', 'Bangalore', 'Electronic city'),
(6, 'Preetha', 'preetha222@gmail.com', '1001001', '8988989800', 'Mumbai', 'Navi Mumbai'),
(7, 'Aravinda', 'ara11@gmail.com', '100100100', '8788679800', 'Chennai', 'Koimedu'),
(8, 'Geeta', 'geeta11@gmail.com', '1234567', '6766767677', 'Mumbai', 'Andheri'),
(9, 'Priya', 'priya44@gmail.com', '12121212', '8988989899', 'Mumbai', 'Navi Mumbai'),
(10, 'Seema', 'seema11@gmail.com', '11111111', '6777676766', 'Mumbai', 'Navi Mumbai'),
(11, 'Abcd', 'abcdefg@gmail.com', '9b874d36b003ea971d16c6fa947a6228', '8788787877', 'Karwar', 'Wail Mehkeri'),
(12, 'Seta', 'seta11@gmail.com', 'fcf272aed6ef644a2b1a5ccedb828847', '8788787877', 'Karwar', 'Karwar'),
(13, 'Ee', 'ee11@gmail.com', 'e5e5d06e8e9f950414c4cd8eb18d9e7c', '8788787877', 'Karwar', 'Karwar'),
(14, 'Rema', 'rema11@gmail.com', 'cf36cba3a1d28a4947b6b8706df9c91b', '8788787877', 'Karwar', 'Khodibaag'),
(15, 'Hh', 'hh11@gmail.com', 'de43e0fe88869b15160e7e0be4190423', '8788787877', 'Karwar', 'Karwar'),
(16, 'Zz', 'zz11@gmail.com', '4ce4daf8c6283a054e1fe6bf2124cb63', '6766767677', 'Karwar', 'Karwar'),
(17, 'Vina', 'vina11@gmail.com', 'fcf272aed6ef644a2b1a5ccedb828847', '8788789899', 'K', 'K'),
(18, 'Reta', 'reta@gmail.com', '8b2773c0f1074f1cd5bc6f64eb19a592', '98', 'K', 'K'),
(19, 'Aa', 'aa@gmail.com', 'aa21ac9ebd74ef6f04d95897ff5443d5', '8788787888', 'K', 'K'),
(20, 'Tt', 'tt11@gmail.com', '3ed80171b1f4ab825f2038fc203c887c', '9899898999', 'T', 'T'),
(21, 'Sana', 'sana22@gmail.com', '73812f2b9a460ff9b3873fbcf717b5f7', '8888888888', 'Karwar', 'Sai Mandir Road'),
(22, 'Ana', 'ana22@gmail.com', '987654', '9899898988', 'Ka', 'Kaa');

-- Table: users_items
DROP TABLE IF EXISTS `users_items`;
CREATE TABLE `users_items` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NOT NULL,
  `item_id` INT(11) NOT NULL,
  `status` ENUM('Added to cart', 'Confirmed') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `users_items_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users_items` (`id`, `user_id`, `item_id`, `status`) VALUES
(1, 1, 2, 'Confirmed'),
(2, 11, 2, 'Confirmed'),
(5, 12, 1, 'Confirmed'),
(6, 12, 2, 'Confirmed'),
(8, 13, 1, 'Confirmed'),
(9, 13, 2, 'Confirmed'),
(12, 14, 1, 'Added to cart'),
(13, 14, 2, 'Added to cart'),
(16, 20, 1, 'Confirmed'),
(17, 21, 1, 'Added to cart'),
(18, 21, 2, 'Added to cart'),
(20, 22, 1, 'Added to cart'),
(21, 22, 2, 'Added to cart');
