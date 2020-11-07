<?php

use App\Category;
// use Faker\Generator as Faker;

// use Faker\Generator as Faker;
use Illuminate\Database\Eloquent\Factory;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class CategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    // $faker->image('public/media/category',400,300)
    public function run()
    {
      $faker = Faker\Factory::create();
      $categories = ['Amazon Music','Echo & Alexa','Fire Tablets','Fire TV','Kindle E-readers & Books','Appstore for Android','Subscribe & Save','Smart Home','Amazon Physical Stores','Amazon Subscription Boxes','Amazon Live','International Shopping','Pet supplies','Sports and Outdoors','Baby','Automotive','Arts & Crafts','Beauty and personal care','Computers','Electronics','Womens Fashion','Mens Fashion','Girls Fashion','Boys Fashion','Health and Household','Home and Kitchen','Industrial and Scientific','Luggage','Movies & Television','Software','Tools & Home Improvement','Toys and Games','Video Games'];

      foreach (range(1,1) as $index) {
        $category =$faker->name;
        foreach ($categories as $category) {
          Category::create([
            'name' => $category,
            'slug' => Str::slug($category),
            'icon' => '',
            'image' => '',
          ]);
        }
      }
    }
}
