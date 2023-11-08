<?php
/**
 * Set routes with matching controller and action
 * usage:
 * addRoute(url , request method, controller class, controller action)
 * url can have optional parameter with curly brackets - /foo/{bar}
 */
use Core\Router;
$router = new Router();
$router->addRoute('/shops', 'GET', \App\Controllers\ShopsController::class,  'index');
$router->addRoute('/shops/{id}', 'GET', \App\Controllers\ShopsController::class,  'get');
$router->addRoute('/shops', 'POST', \App\Controllers\ShopsController::class,  'create');
$router->addRoute('/shops/{id}', 'PUT', \App\Controllers\ShopsController::class,  'update');
$router->addRoute('/shops/{id}', 'DELETE', \App\Controllers\ShopsController::class,  'delete');



