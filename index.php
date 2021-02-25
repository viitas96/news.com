<?php
// FRONT CONTROLLER

// 1COMMON SETINGS
ini_set('display_errors', 1);
error_reporting(E_ALL);

// 2 connect system files
// define('ROOT', dirname(__FILE__));
require_once('components/Autoload.php');
// 4 Call Router
$router = new Router;
$router->run();