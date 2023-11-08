<?php
namespace Core;

/**
 * Prodive url to controller action routing 
 */
class Router {
    protected $routes = [];

    public function addRoute($route, $requestMethod,  $controller, $action) {
        $this->routes[$route][$requestMethod] = ['controller' => $controller, 'action' => $action];
    }

    /**
     * Call the controller and action matched to uri set by addRouter()
     */
    public function dispatch() {
        $uri = strtok($_SERVER['REQUEST_URI'], '?');
    
        $requestMethod = $_SERVER["REQUEST_METHOD"];
        $uriParam = $this->getUriParam($uri);
        // Check if url contains parameters
        // Match url with parameters to route
        if ($uriParam) {
            foreach ($this->routes as $route => $values) {
                if ($this->matchUriToRoute($uri, $route)){
                    $uri = $route;
                }
            }
        }
        
        if (is_array($this->routes[$uri][$requestMethod])) {
            $controller = $this->routes[$uri][$requestMethod]['controller'];
            $action = $this->routes[$uri][$requestMethod]['action'];
            $controller = new $controller();
            $controller->$action($uriParam);
        } else {
            throw new \Exception("No route found for URI: $uri");
        }
    }

    /**
     * Fetch the provided parameter from url
     */
    private function getUriParam($uri) {
        preg_match('/\/.+\/(.+)/', $uri, $matches);
        $param = "";
        if (isset($matches[1])) {
	        $param = $matches[1];
        }
        return $param;
    }

    /**
     * Generate regex pattern for route
     * to match with url with parameters
     */
    private function generateRoutePattern($uri) {
        preg_match('/\/(.+)\/(.+)/', $uri, $matches);
        if (count($matches) == 3) {
            $pattern = "\/" . $matches[1] . "\/" . "\\{.*\\}";
            return $pattern;
        }
        return false;
    }

    /**
     * Match uri with paremters to route pattern
     * return true with match found
     */
    private function matchUriToRoute($uri, $route)
    {
        $pattern = $this->generateRoutePattern($uri);
        if ($pattern) {
            $match = preg_match('/' . $pattern . '/', $route);
            return $match;
        }
        return false;
    }



}