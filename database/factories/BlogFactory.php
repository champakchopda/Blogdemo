<?php

use Faker\Generator as Faker;
use App\User;
use App\Blog;

// $factory->define(App\Blog::class, function (Faker $faker) {
//     return [
//         'title' => $faker->name,
//         'body' => $faker->unique()->safeEmail,
//         'user_id' => User::all()->random()->id,
      
//     ];
// });
$factory->define(Blog::class, function (Faker $faker) {
    return [
        'title' => $faker->name,
        'body' => $faker->name,
        'user_id' => User::all()->random()->id,
    ];
});