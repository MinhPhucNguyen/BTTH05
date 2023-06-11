<?php

namespace Database\Seeders;

use App\Models\Author;
use App\Models\Category;
use App\Models\Song;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class SongTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();
        for($i = 0 ; $i < 30; $i++){
            Song::create([
                'title' => $faker->sentence(5, true),
                'song_name' => $faker->sentence(3, true),
                'category_id' => $faker->numberBetween(1,10),
                'summary' => $faker->paragraph,
                'content' => $faker->paragraph,
                'author_id' => $faker->numberBetween(1,10),
                'image' => $faker->imageUrl(640, 480, 'peoples', true)
            ]);
        }
        
    }
}
