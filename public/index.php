<?php
require dirname(__DIR__) . '/vendor/autoload.php';
require dirname(__DIR__) . '/config/config.php';
require dirname(__DIR__) . '/core/routes.php';
$router->dispatch();