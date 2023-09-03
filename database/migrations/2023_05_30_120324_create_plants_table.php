<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('plants', function (Blueprint $table) {
            $table->id();
            
            $table->integer('plantid');
            $table->string('slug');
            $table->string('nomecomum');
            $table->string('nomecientifico');
            $table->string('rank');
            $table->string('nomecientificodafamilia');
            $table->integer('generoid');
            $table->string('genero');
            $table->string('image_url')->nullable();

            $table->timestamps();
        });

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('plants');
        
    }
};
