  
  @csrf
  <div class="row">
    <div class="col-xl-8">
        <!-- Account details card-->
        <div class="card mb-4">
            <div class="card-header">Products Details</div>
            <div class="card-body">
              <div class="mb-3">
                  <label class="small mb-1" for="product_name">Product Name <span>*</span></label>
                  <input class="form-control" id="product_name" name="product_name" type="text" placeholder="Product Name" value="{{ old('product_name', $product->product_name  ) }}" />
                  @error('product_name')
                      <span class="text-danger">{{ $message }}</span>
                  @enderror
              </div>

              <div class="row gx-3 mb-3">
                  <!-- Form Group (SKU)-->
                  <div class="col-md-6">
                      <label class="small mb-1" for="sku">SKU</label>
                      <input class="form-control" id="sku" type="text" name="sku" placeholder="SKU" value="{{ old('sku', $product->sku) }}" />

                  </div>
                  <!-- Form Group (Product UUID)-->
                  <div class="col-md-6">
                      <label class="small mb-1" for="product_uuid">Product UUID</label>
                      <input class="form-control" id="product_uuid" type="text" name="product_uuid" value="{{ old('product_uuid', $product->product_uuid) }}">
                      @error('product_uuid')
                          <span class="text-danger">{{ $message }}</span>
                      @enderror
                  </div>
              </div>

              <div class="mb-3">
                  <label class="small mb-1" for="description">Description <span>*</span></label>
                  <textarea class="form-control" id="description" name="description" rows="3">{{ old('description', $product->description) }}</textarea>
                  @error('description')
                      <span class="text-danger">{{ $message }}</span>
                  @enderror
              </div>

              <div class="mb-3">
                  <label class="small mb-1" for="summary">Summary</label>
                  <textarea class="form-control" id="summary" name="summary" rows="3">{{ old('summary', $product->summary) }}</textarea>
                  @error('summary')
                      <span class="text-danger">{{ $message }}</span>
                  @enderror
              </div>

              <div class="row gx-3 mb-3">
                  <!-- Form Group (Stock)-->
                  <div class="col-md-6">
                      <label class="small mb-1" for="stock">Stock</label>
                      <input class="form-control" id="stock" type="number" name="stock"  value="{{ old('stock', $product->stock) }}" placeholder="Stock">
                      @error('stock')
                          <span class="text-danger">{{ $message }}</span>
                      @enderror
                  </div>
                  <!-- Form Group (location)-->
                  <div class="col-md-6">
                      <label class="small mb-1" for="weight">Weight</label>
                      <input class="form-control" id="weight" type="text" name="weight"  value="{{ old('weight', $product->weight) }}" placeholder="5 lbs">
                      @error('weight')
                          <span class="text-danger">{{ $message }}</span>
                      @enderror
                  </div>
              </div>

              <div class="row gx-3 mb-3">
                  <div class="col-md-6">
                      <label class="small mb-1" for="dimensions">Dimensions</label>
                      <input class="form-control" id="dimensions" type="text" name="dimensions" placeholder="Dimensions" value="{{ old('dimensions', $product->dimensions) }}">
                      @error('dimensions')
                          <span class="text-danger">{{ $message }}</span>
                      @enderror
                  </div>

                  <div class="col-md-6">
                    <div class="row">
                      <div class="col-md-6">
                          <label class="small mb-1" for="retail_price">Retail Price</label>
                          <input class="form-control" id="retail_price" type="text" name="retail_price" placeholder="Retail Price" value="{{ old('retail_price', $product->retail_price) }}">
                          @error('retail_price')
                              <span class="text-danger">{{ $message }}</span>
                          @enderror
                      </div>
                      <div class="col-md-6">
                          <label class="small mb-1" for="supplier_price">Supplier Price</label>
                          <input class="form-control" id="supplier_price" type="text" name="supplier_price" placeholder="Supplier Price" value="{{ old('supplier_price', $product->supplier_price) }}">
                          @error('supplier_price')
                              <span class="text-danger">{{ $message }}</span>
                          @enderror
                      </div>
                    </div>
                  </div>
              </div>

              <!-- Save changes button-->
              <button type="button" class="btn btn-warning" onclick="window.location.href='{{ route('products.index') }}'">Cancel</button>
              <button type="submit" class="btn btn-primary">Save</button>
            </div>
        </div>
    </div>
    <div class="col-xl-4">
      <!-- Profile picture card-->
      <div class="card mb-4 mb-xl-0">
          <div class="card-header">Product Image</div>
          <div class="card-body text-center">
              <!-- Profile picture image-->
              <img class="img-account-profile mb-2" src="{{ asset('assets/img/placeholder.png') }}" alt="" />
              <!-- Profile picture help block-->
              <div class="small font-italic text-muted mb-4">JPG or PNG no larger than 5 MB</div>
              <!-- Profile picture upload button-->
              <input type="file" name="image" id="image" style="display: none;">
              <button class="btn btn-primary" id="image-btn" type="button">Upload new image</button>
          </div>
      </div>
    </div>
  </div>

@push('scripts')
    <script>
        jQuery(document).ready(function ($) {

            $('#image-btn').on('click', function(){
                var image = $('#image');
                image.trigger('click');
            });

        });
    </script>
@endpush
