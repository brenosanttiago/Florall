<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Http;
use App\Models\Plant;

class PlantSeeder extends Seeder
{
    public function run()
    {
        $response = Http::get('https://trefle.io/api/v1/plants/search?token=zvylt9H6vvyKX_rMJ2aEHGTHL4Pn2FWrUCLSuHGXDJ0&q=ros');
        // $response = Http::get('https://trefle.io/api/v1/plants/search?', [
        //     'token' => 'zvylt9H6vvyKX_rMJ2aEHGTHL4Pn2FWrUCLSuHGXDJ0',
        //     'q' => 'ros',
        // ]);
    
        $plants = $response->json()['data'];
    
    
        foreach ($plants as $plant) {
            $nomeComum = $plant['common_name'] ?? '';

            Plant::create([
                'plantid' => $plant['id'],
                'slug' => $plant['slug'],
                'nomecomum' => $nomeComum,
                'nomecientifico' => $plant['scientific_name'],
                'rank' => $plant['rank'],
                //'nomecomumdafamilia' => $plant['slug'],
                'nomecientificodafamilia' => $plant['family'],
                'generoid' => $plant['genus_id'],
                'genero' => $plant['genus'],
                'image_url' => $plant['image_url'],
            ]);

        }
    }
}
