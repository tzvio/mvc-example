<?php

use PHPUnit\Framework\TestCase;
use GuzzleHttp\Client;

class ApiTest extends TestCase
{
    private $client;
    private $firstShopId;
    private $allShopsResponse;

    protected function setUp(): void
    {
        $this->client = new Client([
            'base_uri' => 'http://localhost:8000', 
            'http_errors' => false
        ]);

        $this->allShopsResponse = $this->client->get('shops');
        $data = json_decode($this->allShopsResponse->getBody(), true);
        $this->firstShopId = $data[0]['shop_id'] ?? null;
    }

    public function testGetAllShops()
    {
        $response = $this->allShopsResponse;        
        $this->assertEquals(200, $response->getStatusCode());
        $data = json_decode($response->getBody(), true);
        $this->assertIsArray($data);
    }

    public function testGetShopById()
    {
        $this->assertNotNull($this->firstShopId, 'No shop ID available for testing.');

        $response = $this->client->get("shops/{$this->firstShopId}");
        $this->assertEquals(200, $response->getStatusCode());
        $shop = json_decode($response->getBody(), true);
        $this->assertIsArray($shop);
        $this->assertArrayHasKey('shop_id', $shop);
    }

    public function testCreateShop()
    {
        $response = $this->client->post('shops', [
            'json' => [
                'shop_name' => 'Test Shop',
                'shop_description' => 'Test Description',
                'shop_address' => 'Test Address',
                'shop_phone' => '1234567890',
                'shop_email' => 'test@example.com',
                'shop_website' => 'http://example.com'
            ]
        ]);
        $this->assertEquals(201, $response->getStatusCode());
    }

    public function testUpdateShop()
    {
        $this->assertNotNull($this->firstShopId, 'No shop ID available for testing.');

        $response = $this->client->put("shops/{$this->firstShopId}", [
            'json' => [
                'shop_name' => 'Updated Shop',
                'shop_description' => 'Updated Description'
            ]
        ]);
        $this->assertEquals(200, $response->getStatusCode());
    }

    public function testDeleteShop()
    {
        $this->assertNotNull($this->firstShopId, 'No shop ID available for testing.');

        $response = $this->client->delete("shops/{$this->firstShopId}");
        $this->assertEquals(200, $response->getStatusCode());
    }
}