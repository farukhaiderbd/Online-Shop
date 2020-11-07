<?php

use Illuminate\Database\Seeder;
use App\Subcategory;

// use Faker\Generator as Faker;
use Illuminate\Database\Eloquent\Factory;
use Illuminate\Support\Str;

class SubcategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      $faker = Faker\Factory::create();
        $categories = ['Car Care','Car Electronics & Accessories','Exterior Accessories','Interior Accessories','Lights & Lighting Accessories','Motorcycle & Powersports','Oils & Fluids','Paint & Paint Supplies','Performance Parts & Accessories','Replacement Parts','RV Parts & Accessories','Tires & Wheels','Tools & Equipment','Automotive Enthusiast Merchandise','Heavy Duty & Commercial Vehicle Equipment','Clothing','Shoes','Watches','Accessories','Womens Fashion','Girls Fashion',
        'Boys Fashion','Carryons','Backpacks','Garment bags','Travel Totes','Luggage Sets','Laptop Bags','Suitcases','Kids Luggage','Messenger Bags','Umbrellas','Duffles','Travel Accessories','Clothing','Shoes','Jewelry','Watches','Accessories','School Uniforms','Womens Fashion','Mens Fashion','Girls Fashion','Baby & Child Care','Health Care','Household Supplies','Medical Supplies & Equipment','Oral Care','Personal Care','Sexual Wellness','Sports Nutrition','Stationery & Gift Wrapping Supplies','Vision Care','Vitamins & Dietary Supplements','Wellness & Relaxation','Computer Accessories & Peripherals','Computer Components','Computers & Tablets','Data Storage','External Components','Laptop Accessories','Monitors','Networking Products','Power Strips & Surge Protectors','Printers','Scanners','Servers','Tablet Accessories','Tablet Replacement Parts','Warranties & Services','Accessories & Supplies','Camera & Photo','Car & Vehicle Electronics','Cell Phones & Accessories','Computers & Accessories','GPS & Navigation','Headphones','Home Audio','Office Electronics','Portable Audio & Video','Security & Surveillance','Service Plans','Television & Video','Video Game Consoles & Accessories','Video Projectors','Wearable Technology','eBook Readers & Accessories','Activity & Entertainment','Apparel & Accessories','Baby & Toddler Toys','Baby Care','Baby Stationery','Car Seats & Accessories','Diapering','Feeding','Gifts','Nursery','Potty Training','Pregnancy & Maternity','Safety','Strollers & Accessories','Travel Gear'];

      foreach (range(1, 1) as $index) {
        $category =$faker->name;
        foreach ($categories as $category) {
          Subcategory::create([
            'category_id' => random_int(1, 25),
            'name' => $category,
            'slug' => Str::slug($category),
            'icon' => '',
            'image' => '',
          ]);
        }
      }
    }
}
