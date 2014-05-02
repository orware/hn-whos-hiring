-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 02, 2014 at 07:32 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hn_hiring`
--

-- --------------------------------------------------------

--
-- Table structure for table `hn_hiring_threads`
--

CREATE TABLE IF NOT EXISTS `hn_hiring_threads` (
  `thread_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `thread_title` varchar(512) NOT NULL,
  `thread_listings` int(10) unsigned NOT NULL DEFAULT '0',
  `thread_comments` int(10) unsigned NOT NULL DEFAULT '0',
  `thread_author` varchar(50) NOT NULL,
  `thread_score` int(10) unsigned NOT NULL DEFAULT '0',
  `thread_date` date NOT NULL DEFAULT '0000-00-00',
  `thread_last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `thread_id` (`thread_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7679432 ;

--
-- Dumping data for table `hn_hiring_threads`
--

INSERT INTO `hn_hiring_threads` (`thread_id`, `thread_title`, `thread_listings`, `thread_comments`, `thread_author`, `thread_score`, `thread_date`, `thread_last_updated`) VALUES
(2396027, 'Ask HN: Who is Hiring? (April 2011)', 218, 298, 'whoishiring', 280, '2011-04-01', '2014-05-02 18:52:23'),
(2503204, 'Ask HN: Who is Hiring? (May 2011)', 217, 295, 'whoishiring', 321, '2011-05-01', '2014-05-02 16:51:41'),
(2607052, 'Ask HN: Who is Hiring? (June 2011)', 258, 336, 'whoishiring', 322, '2011-06-01', '2014-05-02 16:50:58'),
(2831646, 'Ask HN: Who is Hiring? (August 2011)', 230, 311, 'whoishiring', 278, '2011-08-01', '2014-05-02 16:50:00'),
(2949787, 'Ask HN: Who is Hiring? (September 2011)', 191, 236, 'whoishiring', 244, '2011-09-01', '2014-05-02 16:49:01'),
(3060221, 'Ask HN: Who is Hiring? (October 2011)', 199, 280, 'whoishiring', 236, '2011-10-01', '2014-05-02 16:48:19'),
(3181796, 'Ask HN: Who is Hiring? (November 2011)', 230, 298, 'whoishiring', 304, '2011-11-01', '2014-05-02 16:47:36'),
(3300290, 'Ask HN: Who is Hiring? (December 2011)', 203, 254, 'lpolovets', 285, '2011-12-01', '2014-05-02 16:46:36'),
(3412900, 'Ask HN: Who is Hiring? (January 2012)', 149, 227, 'whoishiring', 259, '2012-01-01', '2014-05-02 16:45:54'),
(3537881, 'Ask HN: Who is Hiring? (February 2012)', 201, 233, 'whoishiring', 260, '2012-02-01', '2014-05-02 16:45:12'),
(3652041, 'Ask HN: Who is Hiring? (March 2012)', 251, 301, 'whoishiring', 265, '2012-03-01', '2014-05-02 16:44:30'),
(3783657, 'Ask HN: Who is Hiring? (April 2012)', 201, 226, 'whoishiring', 260, '2012-04-01', '2014-05-02 16:43:33'),
(3913997, 'Ask HN: Who Is Hiring? (May 2012)', 231, 273, 'whoishiring', 241, '2012-05-01', '2014-05-02 16:42:52'),
(4053076, 'Ask HN: Who Is Hiring? (June 2012)', 227, 258, 'whoishiring', 292, '2012-06-01', '2014-05-02 16:42:09'),
(4184755, 'Ask HN: Who Is Hiring? (July 2012)', 195, 252, 'whoishiring', 179, '2012-07-01', '2014-05-02 16:41:24'),
(4323597, 'Ask HN: Who Is Hiring? (August 2012)', 245, 296, 'whoishiring', 270, '2012-08-01', '2014-05-02 16:40:37'),
(4463689, 'Ask HN: Who Is Hiring? (September 2012)', 214, 305, 'whoishiring', 389, '2012-09-01', '2014-05-02 16:39:34'),
(4596375, 'Ask HN: Who Is Hiring? (October 2012)', 248, 299, 'whoishiring', 250, '2012-10-01', '2014-05-02 16:38:27'),
(4727241, 'Ask HN: Who Is Hiring? (November 2012)', 221, 266, 'whoishiring', 217, '2012-11-01', '2014-05-02 16:37:29'),
(4857714, 'Ask HN: Who is hiring? (December 2012)', 230, 291, 'whoishiring', 210, '2012-12-01', '2014-05-02 16:36:48'),
(4992617, 'Ask HN: Who is hiring? (January 2013)', 192, 258, 'whoishiring', 223, '2013-01-01', '2014-05-02 16:35:51'),
(5150834, 'Ask HN: Who is hiring? (February 2013)', 219, 261, 'whoishiring', 202, '2013-02-01', '2014-05-02 16:35:08'),
(5304169, 'Ask HN: Who is hiring? (March 2013)', 291, 366, 'whoishiring', 266, '2013-03-01', '2014-05-02 16:34:26'),
(5472746, 'Ask HN: Who is hiring? (April 2013)', 343, 425, 'whoishiring', 299, '2013-04-01', '2014-05-02 16:33:26'),
(5637663, 'Ask HN: Who is hiring? (May 2013)', 323, 447, 'whoishiring', 315, '2013-05-01', '2014-05-02 16:32:13'),
(5803764, 'Ask HN: Who is hiring? (June 2013)', 263, 368, 'whoishiring', 237, '2013-06-01', '2014-05-02 16:30:54'),
(5970187, 'Ask HN: Who is hiring? (July 2013)', 293, 377, 'whoishiring', 284, '2013-07-01', '2014-05-02 16:29:49'),
(6139927, 'Ask HN: Who is hiring? (August 2013)', 309, 393, 'whoishiring', 267, '2013-08-01', '2014-05-02 16:28:26'),
(6310234, 'Ask HN: Who is hiring? (September 2013)', 239, 379, 'whoishiring', 272, '2013-09-01', '2014-05-02 16:27:12'),
(6475879, 'Ask HN: Who is hiring? (October 2013)', 427, 576, 'whoishiring', 359, '2013-10-01', '2014-05-02 16:26:08'),
(6653437, 'Ask HN: Who is hiring? (November 2013)', 298, 396, 'whoishiring', 226, '2013-11-01', '2014-05-02 16:24:15'),
(6827554, 'Ask HN: Who is hiring? (December 2013)', 263, 326, 'whoishiring', 252, '2013-12-01', '2014-05-02 16:22:59'),
(6995020, 'Ask HN: Who is hiring? (January 2014)', 223, 291, 'whoishiring', 207, '2014-01-01', '2014-05-02 16:21:56'),
(7162197, 'Ask HN: Who is hiring? (February 2014)', 330, 387, 'whoishiring', 282, '2014-02-01', '2014-05-02 16:20:52'),
(7324236, 'Ask HN: Who is hiring? (March 2014)', 340, 438, 'whoishiring', 284, '2014-03-01', '2014-05-02 16:19:53'),
(7507765, 'Ask HN: Who is hiring? (April 2014)', 356, 536, 'whoishiring', 293, '2014-04-01', '2014-05-02 16:18:40'),
(7679431, 'Ask HN: Who is hiring? (May 2014)', 358, 415, 'whoishiring', 270, '2014-05-01', '2014-05-02 16:17:11');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
