<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class plant extends Model
{
    use HasFactory;

    public function users()
    {
        return $this->belongsToMany(User::class, 'plant_history', 'plant_id', 'user_id')
                    ->withTimestamps();
    }

    protected $fillable = [
                'plantid',
                'slug',
                'nomecomum',
                'nomecientifico',
                'rank',
                'nomecomumdafamilia',
                'nomecientificodafamilia',
                'generoid',
                'genero',
                'image_url',
                'comestivel',
                'vegetal',
                'observacoes',
    ];

    public function scopeSearch(Builder $query, $termo)
{
    return $query->where('nomecomum', 'LIKE', "%{$termo}%");
}
}
