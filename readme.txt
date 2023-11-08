WSHOP api store exercise.
=========================

This is an example app , which provide REST api with CRUD actions 
(Create , Read, Update , Delete) for a list of shops.


Requirements:
-------------
PHP, MYSQL SERVER, WEB server(apache/nginx/PHP internal )

Installation:
-------------
1. Import Mysql dump database from the file - wshop_api_store.sql
2. Set your database config (host, username, password, db name) in config/config.php
3. setup web server with root directory on public , 
   or run PHP internal server inside public directory: PHP -S 127.0.0.1:8000 

Usage
-----
There several endpoints exist, and the correct request method should be used:
/shops (GET) - return all shops
optionaly - add ?sortby=[field_name]&orderby=[direction] 

/shops/id (GET) - return one shop
/shops (POST) - create new shop , json body required 
with two text fields: shop_name , shop_description
/shops/id (PUT)  - update a shop , json body required
/shops/id (DELETE) - delete a shop


Framework information
---------------------
This app is based on a basic MVC framework .
/public
index.php - starting point , includes required files and dispatch route
/Core
Model.php provides database access
Router.php - providing routing functionality , matches url to a controller and action and parameters
routes.php - list of custom created routes
View.php - provide json output and required headers for the REST api output
/config/config.php - database config
/app - application files
/app/controllers/ShopController.php - only control , handle all REST api calls
/app/models/ShopModel.php - runs the required queries for all the CRUD actions

