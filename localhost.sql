-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 25, 2021 at 10:20 PM
-- Server version: 10.3.31-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id16321325_claritas`
--
CREATE DATABASE IF NOT EXISTS `id16321325_claritas` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id16321325_claritas`;

-- --------------------------------------------------------

--
-- Table structure for table `Categorias`
--

CREATE TABLE `Categorias` (
  `id_categoria` int(11) NOT NULL,
  `Marca` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_categoria` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `imagen_categoria` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Categorias`
--

INSERT INTO `Categorias` (`id_categoria`, `Marca`, `nombre_categoria`, `imagen_categoria`) VALUES
(1, 'Pandora', 'Anillos', 'https://www.jared.com/productimages/processed/V-802235705_0_800.jpg?pristine=true'),
(2, 'Pandora', 'Aretes', 'https://www.jared.com/productimages/processed/V-802317901_0_800.jpg?pristine=true'),
(3, 'Pandora', 'Collares', 'https://www.jared.com/productimages/processed/V-802318004_0_800.jpg?pristine=true'),
(4, 'Pandora', 'Brazaletes', 'https://zoom.jewelryimages.net/edge/foxfinejewelry/images/edge/352-01488.jpg'),
(5, 'Pandora', 'Petites', 'https://www.reeds.com/pub/media/catalog/product/cache/38c3c1b8e53ef11aa9803a5390245afc/p/a/pandora_cherry_blossom_petite_locket_element-1-19783448-t1588881319.jpg'),
(6, 'Pandora', 'Charms', 'https://www.reeds.com/pub/media/catalog/product/cache/38c3c1b8e53ef11aa9803a5390245afc/p/a/pandora_mother__daughter_double_heart_split_dangle_charm-1-20115150-hxd261143c_1.jpg'),
(7, 'Pandora', 'Muranos', 'https://www.orovivo.com/170061-thickbox_default/pandora-charm-flor-cristal-murano-rosa-plata.jpg'),
(8, 'Pandora', 'Extras', 'https://i.pinimg.com/originals/79/0c/db/790cdbab0789e876e7e3a1c1cebf7946.jpg'),
(9, 'Pandora', 'Brazaletes de cuero', 'https://i.pinimg.com/originals/88/1b/d4/881bd4b1c3971cfe16f5c8d4886ed411.jpg'),
(10, 'Pandora', 'Clips', 'https://www.divatekszerbolt.hu/upload/product/21948/791823en68_5eco.jpg'),
(11, 'P', 'Dijes', 'https://i.pinimg.com/originals/7a/98/b0/7a98b0334e88cfe0998b8cb676b7255c.png');

-- --------------------------------------------------------

--
-- Table structure for table `Productos`
--

CREATE TABLE `Productos` (
  `id_productos` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `preciodeventa` decimal(10,0) NOT NULL,
  `código` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `fotografia` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Productos`
--

INSERT INTO `Productos` (`id_productos`, `nombre`, `descripcion`, `preciodeventa`, `código`, `fotografia`, `id_categoria`) VALUES
(2, 'Sparkle & Hearts Ring', '\"Express your heart\'s true desire with this sparkling eternity ring.\"', 25, '10', 'https://drive.google.com/uc?export=view&id=189VfsIHREPf1L1uMZCmRv06kJgvB4OKI', 1),
(3, 'Shimmering Leaves Ring', '\"This wide sterling silver ring features an intricate pattern of winding branches and dainty leaves encrusted with cubic zirconia stones.\"', 41, '10', 'https://drive.google.com/uc?export=view&id=17epAdlKZdquIU0GU3ah8Oc7ApFM7s-dr', 1),
(4, 'Crystalized Snowflake Ring', 'Crystalized Snowflake Ring', 31, '10', 'https://drive.google.com/uc?export=view&id=16ngE1PcVmxFeHlBK4LczSr_GLeaY4lSi', 1),
(5, 'Hearts of Pandora Ring Rose', 'Hearts of Pandora Ring Rose', 28, '10', 'https://drive.google.com/uc?export=view&id=12t89WnZ8H1yt_ksOg9KtSkyVkFHmR2Js', 1),
(6, 'Dazzling Daisy Meadow Stackable Ring', 'Dazzling Daisy Meadow Stackable Ring', 34, '10', 'https://drive.google.com/uc?export=view&id=1KtVfhUsOdHTfSfd0uJJHQKIChkCFCJvw', 1),
(7, 'Brilliant Legacy Stud Earrings', '\"Large faceted clear cubic zirconias encircled with more sparkling cubic zirconias.\"', 31, '10', 'https://drive.google.com/uc?export=view&id=1W5ZAVjEuKBCLHLfWvUI2yQXyk4hCV0YO', 2),
(8, 'Mickey silver stud earrings', '\"Mickey\'s iconic shape is celebrated on these beautiful sterling silver earrings with cubic zirconia stones.\"', 29, '10', 'https://drive.google.com/uc?export=view&id=1MEWEwc1OiSY6-iSEHmKLoo9VUqDehl2n', 2),
(9, 'Crystalized Snowflake Stud Earrings', 'Crystalized Snowflake Stud Earrings', 34, '10', 'https://drive.google.com/uc?export=view&id=17sLbU1VKzsWgUwv0BijYIWoIH4SynSRz', 2),
(10, 'White Primrose Stud Earrings', 'White Primrose Stud Earrings', 28, '10', 'https://drive.google.com/uc?export=view&id=1ocoOzMwjblpJtzrXRPcfXrtLMbXCHGqO', 2),
(11, 'Magnolia Bloom Stud Earrings', 'Magnolia Bloom Stud Earrings', 29, '10', 'https://drive.google.com/uc?export=view&id=1r1pJka7KpMzKclPXKB5uhR2z3vVZw37d', 2),
(12, 'ME Link Necklace', '\"Show the world all of the unique things that you love with the Pandora Me Link Necklace.\"', 91, '10', 'https://drive.google.com/uc?export=view&id=1RRkD5dGDsx8L_5RcXMkHeQO1b81HRVoL', 3),
(13, 'Fairytale Tiara Necklace', '\"Shine with sophistication with this elegant sterling silver necklace.\"', 36, '10', 'https://drive.google.com/uc?export=view&id=1870NaW6XC26OGYxO7lHMx5N1pEnJffOq', 3),
(14, 'Dazzling Daisies Necklace', 'Dazzling Daisies Necklace', 38, '10', 'https://drive.google.com/uc?export=view&id=1U2aToNNGRtRQxIFpZ57SCsdCMa6nOoJ8', 3),
(15, 'Hearts Necklace Rose', 'Hearts Necklace Rose', 38, '10', 'https://drive.google.com/uc?export=view&id=1pOvcm8PCc9wHK75ZYttB0XHtqS4LArSH', 3),
(16, 'Forget Me Not Necklace', 'Forget Me Not Necklace', 42, '10', 'https://drive.google.com/uc?export=view&id=1FLQdIJirYYWPEXFz-4lsA7Ubp0_oGNEZ', 3),
(17, 'Sterling Silver Clasp Bracelet', '16cm $60.00 | 17cm $62.00 | 18cm $64.00 | 19cm $66.00 | 20cm $68.00 | 21cm $70.00', 60, '10', 'https://drive.google.com/uc?export=view&id=1vFHz-zVx_lPgWj5r0yJG3Sn5F2rdtVLQ', 4),
(18, 'Bracelet Classic Pandora Rose', '16cm $56.00 | 17cm $58.00 | 18cm $60.00 | 19cm $62.00 | 20cm $65.00 | 21cm $67.00', 56, '10', 'https://drive.google.com/uc?export=view&id=1lFnQO34Z8ubzc_8sBx0rvM3IOLbykcSZ', 4),
(19, 'Moments Dainty Bow Bangle', '17cm $47.00 | 18cm $49.00 | 19cm $51.00', 47, '10', 'https://drive.google.com/uc?export=view&id=1Q7qrzP2hH_zY8xaIFsfZcpnjybI90vRU', 4),
(20, 'Bracelet Moments Two-Tone', '16cm $61.00 | 17cm $63.00 | 18cm $65.00\r\n| 19cm $68.00 | 20cm $70.00 | 21cm $72.00', 61, '10', 'https://drive.google.com/uc?export=view&id=1Lss1d5Osux9R15pXZ7FfFLlkwB39ZOBj', 4),
(21, 'Poetic Blooms Bracelet Moments', '16cm $60.00 | 17cm $62.00 | 18cm $64.00 | 19cm $66.00 | 20cm $68.00 | 21cm $70.00', 60, '10', 'https://drive.google.com/uc?export=view&id=1Xm7UidauZkeiBo6i6rDf5qzgjGkjqCCw', 4),
(22, 'Disney, Minnie & Mickey Kiss Petite', 'Disney, Minnie & Mickey Kiss Petite', 18, '10', 'https://drive.google.com/uc?export=view&id=1i5cFr-S2WcLsXohBevlAXOMuYmGZT6kg', 5),
(23, 'Tropical Fish Petite', 'Tropical Fish Petite', 18, '10', 'https://drive.google.com/uc?export=view&id=1_vmj2k_o-dDpgSg7iApIqRTpQBv4MLIe', 5),
(27, 'Infinite Love Petite', 'Infinite Love Petite', 18, '10', 'https://drive.google.com/uc?export=view&id=1gVmz_CrfrG94uvUcGSE5BLGzTZjlJTr8', 5),
(28, 'Cherry Blossom Petite', 'Cherry Blossom Petite', 18, '10', 'https://drive.google.com/uc?export=view&id=1h0FdllDZNxFfY-yfIIw4FrR8D3qW4WCk', 5),
(29, 'Shining Star Petite', 'Shining Star Petite', 18, '10', 'https://drive.google.com/uc?export=view&id=13CSZcexLPOiNgLZ6AVNWCOjos1KfNgZC', 5),
(30, 'My Powerful Light Dangle Charm', 'My Powerful Light Dangle Charm', 18, '10', 'https://drive.google.com/uc?export=view&id=1yhxQ6sfeBfM-DSdDAgIyFYtZ59bDa92k', 6),
(31, 'Love Coupon Dangle Charm', 'Love Coupon Dangle Charm', 18, '10', 'https://drive.google.com/uc?export=view&id=17cwsK9-RVuC1Ss9U21f4tJSJPbpRSskH', 6),
(32, 'Charm Married Couple', 'Charm Married Couple', 18, '10', 'https://drive.google.com/uc?export=view&id=1Wva5FYKFZNTgXGwGS8FlBFW-bdCnvu3p', 6),
(33, 'Charm Disney Up House & Balloons', 'Charm Disney Up House & Balloons', 18, '10', 'https://drive.google.com/uc?export=view&id=1lmWZin6NBifJ38rcUL3UpixMwQ2Qygw-', 6),
(34, 'Disney Mulan Charm', 'Disney Mulan Charm', 18, '10', 'https://drive.google.com/uc?export=view&id=1COwH2b8XWcSxZgXVrCDzsMrobGtFhHAr', 6),
(35, 'My Safety Chain', 'My Safety Chain', 25, '10', 'https://drive.google.com/uc?export=view&id=1_s6xjWK9rjmsAQ4Macwcvv44eeFyTaQo', 8),
(36, 'Safety Chain Rose', 'Safety Chain Rose', 38, '10', 'https://drive.google.com/uc?export=view&id=17RLYnPl-VwymMQkZSKpJAKSxV7goAqad', 8),
(37, 'Blue & Pink Fan', 'Blue & Pink Fan', 38, '10', 'https://drive.google.com/uc?export=view&id=182jmSNLVsDV3XXmnYZIbcSjZJeQJ0eWd', 8),
(38, 'My Spacer Charm', 'My Spacer Charm', 18, '10', 'https://drive.google.com/uc?export=view&id=1dbuew5AbfQwgdDRfe23-yGG5nBk2vovJ', 8),
(39, 'Spacer My Pink', 'Spacer My Pink', 18, '10', 'https://drive.google.com/uc?export=view&id=1maJl5LKjm3AGINKYV20oHJWMuqATx75b', 8),
(40, 'Pandora Me Safety Pin Brooch', 'Pandora Me Safety Pin Brooch', 30, '10', 'https://drive.google.com/uc?export=view&id=1WMDFfiHxqQAk0qbkhtSiAU8nSe2BFrYe', 8),
(41, 'Flower Garden Murano Glass', '\"Pandora Flower Garden Murano Glass Multicolored Charm.\"', 30, '10', 'https://drive.google.com/uc?export=view&id=1syekSO0st5ldhcWmAHitA_ag5eKPbU_T', 7),
(42, 'Cinderella Blue Murano Glass', 'Cinderella Blue Murano Glass', 30, '10', 'https://drive.google.com/uc?export=view&id=1B7d0PY7jgeKot4qAVS_zXGEUJmsbR-N_', 7),
(43, 'Red Shimmer Murano Glass', 'Red Shimmer Murano Glass', 30, '10', 'https://drive.google.com/uc?export=view&id=1DA8eiPxNsx6yVr5E9E4tqmAKdom5d-hR', 7),
(44, 'Midnight Blue Fizzle Murano Glass', 'Midnight Blue Fizzle Murano Glass', 30, '10', 'https://drive.google.com/uc?export=view&id=1G2i3YNS1q_7wbs1gv1UZgLaHDj4KlHyL', 7),
(45, 'Blue Effervescence Murano Glass', 'Blue Effervescence Murano Glass', 30, '10', 'https://drive.google.com/uc?export=view&id=1I4TN8Xei0SfdvCtBOJxfXFwEvtw0T3zi', 7);

-- --------------------------------------------------------

--
-- Table structure for table `Usuarios`
--

CREATE TABLE `Usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `usuario` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contrasena` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Usuarios`
--

INSERT INTO `Usuarios` (`id_usuarios`, `usuario`, `contrasena`) VALUES
(1, 'Nathie', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Categorias`
--
ALTER TABLE `Categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indexes for table `Productos`
--
ALTER TABLE `Productos`
  ADD PRIMARY KEY (`id_productos`),
  ADD KEY `fk_categoria_producto` (`id_categoria`);

--
-- Indexes for table `Usuarios`
--
ALTER TABLE `Usuarios`
  ADD PRIMARY KEY (`id_usuarios`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Categorias`
--
ALTER TABLE `Categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `Productos`
--
ALTER TABLE `Productos`
  MODIFY `id_productos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `Usuarios`
--
ALTER TABLE `Usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Productos`
--
ALTER TABLE `Productos`
  ADD CONSTRAINT `fk_categoria_producto` FOREIGN KEY (`id_categoria`) REFERENCES `Categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
