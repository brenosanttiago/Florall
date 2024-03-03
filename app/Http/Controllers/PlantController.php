<?php

namespace App\Http\Controllers;

use App\Models\Plant;
use GuzzleHttp\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Auth;

class PlantController extends Controller
{
  
    
    public function edit($plants){

        $user = Auth::user();
       
        
        $plants = Plant::where('nomecomum', 'like', $plants)->firstOrFail();
        $user->plantHistory()->attach($plants->id);
        return view('florall.show', compact('plants'));
    

    }

    public function update(Request $request, $plants){

            $data = $request->all();

            $plants = Plant::find($plants);

            $plants->update($data);
            return $plants;
        
    }

    

    public function historico()
    {
        $user = Auth::user();
        $plantHistory = $user->plantHistory()->orderBy('pivot_created_at', 'desc')->get();
    
        return view('florall.historico', ['plantHistory' => $plantHistory]);
    }
    
    public function index()
    {
        return view('florall.index');
    }

    public function identify(Request $request)
{
    $request->validate([
        'image' => 'required|image|max:2048',
    ]);

    $image = $request->file('image');
    $imagePath = $image->store('uploads', 'public');

    $imageData = base64_encode(file_get_contents(storage_path('app/public/' . $imagePath)));

    $client = new Client();
    $response = $client->request('POST', 'https://api.plant.id/v2/identify', [
        'headers' => [
            'Api-Key' => 'dK5XadFxBhiul5mjxVjImsHVTSyNsAMddVLgcFzB3QdaoFtlMo',
            'Content-Type' => 'application/json',
        ],
        'json' => [
            'images' => [$imageData],
            'organs' => ['flower', 'leaf'],
        ],
    ]);

    $plants = json_decode($response->getBody(), true);

    return view('florall.identify', compact('plants', 'imagePath'));
}

}

