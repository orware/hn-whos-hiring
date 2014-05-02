-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 02, 2014 at 07:30 PM
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
-- Table structure for table `hn_hiring_companies`
--

CREATE TABLE IF NOT EXISTS `hn_hiring_companies` (
  `company_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) NOT NULL,
  `company_remote_friendly` tinyint(4) NOT NULL DEFAULT '0',
  `company_language_agnostic` tinyint(4) NOT NULL DEFAULT '0',
  `company_url` varchar(1024) NOT NULL,
  UNIQUE KEY `company_id` (`company_id`),
  UNIQUE KEY `company_name_idx` (`company_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

-- --------------------------------------------------------

--
-- Table structure for table `hn_hiring_company_jobs`
--

CREATE TABLE IF NOT EXISTS `hn_hiring_company_jobs` (
  `company_id` bigint(20) unsigned NOT NULL,
  `job_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `company_jobs_idx` (`company_id`,`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hn_hiring_company_locations`
--

CREATE TABLE IF NOT EXISTS `hn_hiring_company_locations` (
  `company_id` bigint(20) unsigned NOT NULL,
  `location_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `company_locations_idx` (`company_id`,`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hn_hiring_jobs`
--

CREATE TABLE IF NOT EXISTS `hn_hiring_jobs` (
  `job_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `job_title` varchar(255) NOT NULL,
  UNIQUE KEY `job_id` (`job_id`),
  UNIQUE KEY `job_title_idx` (`job_title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

-- --------------------------------------------------------

--
-- Table structure for table `hn_hiring_listings`
--

CREATE TABLE IF NOT EXISTS `hn_hiring_listings` (
  `listing_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `thread_id` bigint(20) unsigned NOT NULL,
  `listing_author` varchar(50) NOT NULL,
  `listing_email` varchar(255) NOT NULL,
  `listing_body` text NOT NULL,
  `listing_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `listing_is_processed` tinyint(4) NOT NULL DEFAULT '0',
  `listing_status` tinyint(4) NOT NULL DEFAULT '1',
  UNIQUE KEY `listing_id` (`listing_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7686517 ;

-- --------------------------------------------------------

--
-- Table structure for table `hn_hiring_listing_companies`
--

CREATE TABLE IF NOT EXISTS `hn_hiring_listing_companies` (
  `listing_id` bigint(20) unsigned NOT NULL,
  `company_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `listing_company_idx` (`listing_id`,`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hn_hiring_listing_jobs`
--

CREATE TABLE IF NOT EXISTS `hn_hiring_listing_jobs` (
  `listing_id` bigint(20) unsigned NOT NULL,
  `job_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `listing_job_idx` (`listing_id`,`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hn_hiring_listing_locations`
--

CREATE TABLE IF NOT EXISTS `hn_hiring_listing_locations` (
  `listing_id` bigint(20) unsigned NOT NULL,
  `location_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `listing_location_idx` (`listing_id`,`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hn_hiring_listing_tools`
--

CREATE TABLE IF NOT EXISTS `hn_hiring_listing_tools` (
  `listing_id` bigint(20) unsigned NOT NULL,
  `tool_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `listing_tool_idx` (`listing_id`,`tool_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hn_hiring_locations`
--

CREATE TABLE IF NOT EXISTS `hn_hiring_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_city` varchar(255) NOT NULL,
  `location_state` varchar(255) NOT NULL,
  `location_neighborhood` varchar(255) NOT NULL,
  `location_county` varchar(255) NOT NULL,
  `location_country` varchar(255) NOT NULL,
  UNIQUE KEY `location_id` (`location_id`),
  UNIQUE KEY `location_idx` (`location_city`(50),`location_state`(50),`location_neighborhood`(50),`location_county`(50),`location_country`(50))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

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

-- --------------------------------------------------------

--
-- Table structure for table `hn_hiring_tools`
--

CREATE TABLE IF NOT EXISTS `hn_hiring_tools` (
  `tool_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tool_name` varchar(255) NOT NULL,
  `tool_type` varchar(255) NOT NULL COMMENT 'Types can be various things: programming languages, databases, mobile, platforms, hosting (EC2), etc.',
  UNIQUE KEY `tool_id` (`tool_id`),
  UNIQUE KEY `name_and_type_idx` (`tool_name`,`tool_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
