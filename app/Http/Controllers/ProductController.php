<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Http\Requests\StoreProductRequest;
use App\Http\Requests\UpdateProductRequest;
use Illuminate\Support\Str;

class ProductController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('products.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $product = new Product;
        $product_uuid = Str::uuid();
        return view('products.create', ['product' => $product, 'product_uuid' => $product_uuid]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreProductRequest $request)
    {
        $product = new Product;
        $product->product_name      = $request['product_name'];
        $product->sku               = $request['sku'];
        $product->description       = htmlentities($request['description'], ENT_QUOTES, "UTF-8");
        $product->summary           = htmlentities($request['summary'], ENT_QUOTES, "UTF-8");
        $product->categories        = $request['categories'];
        $product->image             = $request['image'];
        $product->stock             = $request['stock'];
        $product->weight            = $request['weight'];
        $product->dimensions        = $request['dimensions'];
        $product->supplier_price    = $request['supplier_price'];
        $product->retail_price      = $request['retail_price'];
        $product->product_uuid      = $request['product_uuid'];
        $product->save();

        $name = $request['product_name'];

        $message = "Product {$name} has been created.";

        return redirect()->route('products.index')->with('message', $message);
    }

    /**
     * Display the specified resource.
     */
    public function show(Product $product)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Product $product)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateProductRequest $request, Product $product)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Product $product)
    {
        //
    }
}
