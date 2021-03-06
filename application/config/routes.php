<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'general';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

$route['login'] = 'login/index';
$route['logout'] = 'login/logout';

// ADMIN
$route['dashboard'] = 'dashboard';
$route['register_account'] = 'admin/register_account';
$route['list_relawan'] = 'dashboard/list_relawan';
$route['upload_relawan'] = 'general/upload_relawan';
$route['upload_pemilih_tetap'] = 'admin/input_pemilih_tetap';
$route['hapus/(:num)'] = 'dashboard/hapus/$1';
$route['edit/(:num)'] = 'dashboard/edit/$1';
$route['edit_temp/(:num)'] = 'dashboard/edit_relawan_temp/$1';
$route['hapus_temp/(:num)'] = 'dashboard/hapus_temp/$1';
$route['update_relawan'] = 'dashboard/update_relawan';
$route['upload_kpu'] = 'dashboard/upload_kpu';
$route['upload_relawan'] = 'dashboard/upload_relawan';
$route['data/import'] = 'dashboard/import';
$route['data/import_relawan'] = 'dashboard/import_relawan';
$route['moreinfo_bekasi'] = 'dashboard/moreinfo_Bekasi';
$route['moreinfo_depok'] = 'dashboard/moreinfo_Depok';