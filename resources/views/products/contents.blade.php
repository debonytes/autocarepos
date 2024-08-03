<main>
    <header class="page-header page-header-dark bg-gradient-primary-to-secondary pb-10">
        <div class="container-xl px-4">
            <div class="page-header-content pt-4">
                <div class="row align-items-center justify-content-between">
                    <div class="col-auto mt-4">
                        <h1 class="page-header-title">
                            <div class="page-header-icon"><i data-feather="framer"></i></div>
                            Products
                        </h1>
                        <div class="page-header-subtitle">List of products</div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Main page content-->
    <div class="container-xl px-4 mt-n10">

        @if(session()->has('message'))
            <div class="alert alert-success">{{ session()->get('message') }}</div>
        @endif

        <!-- Example DataTable for Dashboard Demo-->
        <div class="card mb-4">
            <div class="card-header"><span>Products List</span><a href="{{ route('products.create') }}" class="btn btn-info"><i class="fa fa-plus"></i>&nbsp; New Product</a></div>
            <div class="card-body">
                <table id="datatablesSimple">
                    <thead>
                        <tr>
                          <th>Name</th>
                          <th>Brand</th>
                          <th>Price</th>
                          <th>In Stock</th>
                          <th>Date Updated</th>
                          <th>Actions</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                          <th>Name</th>
                          <th>Brand</th>
                          <th>Price</th>
                          <th>In Stock</th>
                          <th>Date Updated</th>
                          <th>Actions</th>
                        </tr>
                    </tfoot>
                    <tbody>
                        <tr>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</main>