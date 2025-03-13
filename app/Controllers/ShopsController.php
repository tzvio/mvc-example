<?php
namespace App\Controllers;

use App\Models\ShopModel;
use Core\View;

/**
 * Provides responses to REST api calls
 * for processing and displaying data from shops table
 * in case of GET, a json reponse will be provided
 * 
 * The endpoints are  set in core/routes.php
 */
class ShopsController  {

    private $shopModel, $view, $request;
    public function __construct()
    {
        $this->shopModel =  new ShopModel();
        $this->view      = new View();
        $this->request   = file_get_contents('php://input');
    }

    /**
     * Endpoint : /shops
     * Request Method: GET
     * Returns all data from shops
     * 
     */
    public function index() {
        $orderBy = $_GET['orderby'] ?? null;
        $direction = $_GET['direction'] ?? null;
        $shops = $this->shopModel->getAll($orderBy, $direction);
        $this->view->jsonResponse($shops);
    }

    /**
     * Endpoint: /shops/{id}
     * Request Method: GET
     * Return one shop by id
     */
    public function get($id) {
        $shop = $this->shopModel->getById($id);
        if (empty($shop)) {
            $this->view->notFoundReponse();
        } else {
            $this->view->jsonResponse($shop);
        }
    }

    /**
     * Endpoint: /shops
     * Request Method: POST
     * Create new shop
     * Data is needed to be provided in json format
     * Following this structure:
     * {
     *  shop_name: 'shop',
     *  shop_description: 'description',
     *  shop_address: 'address',
     *  shop_phone: 'phone',
     *  shop_email: 'email',
     *  shop_website: 'website',
     * }
     * shop_name field is obligatory 
     */
    public function create() {
        $data = json_decode($this->request);
        if (!isset($data->shop_name)) {
            $this->view->errorResponse();
        } else {
            $this->shopModel->create($data);
            $this->view->jsonResponse();
        }
    }

    /**
     * Endpoint: /shops/{id}
     * Request Method: PUT
     * Update shop by id
     * Data is needed to be provided in json format
     * Following this structure:
     * {
     *  shop_name: 'shop',
     *  shop_description: 'description',
     *  shop_address: 'address',
     *  shop_phone: 'phone',
     *  shop_email: 'email',
     *  shop_website: 'website',
     * }
     */    
    public function update($id){
        $data = json_decode($this->request);
        $this->shopModel->update($data, $id);
        $this->view->jsonResponse();
    }


    /**
     * Endpoint : /shops/{id}
     * Request Method: DELETE
     * delete shop by id
     * 
     */
    public function delete($id)  {
        $this->shopModel->delete($id);
        $this->view->jsonResponse();
    }



}