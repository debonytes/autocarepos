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
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('product_name',255)->nullable();
            $table->string('sku',100)->nullable();
            $table->text('description')->nullable();
            $table->text('summary')->nullable();
            $table->string('categories',255)->nullable();
            $table->string('image',255)->nullable();
            $table->integer('stock')->length(11)->nullable();
            $table->string('weight',255)->nullable();
            $table->string('dimensions',255)->nullable();
            $table->decimal('supplier_price', 8, 2)->nullable();
            $table->decimal('retail_price', 8, 2)->nullable();
            $table->string('product_uuid',255)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
