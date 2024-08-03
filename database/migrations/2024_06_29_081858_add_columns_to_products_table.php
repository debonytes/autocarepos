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
        Schema::table('products', function (Blueprint $table) {
            $table->string('product_name', 150);
            $table->string('sku', 100)->nullable();
            $table->text('description')->nullable();
            $table->text('summary')->nullable();
            $table->string('categories', 100)->nullable();
            $table->string('image')->nullable();
            $table->integer('stock')->nullable();
            $table->string('weight')->nullable();
            $table->string('dimensions')->nullable();
            $table->decimal('price',8,2)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('products', function (Blueprint $table) {
            $table->dropColumn(['product_name', 'sku', 'description', 'summary', 'categories', 'image', 'stock', 'weight', 'dimensions', 'price']);
        });
    }
};
