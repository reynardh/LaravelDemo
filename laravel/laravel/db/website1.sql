-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2017 at 10:22 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `website1`
--

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE IF NOT EXISTS `backups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `file_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backup_size` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `backups_name_unique` (`name`),
  UNIQUE KEY `backups_file_name_unique` (`file_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `departments_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `tags`, `color`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Administration', '[]', '#000', NULL, '2017-01-20 01:33:08', '2017-01-20 01:33:08');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `designation` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Male',
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mobile2` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dept` int(10) unsigned NOT NULL DEFAULT '1',
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_birth` date NOT NULL DEFAULT '1990-01-01',
  `date_hire` date NOT NULL,
  `date_left` date NOT NULL DEFAULT '1990-01-01',
  `salary_cur` decimal(15,3) NOT NULL DEFAULT '0.000',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employees_email_unique` (`email`),
  KEY `employees_dept_foreign` (`dept`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `gender`, `mobile`, `mobile2`, `email`, `dept`, `city`, `address`, `about`, `date_birth`, `date_hire`, `date_left`, `salary_cur`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Super Admin', 'Male', '8888888888', '', 'admin@gmail.com', 1, 'Pune', 'Karve nagar, Pune 411030', 'About user / biography', '2017-01-20', '2017-01-20', '2017-01-20', '0.000', NULL, '2017-01-20 01:34:11', '2017-01-20 01:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `la_configs`
--

CREATE TABLE IF NOT EXISTS `la_configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `la_configs`
--

INSERT INTO `la_configs` (`id`, `key`, `section`, `value`, `created_at`, `updated_at`) VALUES
(1, 'sitename', '', 'LaraAdmin 1.0', '2017-01-20 01:33:09', '2017-01-20 01:33:09'),
(2, 'sitename_part1', '', 'Lara', '2017-01-20 01:33:10', '2017-01-20 01:33:10'),
(3, 'sitename_part2', '', 'Admin 1.0', '2017-01-20 01:33:10', '2017-01-20 01:33:10'),
(4, 'sitename_short', '', 'LA', '2017-01-20 01:33:10', '2017-01-20 01:33:10'),
(5, 'site_description', '', 'LaraAdmin is a open-source Laravel Admin Panel for quick-start Admin based applications and boilerplate for CRM or CMS systems.', '2017-01-20 01:33:10', '2017-01-20 01:33:10'),
(6, 'sidebar_search', '', '1', '2017-01-20 01:33:10', '2017-01-20 01:33:10'),
(7, 'show_messages', '', '1', '2017-01-20 01:33:10', '2017-01-20 01:33:10'),
(8, 'show_notifications', '', '1', '2017-01-20 01:33:10', '2017-01-20 01:33:10'),
(9, 'show_tasks', '', '1', '2017-01-20 01:33:10', '2017-01-20 01:33:10'),
(10, 'show_rightsidebar', '', '1', '2017-01-20 01:33:10', '2017-01-20 01:33:10'),
(11, 'skin', '', 'skin-white', '2017-01-20 01:33:10', '2017-01-20 01:33:10'),
(12, 'layout', '', 'fixed', '2017-01-20 01:33:10', '2017-01-20 01:33:10'),
(13, 'default_email', '', 'test@example.com', '2017-01-20 01:33:10', '2017-01-20 01:33:10');

-- --------------------------------------------------------

--
-- Table structure for table `la_menus`
--

