<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Product;
use App\Models\Symbol;
use App\Models\Order;
use App\Models\Item;
use App\Models\Customer;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        User::factory()->create([
            'name'     => 'Shop Admin',
            'email'    => 'test@example.com',
            'password' => 'Es2025!',
        ]);

        Customer::factory(6)->create();

        Product::factory()->create([
            'name' => 'cup-blue',
            'type' => 'accessories',
            'path' => 'cup-blue.png',
        ]);
        Product::factory()->create([
            'name' => 'cup-white',
            'type' => 'accessories',
            'path' => 'cup-white.png',
        ]);
        Product::factory()->create([
            'name' => 'cup-yellow',
            'type' => 'accessories',
            'path' => 'cup-yellow.png',
        ]);
        Product::factory()->create([
            'name' => 'tshirt-blue',
            'type' => 'tshirt',
            'path' => 'tshirt-blue.png',
        ]);
        Product::factory()->create([
            'name' => 'tshirt-white',
            'type' => 'tshirt',
            'path' => 'tshirt-white.png',
        ]);
        Product::factory()->create([
            'name' => 'tshirt-yellow',
            'type' => 'tshirt',
            'path' => 'tshirt-yellow.png',
        ]);

        Symbol::factory()->create([
            'path' => 'iconmonstr-american-football-2-240.png',
        ]);
        Symbol::factory()->create([
            'path' => 'iconmonstr-basketball-2-240.png',
        ]);
        Symbol::factory()->create([
            'path' => 'iconmonstr-candy-24-240.png',
        ]);
        Symbol::factory()->create([
            'path' => 'iconmonstr-construction-14-240.png',
        ]);
        Symbol::factory()->create([
            'path' => 'iconmonstr-construction-17-240.png',
        ]);
        Symbol::factory()->create([
            'path' => 'iconmonstr-control-panel-23-240.png',
        ]);
        Symbol::factory()->create([
            'path' => 'iconmonstr-crown-19-240.png',
        ]);
        Symbol::factory()->create([
            'path' => 'iconmonstr-fast-food-18-240.png',
        ]);
        Symbol::factory()->create([
            'path' => 'iconmonstr-keyboard-15-240.png',
        ]);
        Symbol::factory()->create([
            'path' => 'iconmonstr-marketing-4-240.png',
        ]);
        Symbol::factory()->create([
            'path' => 'iconmonstr-trash-can-28-240.png',
        ]);
        Symbol::factory()->create([
            'path' => 'iconmonstr-umbrella-15-240.png',
        ]);

        Order::factory(10)->create();

        Item::factory(25)->create();
    }
}
