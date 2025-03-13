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
        $shop_address = $data->shop_address ?? '';
        $shop_phone = $data->shop_phone ?? '';
        $shop_email = $data->shop_email ?? '';
        $shop_website = $data->shop_website ?? '';
        $sth = $this->db->prepare('INSERT INTO shops(shop_name, shop_description, shop_address, shop_phone, shop_email, shop_website) VALUES(?,?,?,?,?,?)');
        $sth->execute([$shop_name, $shop_description, $shop_address, $shop_phone, $shop_email, $shop_website]);
    }

    /**
     * update a shop  name or description by id
     */
    public function update($data, $id) {
        $fields = [];
        $values = [];
        if (!empty($data->shop_name)) {
            $fields[] = 'shop_name=?';
            $values[] = $data->shop_name;
        }
        if (!empty($data->shop_description)) {
            $fields[] = 'shop_description=?';
            $values[] = $data->shop_description;
        }
        if (!empty($data->shop_address)) {
            $fields[] = 'shop_address=?';
            $values[] = $data->shop_address;
        }
        if (!empty($data->shop_phone)) {
            $fields[] = 'shop_phone=?';
            $values[] = $data->shop_phone;
        }
        if (!empty($data->shop_email)) {
            $fields[] = 'shop_email=?';
            $values[] = $data->shop_email;
        }
        if (!empty($data->shop_website)) {
            $fields[] = 'shop_website=?';
            $values[] = $data->shop_website;
        }
        if (!empty($fields)) {
            $values[] = $id;
            $sth = $this->db->prepare('UPDATE shops SET ' . implode(', ', $fields) . ' WHERE shop_id=?');
            $sth->execute($values);
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