-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2020 at 03:04 PM
-- Server version: 5.0.44sp1-enterprise-gpl-nt
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `filesharing-v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `cb_menus`
--

CREATE TABLE `cb_menus` (
  `id` int(10) UNSIGNED NOT NULL PRIMARY KEY auto_increment,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort_number` int(11) NOT NULL DEFAULT '0',
  `cb_modules_id` int(11) DEFAULT NULL,
  `parent_cb_menus_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cb_menus`
--

INSERT INTO `cb_menus` (`id`, `name`, `icon`, `path`, `type`, `sort_number`, `cb_modules_id`, `parent_cb_menus_id`) VALUES
(1, 'Files', NULL, NULL, 'module', 0, 1, NULL),
(2, 'Users', NULL, NULL, 'module', 0, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cb_modules`
--

CREATE TABLE `cb_modules` (
  `id` int(10) UNSIGNED NOT NULL PRIMARY KEY auto_increment,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_column_build` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cb_modules`
--

INSERT INTO `cb_modules` (`id`, `name`, `icon`, `table_name`, `controller`, `last_column_build`) VALUES
(1, 'Files', 'fa fa-hdd-o', 'files', 'AdminFilesController', '[{"column_label":"User ID","column_field":"userid","column_type":"select_table","column_file_encrypt":"on","column_image_width":null,"column_image_height":null,"column_option_table":"users","column_date_format":null,"column_text_display_limit":150,"column_text_max":255,"column_text_min":0,"column_money_prefix":null,"column_money_precision":null,"column_money_thousand_separator":null,"column_money_decimal_separator":null,"column_option_value":"id","column_option_display":"name","column_option_sql_condition":null,"column_options":[],"column_sql_query":null,"column_help":null,"column_mandatory":"on","column_browse":"on","column_detail":"on","column_edit":"on","column_add":"on","column_filterable":null,"column_foreign":null,"listTableColumns":[{"column":"id","primary_key":true,"display":false},{"column":"name","primary_key":false,"display":true},{"column":"email","primary_key":false,"display":false},{"column":"email_verified_at","primary_key":false,"display":false},{"column":"password","primary_key":false,"display":false},{"column":"remember_token","primary_key":false,"display":false},{"column":"created_at","primary_key":false,"display":false},{"column":"updated_at","primary_key":false,"display":false},{"column":"photo","primary_key":false,"display":false},{"column":"cb_roles_id","primary_key":false,"display":false},{"column":"ip_address","primary_key":false,"display":false},{"column":"user_agent","primary_key":false,"display":false},{"column":"login_at","primary_key":false,"display":false}]},{"column_label":"File","column_field":"file","column_type":"file","column_file_encrypt":"on","column_image_width":null,"column_image_height":null,"column_option_table":null,"column_date_format":null,"column_text_display_limit":150,"column_text_max":255,"column_text_min":0,"column_money_prefix":null,"column_money_precision":null,"column_money_thousand_separator":null,"column_money_decimal_separator":null,"column_option_value":null,"column_option_display":null,"column_option_sql_condition":null,"column_options":[],"column_sql_query":null,"column_help":null,"column_mandatory":"on","column_browse":"on","column_detail":"on","column_edit":"on","column_add":"on","column_filterable":null,"column_foreign":null,"listTableColumns":[]},{"column_label":"Created At","column_field":"created_at","column_type":"datetime","column_file_encrypt":"on","column_image_width":null,"column_image_height":null,"column_option_table":null,"column_date_format":null,"column_text_display_limit":150,"column_text_max":255,"column_text_min":0,"column_money_prefix":null,"column_money_precision":null,"column_money_thousand_separator":null,"column_money_decimal_separator":null,"column_option_value":null,"column_option_display":null,"column_option_sql_condition":null,"column_options":[],"column_sql_query":null,"column_help":null,"column_mandatory":null,"column_browse":"on","column_detail":"on","column_edit":null,"column_add":null,"column_filterable":null,"column_foreign":null,"listTableColumns":[]},{"column_label":"Updated At","column_field":"updated_at","column_type":"datetime","column_file_encrypt":"on","column_image_width":null,"column_image_height":null,"column_option_table":null,"column_date_format":null,"column_text_display_limit":150,"column_text_max":255,"column_text_min":0,"column_money_prefix":null,"column_money_precision":null,"column_money_thousand_separator":null,"column_money_decimal_separator":null,"column_option_value":null,"column_option_display":null,"column_option_sql_condition":null,"column_options":[],"column_sql_query":null,"column_help":null,"column_mandatory":null,"column_browse":false,"column_detail":"on","column_edit":null,"column_add":null,"column_filterable":null,"column_foreign":null,"listTableColumns":[]}]'),
(2, 'Users', 'fa fa-users', 'users', 'AdminUsersController', '[{"column_label":"Name","column_field":"name","column_type":"text","column_file_encrypt":"on","column_image_width":null,"column_image_height":null,"column_option_table":null,"column_date_format":null,"column_text_display_limit":150,"column_text_max":255,"column_text_min":0,"column_money_prefix":null,"column_money_precision":null,"column_money_thousand_separator":null,"column_money_decimal_separator":null,"column_option_value":null,"column_option_display":null,"column_option_sql_condition":null,"column_options":[],"column_sql_query":null,"column_help":null,"column_mandatory":"on","column_browse":"on","column_detail":"on","column_edit":"on","column_add":"on","column_filterable":null,"column_foreign":null,"listTableColumns":[]},{"column_label":"Email","column_field":"email","column_type":"email","column_file_encrypt":"on","column_image_width":null,"column_image_height":null,"column_option_table":null,"column_date_format":null,"column_text_display_limit":150,"column_text_max":255,"column_text_min":0,"column_money_prefix":null,"column_money_precision":null,"column_money_thousand_separator":null,"column_money_decimal_separator":null,"column_option_value":null,"column_option_display":null,"column_option_sql_condition":null,"column_options":[],"column_sql_query":null,"column_help":null,"column_mandatory":"on","column_browse":"on","column_detail":"on","column_edit":"on","column_add":"on","column_filterable":null,"column_foreign":null,"listTableColumns":[]},{"column_label":"Email Verified At","column_field":"email_verified_at","column_type":"datetime","column_file_encrypt":"on","column_image_width":null,"column_image_height":null,"column_option_table":null,"column_date_format":null,"column_text_display_limit":150,"column_text_max":255,"column_text_min":0,"column_money_prefix":null,"column_money_precision":null,"column_money_thousand_separator":null,"column_money_decimal_separator":null,"column_option_value":null,"column_option_display":null,"column_option_sql_condition":null,"column_options":[],"column_sql_query":null,"column_help":null,"column_mandatory":false,"column_browse":false,"column_detail":false,"column_edit":false,"column_add":false,"column_filterable":null,"column_foreign":null,"listTableColumns":[]},{"column_label":"Password","column_field":"password","column_type":"password","column_file_encrypt":"on","column_image_width":null,"column_image_height":null,"column_option_table":null,"column_date_format":null,"column_text_display_limit":150,"column_text_max":255,"column_text_min":0,"column_money_prefix":null,"column_money_precision":null,"column_money_thousand_separator":null,"column_money_decimal_separator":null,"column_option_value":null,"column_option_display":null,"column_option_sql_condition":null,"column_options":[],"column_sql_query":null,"column_help":null,"column_mandatory":"on","column_browse":false,"column_detail":false,"column_edit":"on","column_add":"on","column_filterable":null,"column_foreign":null,"listTableColumns":[]},{"column_label":"Remember Token","column_field":"remember_token","column_type":"text","column_file_encrypt":"on","column_image_width":null,"column_image_height":null,"column_option_table":null,"column_date_format":null,"column_text_display_limit":150,"column_text_max":255,"column_text_min":0,"column_money_prefix":null,"column_money_precision":null,"column_money_thousand_separator":null,"column_money_decimal_separator":null,"column_option_value":null,"column_option_display":null,"column_option_sql_condition":null,"column_options":[],"column_sql_query":null,"column_help":null,"column_mandatory":false,"column_browse":false,"column_detail":false,"column_edit":false,"column_add":false,"column_filterable":null,"column_foreign":null,"listTableColumns":[]},{"column_label":"Created At","column_field":"created_at","column_type":"datetime","column_file_encrypt":"on","column_image_width":null,"column_image_height":null,"column_option_table":null,"column_date_format":null,"column_text_display_limit":150,"column_text_max":255,"column_text_min":0,"column_money_prefix":null,"column_money_precision":null,"column_money_thousand_separator":null,"column_money_decimal_separator":null,"column_option_value":null,"column_option_display":null,"column_option_sql_condition":null,"column_options":[],"column_sql_query":null,"column_help":null,"column_mandatory":null,"column_browse":true,"column_detail":"on","column_edit":null,"column_add":null,"column_filterable":null,"column_foreign":null,"listTableColumns":[]},{"column_label":"Updated At","column_field":"updated_at","column_type":"datetime","column_file_encrypt":"on","column_image_width":null,"column_image_height":null,"column_option_table":null,"column_date_format":null,"column_text_display_limit":150,"column_text_max":255,"column_text_min":0,"column_money_prefix":null,"column_money_precision":null,"column_money_thousand_separator":null,"column_money_decimal_separator":null,"column_option_value":null,"column_option_display":null,"column_option_sql_condition":null,"column_options":[],"column_sql_query":null,"column_help":null,"column_mandatory":null,"column_browse":false,"column_detail":"on","column_edit":null,"column_add":null,"column_filterable":null,"column_foreign":null,"listTableColumns":[]},{"column_label":"Photo","column_field":"photo","column_type":"image","column_file_encrypt":"on","column_image_width":null,"column_image_height":null,"column_option_table":null,"column_date_format":null,"column_text_display_limit":150,"column_text_max":255,"column_text_min":0,"column_money_prefix":null,"column_money_precision":null,"column_money_thousand_separator":null,"column_money_decimal_separator":null,"column_option_value":null,"column_option_display":null,"column_option_sql_condition":null,"column_options":[],"column_sql_query":null,"column_help":null,"column_mandatory":false,"column_browse":"on","column_detail":"on","column_edit":"on","column_add":true,"column_filterable":null,"column_foreign":null,"listTableColumns":[]},{"column_label":"Role","column_field":"cb_roles_id","column_type":"select_table","column_file_encrypt":"on","column_image_width":null,"column_image_height":null,"column_option_table":"cb_roles","column_date_format":null,"column_text_display_limit":150,"column_text_max":255,"column_text_min":0,"column_money_prefix":null,"column_money_precision":null,"column_money_thousand_separator":null,"column_money_decimal_separator":null,"column_option_value":"id","column_option_display":"name","column_option_sql_condition":null,"column_options":[],"column_sql_query":null,"column_help":null,"column_mandatory":"on","column_browse":"on","column_detail":"on","column_edit":"on","column_add":"on","column_filterable":null,"column_foreign":null,"listTableColumns":[{"column":"id","primary_key":true,"display":false},{"column":"name","primary_key":false,"display":true}]},{"column_label":"Ip Address","column_field":"ip_address","column_type":"text","column_file_encrypt":"on","column_image_width":null,"column_image_height":null,"column_option_table":null,"column_date_format":null,"column_text_display_limit":150,"column_text_max":255,"column_text_min":0,"column_money_prefix":null,"column_money_precision":null,"column_money_thousand_separator":null,"column_money_decimal_separator":null,"column_option_value":null,"column_option_display":null,"column_option_sql_condition":null,"column_options":[],"column_sql_query":null,"column_help":null,"column_mandatory":false,"column_browse":false,"column_detail":"on","column_edit":false,"column_add":false,"column_filterable":null,"column_foreign":null,"listTableColumns":[]},{"column_label":"User Agent","column_field":"user_agent","column_type":"text","column_file_encrypt":"on","column_image_width":null,"column_image_height":null,"column_option_table":null,"column_date_format":null,"column_text_display_limit":150,"column_text_max":255,"column_text_min":0,"column_money_prefix":null,"column_money_precision":null,"column_money_thousand_separator":null,"column_money_decimal_separator":null,"column_option_value":null,"column_option_display":null,"column_option_sql_condition":null,"column_options":[],"column_sql_query":null,"column_help":null,"column_mandatory":false,"column_browse":false,"column_detail":false,"column_edit":false,"column_add":false,"column_filterable":null,"column_foreign":null,"listTableColumns":[]},{"column_label":"Login At","column_field":"login_at","column_type":"datetime","column_file_encrypt":"on","column_image_width":null,"column_image_height":null,"column_option_table":null,"column_date_format":null,"column_text_display_limit":150,"column_text_max":255,"column_text_min":0,"column_money_prefix":null,"column_money_precision":null,"column_money_thousand_separator":null,"column_money_decimal_separator":null,"column_option_value":null,"column_option_display":null,"column_option_sql_condition":null,"column_options":[],"column_sql_query":null,"column_help":null,"column_mandatory":false,"column_browse":false,"column_detail":"on","column_edit":false,"column_add":false,"column_filterable":null,"column_foreign":null,"listTableColumns":[]}]');

-- --------------------------------------------------------

--
-- Table structure for table `cb_roles`
--

CREATE TABLE `cb_roles` (
  `id` int(10) UNSIGNED NOT NULL PRIMARY KEY auto_increment,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cb_roles`
--

INSERT INTO `cb_roles` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `cb_role_privileges`
--

CREATE TABLE `cb_role_privileges` (
  `id` int(10) UNSIGNED NOT NULL PRIMARY KEY auto_increment,
  `cb_roles_id` int(11) NOT NULL,
  `cb_menus_id` int(11) NOT NULL,
  `can_browse` tinyint(4) NOT NULL DEFAULT '1',
  `can_create` tinyint(4) NOT NULL DEFAULT '1',
  `can_read` tinyint(4) NOT NULL DEFAULT '1',
  `can_update` tinyint(4) NOT NULL DEFAULT '1',
  `can_delete` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cb_role_privileges`
--

INSERT INTO `cb_role_privileges` (`id`, `cb_roles_id`, `cb_menus_id`, `can_browse`, `can_create`, `can_read`, `can_update`, `can_delete`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1),
(2, 2, 1, 1, 1, 1, 1, 1),
(3, 1, 2, 1, 1, 1, 1, 1),
(4, 2, 2, 0, 0, 0, 0, 0),
(5, 3, 1, 0, 0, 0, 0, 0),
(6, 3, 2, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL PRIMARY KEY auto_increment,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8_unicode_ci,
  `responses` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL PRIMARY KEY auto_increment,
  `screetkey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL PRIMARY KEY auto_increment,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL PRIMARY KEY auto_increment,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8_unicode_ci,
  `email_attachments` text COLLATE utf8_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL PRIMARY KEY auto_increment,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2020-03-02 12:41:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL PRIMARY KEY auto_increment,
  `ipaddress` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-03-02 12:43:37', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2020-03/avatar_01.png</td></tr><tr><td>email</td><td>admin@crudbooster.com</td><td>admin@admin.com</td></tr><tr><td>password</td><td>$2y$10$FSWZMps01X6PqMK2KQOQ0uhf2NkVPQ//QYGzXvhybd6Zv4XgIbN6e</td><td>$2y$10$5mUfpUThzDSLAAZ1NEHCp.gSTbIEpDk6QJHh6SBLbstQqq2lR8fAO</td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2020-03-02 12:43:58', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@admin.com logout', '', 1, '2020-03-02 12:44:05', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 1, '2020-03-02 12:44:13', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>email</td><td>admin@admin.com</td><td>super@admin.com</td></tr><tr><td>password</td><td>$2y$10$5mUfpUThzDSLAAZ1NEHCp.gSTbIEpDk6QJHh6SBLbstQqq2lR8fAO</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2020-03-02 12:48:56', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data Admin at Users Management', '', 1, '2020-03-02 12:49:25', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'super@admin.com logout', '', 1, '2020-03-02 12:49:34', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 2, '2020-03-02 12:49:39', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@admin.com logout', '', 2, '2020-03-02 12:49:51', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'super@admin.com login with IP Address 127.0.0.1', '', 1, '2020-03-02 12:49:57', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Users Management at Menu Management', '', 1, '2020-03-02 12:50:47', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data Users Management at Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-03-02 12:50:55', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'super@admin.com logout', '', 1, '2020-03-02 12:51:02', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 2, '2020-03-02 12:51:06', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@admin.com logout', '', 2, '2020-03-02 12:51:19', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'super@admin.com login with IP Address 127.0.0.1', '', 1, '2020-03-02 12:51:27', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/files/edit-save/44', 'Update data  at Files', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>Catatanku txt</td><td>Catatanku</td></tr></tbody></table>', 1, '2020-03-02 12:57:36', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/files/delete/47', 'Delete data 47 at Files', '', 1, '2020-03-02 12:57:46', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Update data Files at Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>', 1, '2020-03-02 13:02:50', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data Users Management at Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-03-02 13:03:24', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/files/edit-save/46', 'Update data  at Files', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>userid</td><td>3</td><td>2</td></tr></tbody></table>', 1, '2020-03-02 13:03:41', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/files/edit-save/46', 'Update data  at Files', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-03-02 13:07:29', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/files/edit-save/46', 'Update data  at Files', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>file</td><td></td><td>uploads/1/2020-03/avatar_03.png</td></tr></tbody></table>', 1, '2020-03-02 13:12:10', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'super@admin.com logout', '', 1, '2020-03-02 13:15:16', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 2, '2020-03-02 13:15:25', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 2, '2020-03-02 22:19:09', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'siamangaja@gmail.com login with IP Address 127.0.0.1', '', 3, '2020-03-02 23:01:36', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 2, '2020-03-02 23:12:25', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 2, '2020-03-02 23:34:29', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@admin.com logout', '', 2, '2020-03-02 23:35:24', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 2, '2020-03-02 23:50:50', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/files/delete/25', 'Delete data 25 at Files', '', 2, '2020-03-02 23:51:14', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'super@admin.com login with IP Address 127.0.0.1', '', 1, '2020-03-03 00:07:24', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/1', 'Delete data Users Management at Menu Management', '', 1, '2020-03-03 00:07:36', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/users-management/add-save', 'Add New Data  at Users Management', '', 1, '2020-03-03 00:22:01', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/users-management/delete/17', 'Delete data 17 at Users Management', '', 1, '2020-03-03 00:25:17', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/users-management/add-save', 'Add New Data  at Users Management', '', 1, '2020-03-03 00:25:30', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/users-management/delete/18', 'Delete data 18 at Users Management', '', 1, '2020-03-03 00:25:37', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/users/delete/3', 'Delete data Siamangaja at Users Management', '', 1, '2020-03-03 00:27:23', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'super@admin.com logout', '', 1, '2020-03-03 00:27:34', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 2, '2020-03-03 00:27:45', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@admin.com logout', '', 2, '2020-03-03 00:27:54', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'super@admin.com login with IP Address 127.0.0.1', '', 1, '2020-03-03 00:28:01', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/3', 'Update data Users Management at Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-03-03 00:28:18', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'super@admin.com logout', '', 1, '2020-03-03 00:28:24', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 2, '2020-03-03 00:28:40', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/users-management', 'Try view the data :name at Users Management', '', 2, '2020-03-03 00:28:43', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/users-management', 'Try view the data :name at Users Management', '', 2, '2020-03-03 00:28:46', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@admin.com logout', '', 2, '2020-03-03 00:28:54', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'super@admin.com login with IP Address 127.0.0.1', '', 1, '2020-03-03 00:29:07', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'super@admin.com logout', '', 1, '2020-03-03 00:29:35', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 2, '2020-03-03 00:29:42', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@admin.com logout', '', 2, '2020-03-03 00:30:31', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 2, '2020-03-03 00:30:39', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/files/delete/31', 'Delete data 31 at Files', '', 2, '2020-03-03 00:52:24', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/files/delete/18', 'Delete data 18 at Files', '', 2, '2020-03-03 00:57:52', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/files/delete/19', 'Delete data 19 at Files', '', 2, '2020-03-03 00:58:31', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/files/delete/20', 'Delete data 20 at Files', '', 2, '2020-03-03 00:59:03', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/files/delete/30', 'Delete data 30 at Files', '', 2, '2020-03-03 01:02:50', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/files/delete/34', 'Delete data 34 at Files', '', 2, '2020-03-03 01:04:57', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/files/edit-save/53', 'Update data  at Files', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>file</td><td>KK.pdf</td><td>uploads/KK.pdf</td></tr><tr><td>description</td><td>kk</td><td>File kk</td></tr></tbody></table>', 2, '2020-03-03 01:17:05', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 2, '2020-03-03 01:41:33', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/files/delete/54', 'Delete data 54 at Files', '', 2, '2020-03-03 01:43:02', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 2, '2020-03-03 13:44:45', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/files/edit-save/245', 'Update data  at Files', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>slug</td><td>c54f0076eb1</td><td></td></tr><tr><td>description</td><td></td><td>123</td></tr></tbody></table>', 2, '2020-03-03 13:47:22', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/users-management/edit-save/16', 'Update data  at Users Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$IohmC4VgiyMGqlN2iDKBHuIbT63yyoGpeyfjclzu2K1kMG58v9jH2</td><td>$2y$10$gGeUXvs8eFuBfnZXxvgIAusUA6iZQDnJmPw7Xde0y60veZAbX6xIm</td></tr><tr><td>remember_token</td><td>AZCrcbDDhsKPbbicUwZezOQnHbkJ95U75LpubNbSVRnRLnkRQdwbQ4HSsYNV</td><td></td></tr><tr><td>email_verified_at</td><td></td><td></td></tr><tr><td>user_agent</td><td></td><td></td></tr><tr><td>ip_address</td><td></td><td></td></tr><tr><td>login_at</td><td></td><td></td></tr></tbody></table>', 2, '2020-03-03 13:48:57', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@admin.com logout', '', 2, '2020-03-03 13:49:13', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'super@admin.com login with IP Address 127.0.0.1', '', 1, '2020-03-03 13:49:35', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'super@admin.com logout', '', 1, '2020-03-03 13:50:29', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 2, '2020-03-03 13:50:34', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/users-management/edit-save/16', 'Update data  at Users Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$gGeUXvs8eFuBfnZXxvgIAusUA6iZQDnJmPw7Xde0y60veZAbX6xIm</td><td></td></tr><tr><td>remember_token</td><td>AZCrcbDDhsKPbbicUwZezOQnHbkJ95U75LpubNbSVRnRLnkRQdwbQ4HSsYNV</td><td></td></tr><tr><td>email_verified_at</td><td></td><td></td></tr><tr><td>user_agent</td><td></td><td></td></tr><tr><td>ip_address</td><td></td><td></td></tr><tr><td>login_at</td><td></td><td></td></tr></tbody></table>', 2, '2020-03-03 13:50:52', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@admin.com logout', '', 2, '2020-03-03 13:58:00', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'super@admin.com login with IP Address 127.0.0.1', '', 1, '2020-03-03 13:58:11', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'super@admin.com logout', '', 1, '2020-03-03 13:58:38', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 2, '2020-03-03 13:58:43', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@admin.com logout', '', 2, '2020-03-03 13:59:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL PRIMARY KEY auto_increment,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(2, 'Files', 'Route', 'AdminFilesControllerGetIndex', 'normal', 'fa fa-archive', 0, 1, 0, 1, 1, '2020-03-02 12:52:20', '2020-03-02 13:02:50'),
(3, 'Users Management', 'Route', 'AdminUsersManagementControllerGetIndex', 'normal', 'fa fa-users', 0, 1, 0, 1, 2, '2020-03-03 00:09:21', '2020-03-03 00:28:18');

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL PRIMARY KEY auto_increment,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, NULL, 2),
(4, 2, 2),
(5, 2, 1),
(6, 1, 2),
(7, 1, 1),
(9, 3, 2),
(10, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL PRIMARY KEY auto_increment,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2020-03-02 12:41:28', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2020-03-02 12:41:28', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2020-03-02 12:41:28', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2020-03-02 12:41:28', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2020-03-02 12:41:28', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2020-03-02 12:41:28', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2020-03-02 12:41:28', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2020-03-02 12:41:28', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2020-03-02 12:41:28', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2020-03-02 12:41:28', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2020-03-02 12:41:28', NULL, NULL),
(12, 'Files', 'fa fa-archive', 'files', 'files', 'AdminFilesController', 0, 0, '2020-03-02 12:52:20', NULL, NULL),
(13, 'Users Management', 'fa fa-users', 'users-management', 'users', 'AdminUsersManagementController', 0, 0, '2020-03-03 00:09:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL PRIMARY KEY auto_increment,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL PRIMARY KEY auto_increment,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-blue', '2020-03-02 12:41:28', NULL),
(2, 'Admin', 0, 'skin-green', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL PRIMARY KEY auto_increment,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 4, NULL, NULL),
(3, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(6, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(7, 1, 1, 1, 1, 1, 2, 12, NULL, NULL),
(8, 0, 0, 0, 1, 0, 2, 4, NULL, NULL),
(9, 1, 1, 1, 1, 1, 2, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL PRIMARY KEY auto_increment,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2020-03-02 12:41:28', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2020-03-02 12:41:28', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2020-03-02 12:41:28', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'admin@admin.com', 'text', NULL, NULL, '2020-03-02 12:41:28', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2020-03-02 12:41:28', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2020-03-02 12:41:28', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2020-03-02 12:41:28', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2020-03-02 12:41:28', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2020-03-02 12:41:28', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'File Sharing', 'text', NULL, NULL, '2020-03-02 12:41:28', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2020-03-02 12:41:28', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2020-03/ce37442eb2a05d5c5240af854cbe32a4.png', 'upload_image', NULL, NULL, '2020-03-02 12:41:28', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2020-03/a40afefa3e3cbdce40920e9edfd79716.png', 'upload_image', NULL, NULL, '2020-03-02 12:41:28', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2020-03-02 12:41:28', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', '', 'text', NULL, NULL, '2020-03-02 12:41:28', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', '', 'text', NULL, NULL, '2020-03-02 12:41:28', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL PRIMARY KEY auto_increment,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL PRIMARY KEY auto_increment,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL PRIMARY KEY auto_increment,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `email`, `password`, `photo`, `status`, `remember_token`, `id_cms_privileges`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'super@admin.com', '$2y$10$5mUfpUThzDSLAAZ1NEHCp.gSTbIEpDk6QJHh6SBLbstQqq2lR8fAO', 'uploads/1/2020-03/avatar_01.png', 'Active', NULL, 1, '2020-03-02 12:41:28', '2020-03-02 12:48:56'),
(2, 'Admin', 'admin@admin.com', '$2y$10$J3VkcvY.xwx.D6djwH6XxO.etCtyS1xi.TCEnERuVIgkSpvb1daoK', 'uploads/1/2020-03/avatar_03.png', 'Active', 'uo130cEiByDW1eacnMVABOxVWqilkv5tYlYBYr92gcx4Zz5iciVDoqf8YvNC', 2, '2020-03-02 12:49:25', '2020-03-02 22:49:57');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL PRIMARY KEY auto_increment,
  `slug` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(12) DEFAULT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `slug`, `userid`, `file`, `type`, `size`, `description`, `created_at`, `updated_at`) VALUES
(224, '611994129d3', 2, 'KMSAuto Net 2015 1.4.0.rar', 'application/x-rar', 3401851, 'MSAuto Net ', '2020-03-03 08:50:45', '2020-03-03 10:00:10'),
(225, '7bbfd671c9a', 2, '05 Happy Asmara - Dalan Liyane.mp3', 'audio/mpeg', 4226357, 'Happy Asmara - Dalan Liyane', '2020-03-03 08:51:07', '2020-03-03 10:00:03'),
(226, '207db4794e2', 2, '10 Nella Kharisma - Bila Cinta Bicara.mp3', 'audio/mpeg', 6360431, 'Nella Kharisma - Bila Cinta Bicara', '2020-03-03 08:51:20', '2020-03-03 10:00:18'),
(228, 'b3fb6f7c93c', 2, 'SURAT PERJANJIAN JUAL BELI TANAH.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 20473, 'Surat Perjanjian', '2020-03-03 10:00:58', NULL),
(229, '1e9e2b67073', 2, 'pinguin.jpg', 'image/jpeg', 56617, '', '2020-03-03 10:01:51', NULL),
(231, '0ab0c380c68', 3, 'img5.jpg', 'image/jpeg', 294024, 'IMG 5', '2020-03-03 10:03:16', '2020-03-03 10:15:01'),
(233, 'de7f56f20b4', 3, 'logoA.png', 'image/png', 114526, 'Logo versi A', '2020-03-03 10:03:33', '2020-03-03 10:15:14'),
(234, '782849eb780', 3, 'JJR Cairo Aqso Amman 2018.pdf', 'application/pdf', 705352, '', '2020-03-03 10:26:12', NULL),
(235, '864f00016d8', 3, 'tulips-at-keukenhof.jpg', 'image/jpeg', 428676, 'tulips', '2020-03-03 10:40:03', '2020-03-03 10:50:39'),
(236, 'c96f7cb34f0', 3, 'Paris.jpg', 'image/jpeg', 299242, 'Paris', '2020-03-03 10:48:45', NULL),
(239, '8f71c5533fa', NULL, 'Tour ANDALUSIA 2018.pdf', 'application/pdf', 580525, '', '2020-03-03 10:51:15', NULL),
(240, 'fc02d7597c3', 7, 'eropa2.jpg', 'image/jpeg', 35594, '', '2020-03-03 10:53:47', NULL),
(241, 'd23d301849a', 7, 'Tour Eropa Barat Keukenhof 10D7N - 2018.pdf', 'application/pdf', 754157, '', '2020-03-03 12:40:32', NULL),
(242, '2e1f9dbacc0', 7, 'Tour ANDALUSIA 2018.pdf', 'application/pdf', 580525, 'Tour', '2020-03-03 12:40:57', '2020-03-03 13:22:35'),
(244, 'e5526d427ef', 7, 'Pamit by Tulus (Cover by Langit).mp3', 'audio/mpeg', 6464503, '', '2020-03-03 13:40:32', NULL),
(245, 'c54f0076eb1', 7, 'Ada Cinta by Acha Septriasa ft. Irwansyah (Cover by Langit ft. Shahrizki).mp3', 'audio/mpeg', 6956650, '123', '2020-03-03 13:43:35', '2020-03-03 13:47:22');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL PRIMARY KEY auto_increment,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_08_07_152421_modify_users', 1),
(4, '2016_08_07_152421_table_menus', 1),
(5, '2016_08_07_152421_table_modules', 1),
(6, '2016_08_07_152421_table_role_privileges', 1),
(7, '2016_08_07_152421_table_roles', 1),
(8, '2020_03_01_122755_files', 2),
(9, '2016_08_07_145904_add_table_cms_apicustom', 3),
(10, '2016_08_07_150834_add_table_cms_dashboard', 3),
(11, '2016_08_07_151210_add_table_cms_logs', 3),
(12, '2016_08_07_151211_add_details_cms_logs', 3),
(13, '2016_08_07_152014_add_table_cms_privileges', 3),
(14, '2016_08_07_152214_add_table_cms_privileges_roles', 3),
(15, '2016_08_07_152320_add_table_cms_settings', 3),
(16, '2016_08_07_152421_add_table_cms_users', 3),
(17, '2016_08_07_154624_add_table_cms_menus_privileges', 3),
(18, '2016_08_07_154624_add_table_cms_moduls', 3),
(19, '2016_08_17_225409_add_status_cms_users', 3),
(20, '2016_08_20_125418_add_table_cms_notifications', 3),
(21, '2016_09_04_033706_add_table_cms_email_queues', 3),
(22, '2016_09_16_035347_add_group_setting', 3),
(23, '2016_09_16_045425_add_label_setting', 3),
(24, '2016_09_17_104728_create_nullable_cms_apicustom', 3),
(25, '2016_10_01_141740_add_method_type_apicustom', 3),
(26, '2016_10_01_141846_add_parameters_apicustom', 3),
(27, '2016_10_01_141934_add_responses_apicustom', 3),
(28, '2016_10_01_144826_add_table_apikey', 3),
(29, '2016_11_14_141657_create_cms_menus', 3),
(30, '2016_11_15_132350_create_cms_email_templates', 3),
(31, '2016_11_15_190410_create_cms_statistics', 3),
(32, '2016_11_17_102740_create_cms_statistic_components', 3),
(33, '2017_06_06_164501_add_deleted_at_cms_moduls', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL PRIMARY KEY auto_increment,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cb_roles_id` int(11) NOT NULL DEFAULT '2',
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `cb_roles_id`, `photo`, `remember_token`, `email_verified_at`, `user_agent`, `ip_address`, `login_at`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$9nhKYcpf/DjDEtuNMGtEfecL3WxK5hzGBqiXxNqHXRWwO1kSW1pZe', 1, 'storage/files/blank_profile.jpg', 'QNawehn22UJjQWy2O6BxpuUogTU5xdjmSac5fbT2He7sUJv8pocZifDetUR3', NULL, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '127.0.0.1', '2020-03-02 02:29:13', '2020-03-01 01:21:36', '2020-03-03 08:39:28'),
(2, 'User', 'user@user.com', '$2y$10$lEPaj83c12s67mrRKUnJte8R1wv99iuRLD/EghJHR4cfbtmcRbdgq', 2, 'storage/files/blank_profile.jpg', 'tCiFONYyiE8XRzHFfXs9JvXsMm3cEu33xIdqcU1mPFcfEnh9RZ0XAZvQI7us', NULL, NULL, NULL, NULL, '2020-03-01 02:27:18', '2020-03-03 10:02:28'),
(3, 'Demo Akun', 'demo@demo.com', '$2y$10$5ixsFRwWbBzkTJbUWTX/pONE9VZdB1OYK75YP4eLY/h.PIqBXJjm6', 2, 'storage/files/blank_profile.jpg', 'pHQxuQU6DCUQ4sinsyDpDVNR4mTwzk4XDG7RxJXGBFND1WCqMKQd76Spl2RA', NULL, NULL, NULL, NULL, '2020-03-01 06:12:55', '2020-03-03 10:51:10'),
(7, 'siamangaja', 'siamangaja@gmail.com', '$2y$10$6P5raYM/sSi4ilH64f8YGOZ922Nxpw0HcMu8K7O8GJ8tRQgc.PIGG', 2, 'storage/files/blank_profile.jpg', 'v6T9KQqQDzCCZIWTKvlA4S611NkIt86bDz9a6AXYsRVBGl32ywjFs0MaWIzp', NULL, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '127.0.0.1', '2020-03-02 02:31:31', '2020-03-01 15:14:16', '2020-03-03 13:44:33'),
(16, 'Aku', 'aku@aku.com', '$2y$10$gGeUXvs8eFuBfnZXxvgIAusUA6iZQDnJmPw7Xde0y60veZAbX6xIm', 2, 'storage/files/blank_profile.jpg', 'AZCrcbDDhsKPbbicUwZezOQnHbkJ95U75LpubNbSVRnRLnkRQdwbQ4HSsYNV', NULL, NULL, NULL, NULL, '2020-03-02 23:33:17', '2020-03-03 13:50:52');

--
-- Indexes for dumped tables
--

ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `users_email_unique` (`email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;