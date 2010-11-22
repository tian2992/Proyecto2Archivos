<?php

define('DS', DIRECTORY_SEPARATOR);
define('ROOT', dirname(dirname(__FILE__)));

//http://stackoverflow.com/questions/505338/get-and-url-rewriting-for-php
//var_dump($_GET);

$url = "homePage";
if ($_GET!=NULL){
  $url = $_GET['url'];
}

require_once (ROOT . DS . 'lib' . DS . 'classLoader.php');

