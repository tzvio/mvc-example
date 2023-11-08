<?php
namespace Core;

/**
 * Provide reponse to REST API call
 * In case of GET, the data provided in json format
 * In Other cases a header will be provided matching the case
 */
class View {
    const RESPONSE_STATUS_OK = 'HTTP/1.1 200 OK';
    const RESPONSE_STATUS_CREATED = 'HTTP/1.1 201 Created';
    const RESPONSE_NOT_FOUND =  'HTTP/1.1 404 Not Found';
    const RESPONSE_ERROR    = 'HTTP/1.1 422 Unprocessable Entity';

    public function __construct() {
        header("Content-Type: application/json; charset=UTF-8");
    }

    public function jsonResponse($data = null) {
        $requestMethod = $_SERVER["REQUEST_METHOD"];
        $response['body'] = null;
        if ($requestMethod == 'GET' && is_array($data)) {
            $response['body'] = json_encode($data); 
        }
        if (in_array($requestMethod,['GET', 'PUT', 'DELETE']) ){
            $response['status_code_header'] = self::RESPONSE_STATUS_OK;
        } elseif ($requestMethod == 'POST'){
            $response['status_code_header'] = self::RESPONSE_STATUS_CREATED;
        } else {
            $response['status_code_header'] = self::RESPONSE_NOT_FOUND;
        }
        header($response['status_code_header']);
        if ($response['body']) {
            echo $response['body'];
        }
    }

    public function notFoundReponse() {
        header(self::RESPONSE_NOT_FOUND);
    }

    public function errorResponse() {
        header(self::RESPONSE_ERROR);
    }


}