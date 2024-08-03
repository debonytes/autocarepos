<main>
    <header class="page-header page-header-dark bg-gradient-primary-to-secondary pb-10">
        <div class="container-xl px-4">
            <div class="page-header-content pt-4">
                <div class="row align-items-center justify-content-between">
                    <div class="col-auto mt-4">
                        <h1 class="page-header-title">
                            <div class="page-header-icon"><i data-feather="layers"></i></div>
                            New Product Info
                        </h1>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Main page content-->
    <div class="container-xl px-4 mt-n10">

        <!-- Example DataTable for Dashboard Demo-->
        <div class="card1 mb-4">
            <div class="card-body">
                <form method="POST" action="{{ route('products.store') }}">
                    @csrf
                    @include('products.form')
                </form>
            </div>
        </div>
    </div>
</main>