CREATE TABLE IF NOT EXISTS `la_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'module',
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `hierarchy` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `la_menus`
--

INSERT INTO `la_menus` (`id`, `name`, `url`, `icon`, `type`, `parent`, `hierarchy`, `created_at`, `updated_at`) VALUES
(7, 'Organizations', 'organizations', 'fa-university', 'module', 0, 0, '2017-01-20 01:33:07', '2017-01-20 01:33:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_05_26_050000_create_modules_table', 1),
('2014_05_26_055000_create_module_field_types_table', 1),
('2014_05_26_060000_create_module_fields_table', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_12_01_000000_create_uploads_table', 1),
('2016_05_26_064006_create_departments_table', 1),
('2016_05_26_064007_create_employees_table', 1),
('2016_05_26_064446_create_roles_table', 1),
('2016_07_05_115343_create_role_user_table', 1),
('2016_07_06_140637_create_organizations_table', 1),
('2016_07_07_134058_create_backups_table', 1),
('2016_07_07_134058_create_menus_table', 1),
('2016_09_10_163337_create_permissions_table', 1),
('2016_09_10_163520_create_permission_role_table', 1),
('2016_09_22_105958_role_module_fields_table', 1),
('2016_09_22_110008_role_module_table', 1),
('2016_10_06_115413_create_la_configs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_db` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `view_col` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fa_icon` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `is_gen` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `label`, `name_db`, `view_col`, `model`, `controller`, `fa_icon`, `is_gen`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'Users', 'users', 'name', 'User', 'UsersController', 'fa-group', 1, '2017-01-20 01:32:40', '2017-01-20 01:33:10'),
(2, 'Uploads', 'Uploads', 'uploads', 'name', 'Upload', 'UploadsController', 'fa-files-o', 1, '2017-01-20 01:32:42', '2017-01-20 01:33:10'),
(3, 'Departments', 'Departments', 'departments', 'name', 'Department', 'DepartmentsController', 'fa-tags', 1, '2017-01-20 01:32:44', '2017-01-20 01:33:11'),
(4, 'Employees', 'Employees', 'employees', 'name', 'Employee', 'EmployeesController', 'fa-group', 1, '2017-01-20 01:32:45', '2017-01-20 01:33:11'),
(5, 'Roles', 'Roles', 'roles', 'name', 'Role', 'RolesController', 'fa-user-plus', 1, '2017-01-20 01:32:48', '2017-01-20 01:33:11'),
(6, 'Organizations', 'Organizations', 'organizations', 'name', 'Organization', 'OrganizationsController', 'fa-university', 1, '2017-01-20 01:32:54', '2017-01-20 01:33:11'),
(7, 'Backups', 'Backups', 'backups', 'name', 'Backup', 'BackupsController', 'fa-hdd-o', 1, '2017-01-20 01:32:55', '2017-01-20 01:33:11'),
(8, 'Permissions', 'Permissions', 'permissions', 'name', 'Permission', 'PermissionsController', 'fa-magic', 1, '2017-01-20 01:32:57', '2017-01-20 01:33:11');

-- --------------------------------------------------------

--
-- Table structure for table `module_fields`
--

CREATE TABLE IF NOT EXISTS `module_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `colname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `module` int(10) unsigned NOT NULL,
  `field_type` int(10) unsigned NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT '0',
  `defaultvalue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `minlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `popup_vals` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module_fields_module_foreign` (`module`),
  KEY `module_fields_field_type_foreign` (`field_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=52 ;

--
-- Dumping data for table `module_fields`
--

INSERT INTO `module_fields` (`id`, `colname`, `label`, `module`, `field_type`, `unique`, `defaultvalue`, `minlength`, `maxlength`, `required`, `popup_vals`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'name', 'Name', 1, 16, 0, '', 5, 250, 1, '', 0, '2017-01-20 01:32:40', '2017-01-20 01:32:40'),
(2, 'context_id', 'Context', 1, 13, 0, '0', 0, 0, 0, '', 0, '2017-01-20 01:32:40', '2017-01-20 01:32:40'),
(3, 'email', 'Email', 1, 8, 1, '', 0, 250, 0, '', 0, '2017-01-20 01:32:40', '2017-01-20 01:32:40'),
(4, 'password', 'Password', 1, 17, 0, '', 6, 250, 1, '', 0, '2017-01-20 01:32:41', '2017-01-20 01:32:41'),
(5, 'type', 'User Type', 1, 7, 0, 'Employee', 0, 0, 0, '["Employee","Client"]', 0, '2017-01-20 01:32:41', '2017-01-20 01:32:41'),
(6, 'name', 'Name', 2, 16, 0, '', 5, 250, 1, '', 0, '2017-01-20 01:32:42', '2017-01-20 01:32:42'),
(7, 'path', 'Path', 2, 19, 0, '', 0, 250, 0, '', 0, '2017-01-20 01:32:42', '2017-01-20 01:32:42'),
(8, 'extension', 'Extension', 2, 19, 0, '', 0, 20, 0, '', 0, '2017-01-20 01:32:42', '2017-01-20 01:32:42'),
(9, 'caption', 'Caption', 2, 19, 0, '', 0, 250, 0, '', 0, '2017-01-20 01:32:42', '2017-01-20 01:32:42'),
(10, 'user_id', 'Owner', 2, 7, 0, '1', 0, 0, 0, '@users', 0, '2017-01-20 01:32:43', '2017-01-20 01:32:43'),
(11, 'hash', 'Hash', 2, 19, 0, '', 0, 250, 0, '', 0, '2017-01-20 01:32:43', '2017-01-20 01:32:43'),
(12, 'public', 'Is Public', 2, 2, 0, '0', 0, 0, 0, '', 0, '2017-01-20 01:32:43', '2017-01-20 01:32:43'),
(13, 'name', 'Name', 3, 16, 1, '', 1, 250, 1, '', 0, '2017-01-20 01:32:44', '2017-01-20 01:32:44'),
(14, 'tags', 'Tags', 3, 20, 0, '[]', 0, 0, 0, '', 0, '2017-01-20 01:32:44', '2017-01-20 01:32:44'),
(15, 'color', 'Color', 3, 19, 0, '', 0, 50, 1, '', 0, '2017-01-20 01:32:44', '2017-01-20 01:32:44'),
(16, 'name', 'Name', 4, 16, 0, '', 5, 250, 1, '', 0, '2017-01-20 01:32:46', '2017-01-20 01:32:46'),
(17, 'designation', 'Designation', 4, 19, 0, '', 0, 50, 1, '', 0, '2017-01-20 01:32:46', '2017-01-20 01:32:46'),
(18, 'gender', 'Gender', 4, 18, 0, 'Male', 0, 0, 1, '["Male","Female"]', 0, '2017-01-20 01:32:46', '2017-01-20 01:32:46'),
(19, 'mobile', 'Mobile', 4, 14, 0, '', 10, 20, 1, '', 0, '2017-01-20 01:32:46', '2017-01-20 01:32:46'),
(20, 'mobile2', 'Alternative Mobile', 4, 14, 0, '', 10, 20, 0, '', 0, '2017-01-20 01:32:46', '2017-01-20 01:32:46'),
(21, 'email', 'Email', 4, 8, 1, '', 5, 250, 1, '', 0, '2017-01-20 01:32:46', '2017-01-20 01:32:46'),
(22, 'dept', 'Department', 4, 7, 0, '0', 0, 0, 1, '@departments', 0, '2017-01-20 01:32:46', '2017-01-20 01:32:46'),
(23, 'city', 'City', 4, 19, 0, '', 0, 50, 0, '', 0, '2017-01-20 01:32:46', '2017-01-20 01:32:46'),
(24, 'address', 'Address', 4, 1, 0, '', 0, 1000, 0, '', 0, '2017-01-20 01:32:46', '2017-01-20 01:32:46'),
(25, 'about', 'About', 4, 19, 0, '', 0, 0, 0, '', 0, '2017-01-20 01:32:46', '2017-01-20 01:32:46'),
(26, 'date_birth', 'Date of Birth', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2017-01-20 01:32:46', '2017-01-20 01:32:46'),
(27, 'date_hire', 'Hiring Date', 4, 4, 0, 'date(''Y-m-d'')', 0, 0, 0, '', 0, '2017-01-20 01:32:46', '2017-01-20 01:32:46'),
(28, 'date_left', 'Resignation Date', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2017-01-20 01:32:46', '2017-01-20 01:32:46'),
(29, 'salary_cur', 'Current Salary', 4, 6, 0, '0.0', 0, 2, 0, '', 0, '2017-01-20 01:32:46', '2017-01-20 01:32:46'),
(30, 'name', 'Name', 5, 16, 1, '', 1, 250, 1, '', 0, '2017-01-20 01:32:48', '2017-01-20 01:32:48'),
(31, 'display_name', 'Display Name', 5, 19, 0, '', 0, 250, 1, '', 0, '2017-01-20 01:32:48', '2017-01-20 01:32:48'),
(32, 'description', 'Description', 5, 21, 0, '', 0, 1000, 0, '', 0, '2017-01-20 01:32:48', '2017-01-20 01:32:48'),
(33, 'parent', 'Parent Role', 5, 7, 0, '1', 0, 0, 0, '@roles', 0, '2017-01-20 01:32:48', '2017-01-20 01:32:48'),
(34, 'dept', 'Department', 5, 7, 0, '1', 0, 0, 0, '@departments', 0, '2017-01-20 01:32:49', '2017-01-20 01:32:49'),
(35, 'name', 'Name', 6, 16, 1, '', 5, 250, 1, '', 0, '2017-01-20 01:32:54', '2017-01-20 01:32:54'),
(36, 'email', 'Email', 6, 8, 1, '', 0, 250, 0, '', 0, '2017-01-20 01:32:54', '2017-01-20 01:32:54'),
(37, 'phone', 'Phone', 6, 14, 0, '', 0, 20, 0, '', 0, '2017-01-20 01:32:54', '2017-01-20 01:32:54'),
(38, 'website', 'Website', 6, 23, 0, 'http://', 0, 250, 0, '', 0, '2017-01-20 01:32:54', '2017-01-20 01:32:54'),
(39, 'assigned_to', 'Assigned to', 6, 7, 0, '0', 0, 0, 0, '@employees', 0, '2017-01-20 01:32:54', '2017-01-20 01:32:54'),
(40, 'connect_since', 'Connected Since', 6, 4, 0, 'date(''Y-m-d'')', 0, 0, 0, '', 0, '2017-01-20 01:32:54', '2017-01-20 01:32:54'),
(41, 'address', 'Address', 6, 1, 0, '', 0, 1000, 1, '', 0, '2017-01-20 01:32:54', '2017-01-20 01:32:54'),
(42, 'city', 'City', 6, 19, 0, '', 0, 250, 1, '', 0, '2017-01-20 01:32:54', '2017-01-20 01:32:54'),
(43, 'description', 'Description', 6, 21, 0, '', 0, 1000, 0, '', 0, '2017-01-20 01:32:54', '2017-01-20 01:32:54'),
(44, 'profile_image', 'Profile Image', 6, 12, 0, '', 0, 250, 0, '', 0, '2017-01-20 01:32:54', '2017-01-20 01:32:54'),
(45, 'profile', 'Company Profile', 6, 9, 0, '', 0, 250, 0, '', 0, '2017-01-20 01:32:54', '2017-01-20 01:32:54'),
(46, 'name', 'Name', 7, 16, 1, '', 0, 250, 1, '', 0, '2017-01-20 01:32:56', '2017-01-20 01:32:56'),
(47, 'file_name', 'File Name', 7, 19, 1, '', 0, 250, 1, '', 0, '2017-01-20 01:32:56', '2017-01-20 01:32:56'),
(48, 'backup_size', 'File Size', 7, 19, 0, '0', 0, 10, 1, '', 0, '2017-01-20 01:32:56', '2017-01-20 01:32:56'),
(49, 'name', 'Name', 8, 16, 1, '', 1, 250, 1, '', 1, '2017-01-20 01:32:57', '2017-01-20 01:32:57'),
(50, 'display_name', 'Display Name', 8, 19, 0, '', 0, 250, 1, '', 2, '2017-01-20 01:32:57', '2017-01-20 01:32:57'),
(51, 'description', 'Description', 8, 21, 0, '', 0, 1000, 0, '', 3, '2017-01-20 01:32:57', '2017-01-20 01:32:57');

-- --------------------------------------------------------

--
-- Table structure for table `module_field_types`
--

CREATE TABLE IF NOT EXISTS `module_field_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=25 ;

--
-- Dumping data for table `module_field_types`
--

INSERT INTO `module_field_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Address', '2017-01-20 01:32:39', '2017-01-20 01:32:39'),
(2, 'Checkbox', '2017-01-20 01:32:39', '2017-01-20 01:32:39'),
(3, 'Currency', '2017-01-20 01:32:39', '2017-01-20 01:32:39'),
(4, 'Date', '2017-01-20 01:32:39', '2017-01-20 01:32:39'),
(5, 'Datetime', '2017-01-20 01:32:39', '2017-01-20 01:32:39'),
(6, 'Decimal', '2017-01-20 01:32:39', '2017-01-20 01:32:39'),
(7, 'Dropdown', '2017-01-20 01:32:39', '2017-01-20 01:32:39'),
(8, 'Email', '2017-01-20 01:32:39', '2017-01-20 01:32:39'),
(9, 'File', '2017-01-20 01:32:39', '2017-01-20 01:32:39'),
(10, 'Float', '2017-01-20 01:32:39', '2017-01-20 01:32:39'),
(11, 'HTML', '2017-01-20 01:32:39', '2017-01-20 01:32:39'),
(12, 'Image', '2017-01-20 01:32:39', '2017-01-20 01:32:39'),
(13, 'Integer', '2017-01-20 01:32:39', '2017-01-20 01:32:39'),
(14, 'Mobile', '2017-01-20 01:32:39', '2017-01-20 01:32:39'),
(15, 'Multiselect', '2017-01-20 01:32:39', '2017-01-20 01:32:39'),
(16, 'Name', '2017-01-20 01:32:39', '2017-01-20 01:32:39'),
(17, 'Password', '2017-01-20 01:32:39', '2017-01-20 01:32:39'),
(18, 'Radio', '2017-01-20 01:32:39', '2017-01-20 01:32:39'),
(19, 'String', '2017-01-20 01:32:39', '2017-01-20 01:32:39'),
(20, 'Taginput', '2017-01-20 01:32:39', '2017-01-20 01:32:39'),
(21, 'Textarea', '2017-01-20 01:32:39', '2017-01-20 01:32:39'),
(22, 'TextField', '2017-01-20 01:32:39', '2017-01-20 01:32:39'),
(23, 'URL', '2017-01-20 01:32:39', '2017-01-20 01:32:39'),
(24, 'Files', '2017-01-20 01:32:39', '2017-01-20 01:32:39');

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE IF NOT EXISTS `organizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'http://',
  `assigned_to` int(10) unsigned NOT NULL DEFAULT '1',
  `connect_since` date NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `profile_image` int(11) NOT NULL,
  `profile` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `organizations_name_unique` (`name`),
  UNIQUE KEY `organizations_email_unique` (`email`),
  KEY `organizations_assigned_to_foreign` (`assigned_to`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `name`, `email`, `phone`, `website`, `assigned_to`, `connect_since`, `address`, `city`, `description`, `profile_image`, `profile`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'laravel', 'laravel@gmail.com', '123456789', 'https://www.google.co.in', 1, '1970-01-01', 'laravel admin', 'dubai', '', 0, 0, NULL, '2017-01-20 03:49:09', '2017-01-20 03:49:09'),
(2, 'adminadmin 123', 'adminadmin@gmail.com', '123456789 123', 'https://www.google.co.in', 1, '1970-01-01', 'adminadmin 123', 'adminadmin 123', 'adminadmin 123', 0, 0, '2017-01-20 03:51:35', '2017-01-20 03:50:55', '2017-01-20 03:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN_PANEL', 'Admin Panel', 'Admin Panel Permission', NULL, '2017-01-20 01:33:09', '2017-01-20 01:33:09');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(10) unsigned NOT NULL DEFAULT '1',
  `dept` int(10) unsigned NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`),
  KEY `roles_parent_foreign` (`parent`),
  KEY `roles_dept_foreign` (`dept`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `parent`, `dept`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'SUPER_ADMIN', 'Super Admin', 'Full Access Role', 1, 1, NULL, '2017-01-20 01:33:08', '2017-01-20 01:33:08');

-- --------------------------------------------------------

--
-- Table structure for table `role_module`
--

CREATE TABLE IF NOT EXISTS `role_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `module_id` int(10) unsigned NOT NULL,
  `acc_view` tinyint(1) NOT NULL,
  `acc_create` tinyint(1) NOT NULL,
  `acc_edit` tinyint(1) NOT NULL,
  `acc_delete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_module_role_id_foreign` (`role_id`),
  KEY `role_module_module_id_foreign` (`module_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `role_module`
--

INSERT INTO `role_module` (`id`, `role_id`, `module_id`, `acc_view`, `acc_create`, `acc_edit`, `acc_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(2, 1, 2, 1, 1, 1, 1, '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(3, 1, 3, 1, 1, 1, 1, '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(4, 1, 4, 1, 1, 1, 1, '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(5, 1, 5, 1, 1, 1, 1, '2017-01-20 01:33:09', '2017-01-20 01:33:09'),
(6, 1, 6, 1, 1, 1, 1, '2017-01-20 01:33:09', '2017-01-20 01:33:09'),
(7, 1, 7, 1, 1, 1, 1, '2017-01-20 01:33:09', '2017-01-20 01:33:09'),
(8, 1, 8, 1, 1, 1, 1, '2017-01-20 01:33:09', '2017-01-20 01:33:09');

-- --------------------------------------------------------

--
-- Table structure for table `role_module_fields`
--

CREATE TABLE IF NOT EXISTS `role_module_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `field_id` int(10) unsigned NOT NULL,
  `access` enum('invisible','readonly','write') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_module_fields_role_id_foreign` (`role_id`),
  KEY `role_module_fields_field_id_foreign` (`field_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=52 ;

--
-- Dumping data for table `role_module_fields`
--

INSERT INTO `role_module_fields` (`id`, `role_id`, `field_id`, `access`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(2, 1, 2, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(3, 1, 3, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(4, 1, 4, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(5, 1, 5, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(6, 1, 6, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(7, 1, 7, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(8, 1, 8, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(9, 1, 9, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(10, 1, 10, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(11, 1, 11, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(12, 1, 12, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(13, 1, 13, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(14, 1, 14, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(15, 1, 15, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(16, 1, 16, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(17, 1, 17, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(18, 1, 18, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(19, 1, 19, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(20, 1, 20, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(21, 1, 21, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(22, 1, 22, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(23, 1, 23, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(24, 1, 24, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(25, 1, 25, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(26, 1, 26, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(27, 1, 27, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(28, 1, 28, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(29, 1, 29, 'write', '2017-01-20 01:33:08', '2017-01-20 01:33:08'),
(30, 1, 30, 'write', '2017-01-20 01:33:09', '2017-01-20 01:33:09'),
(31, 1, 31, 'write', '2017-01-20 01:33:09', '2017-01-20 01:33:09'),
(32, 1, 32, 'write', '2017-01-20 01:33:09', '2017-01-20 01:33:09'),
(33, 1, 33, 'write', '2017-01-20 01:33:09', '2017-01-20 01:33:09'),
(34, 1, 34, 'write', '2017-01-20 01:33:09', '2017-01-20 01:33:09'),
(35, 1, 35, 'write', '2017-01-20 01:33:09', '2017-01-20 01:33:09'),
(36, 1, 36, 'write', '2017-01-20 01:33:09', '2017-01-20 01:33:09'),
(37, 1, 37, 'write', '2017-01-20 01:33:09', '2017-01-20 01:33:09'),
(38, 1, 38, 'write', '2017-01-20 01:33:09', '2017-01-20 01:33:09'),
(39, 1, 39, 'write', '2017-01-20 01:33:09', '2017-01-20 01:33:09'),
(40, 1, 40, 'write', '2017-01-20 01:33:09', '2017-01-20 01:33:09'),
(41, 1, 41, 'write', '2017-01-20 01:33:09', '2017-01-20 01:33:09'),
(42, 1, 42, 'write', '2017-01-20 01:33:09', '2017-01-20 01:33:09'),
(43, 1, 43, 'write', '2017-01-20 01:33:09', '2017-01-20 01:33:09'),
(44, 1, 44, 'write', '2017-01-20 01:33:09', '2017-01-20 01:33:09'),
(45, 1, 45, 'write', '2017-01-20 01:33:09', '2017-01-20 01:33:09'),
(46, 1, 46, 'write', '2017-01-20 01:33:09', '2017-01-20 01:33:09'),
(47, 1, 47, 'write', '2017-01-20 01:33:09', '2017-01-20 01:33:09'),
(48, 1, 48, 'write', '2017-01-20 01:33:09', '2017-01-20 01:33:09'),
(49, 1, 49, 'write', '2017-01-20 01:33:09', '2017-01-20 01:33:09'),
(50, 1, 50, 'write', '2017-01-20 01:33:09', '2017-01-20 01:33:09'),
(51, 1, 51, 'write', '2017-01-20 01:33:09', '2017-01-20 01:33:09');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  KEY `role_user_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE IF NOT EXISTS `uploads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '1',
  `hash` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uploads_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `name`, `path`, `extension`, `caption`, `user_id`, `hash`, `public`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Agron Miloti.jpg', 'D:\\PHP\\htdocs\\website1\\storage\\uploads\\2017-01-20-070942-Agron Miloti.jpg', 'jpg', '', 1, '122ta4s5b4eel0okmefy', 0, NULL, '2017-01-20 01:39:42', '2017-01-20 01:39:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `context_id` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Employee',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `context_id`, `email`, `password`, `type`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'admin', 1, 'admin@gmail.com', '$2y$10$xk2UQD1GCU6thJ6dTKiY..iSMbjIwdj5jNfk9zgzUPVvx.NLyX.We', 'Employee', NULL, NULL, '2017-01-20 01:34:11', '2017-01-20 01:34:11');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`);

--
-- Constraints for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD CONSTRAINT `module_fields_field_type_foreign` FOREIGN KEY (`field_type`) REFERENCES `module_field_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `module_fields_module_foreign` FOREIGN KEY (`module`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `organizations`
--
ALTER TABLE `organizations`
  ADD CONSTRAINT `organizations_assigned_to_foreign` FOREIGN KEY (`assigned_to`) REFERENCES `employees` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `roles_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `roles` (`id`);

--
-- Constraints for table `role_module`
--
ALTER TABLE `role_module`
  ADD CONSTRAINT `role_module_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD CONSTRAINT `role_module_fields_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `module_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_fields_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uploads`
--
ALTER TABLE `uploads`
  ADD CONSTRAINT `uploads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
