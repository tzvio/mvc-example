<?php
namespace App\Models;

use Core\Model;

/**
 * Provide database method to process data from shops table
 */
class ShopModel extends Model {
    private $db;

    public function __construct()
    {
        $this->db = Model::getDB();
    }
    
    /**
     * fetch all shops from shops table
     * optionally order by selected fields 
     * and set order direction
     */
    public function getAll($orderBy = null, $direction = null)  {
        $query = "SELECT * FROM shops";
        if (in_array($orderBy, ['shop_name', 'shop_description', 'shop_id'])) {
            $query .= " ORDER BY " . $orderBy;
        }
        if (in_array($direction, ['asc', 'desc'])) {
            $query .= " " . $direction;
        }
        $shops = $this->db->query($query);

        return $shops->fetchAll(\PDO::FETCH_ASSOC);
    }

    /**
     * get single shop by id
     */
    public function getById($id) {
        $sth = $this->db->prepare('SELECT * FROM shops WHERE shop_id = ?');
        $sth->execute([$id]);
        return $sth->fetchAll(\PDO::FETCH_ASSOC);
    }

    /**
     * create a new shop row
     */
    public function create($data) {
        $shop_name = $data->shop_name ?? '';
        $shop_description = $data->shop_description ?? '';
        $sth = $this->db->prepare('INSERT INTO shops(shop_name, shop_description) VALUES(?,?)');
        $sth->execute([$shop_name, $shop_description]);
    }

    /**
     * update a shop  name or description by id
     */
    public function update($data, $id)  {
        if (isset($data->shop_name) || isset($data->shop_description)) {
            if (!empty($data->shop_name)) {
                $sth = $this->db->prepare('UPDATE shops SET shop_name=? WHERE shop_id=?');
                $sth->execute([$data->shop_name, $id]); 
            }
            if (!empty($data->shop_description)) {
                $sth = $this->db->prepare('UPDATE shops SET shop_description=? WHERE shop_id=?');
                $sth->execute([$data->shop_description, $id]); 
            }
        }           
    }

    /**
     * delte a shop row by id
     */
    public function delete($id) {
        $sth = $this->db->prepare('DELETE FROM shops WHERE shop_id=?');
        $sth->execute([$id]); 
    }

}