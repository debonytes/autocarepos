<main>
    <header class="page-header page-header-dark bg-gradient-primary-to-secondary pb-10">
        <div class="container-xl px-4">
            <div class="page-header-content pt-4">
                <div class="row align-items-center justify-content-between">
                    <div class="col-auto mt-4">
                        <h1 class="page-header-title">
                            <div class="page-header-icon"><i data-feather="layers"></i></div>
                            Clients
                        </h1>
                        <div class="page-header-subtitle">List of clients</div>
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
            <div class="card-header"><span>Clients</span><a href="{{ route('clients.create') }}" class="btn btn-info">Add New Client</a></div>
            <div class="card-body">
                <table id="datatablesSimple">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Business Name</th>
                            <th>Phone</th>
                            <th>Email</th>
                            <th>City</th>
                            <th>State</th>
                            <th>Country</th>
                            <th>Actions</th>
                        </tr>
                    </thead>

                    <tbody>
                        @if( $clients )
                            @foreach( $clients as $client )
                                <tr>
                                    <td>{{ $client->first_name }} {{ $client->last_name }}</td>
                                    <td>{{ $client->business_name }}</td>
                                    <td>{{ $client->phone }}</td>
                                    <td>{{ $client->email }}</td>
                                    <td>{{ $client->city }}</td>
                                    <td>{{ $client->state }}</td>
                                    <td>{{ $client->clientCountry->name }}</td>
                                    <td>
                                        <a href="{{ route('clients.edit', $client->id) }}" class="btn btn-datatable btn-icon btn-warning me-2"><i data-feather="edit"></i></a>
                                        <button class="btn btn-danger btn-datatable btn-icon" data-clientid="{{ $client->id }}" data-client-name="{{ $client->first_name }} {{ $client->last_name }}"  type="button" data-bs-toggle="modal" data-bs-target="#deleteClient"><i class="fa-regular fa-trash-can"></i></button>

                                    </td>
                                </tr>
                            @endforeach
                        @else
                            <tr>
                                <td colspan="8">No client available</td>
                            </tr>
                        @endif

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</main>



<!-- Modal -->
<div class="modal fade" id="deleteClient" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Delete Client</h5>
                <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="POST" id="formClient">
                @csrf
                @method('DELETE')
                <input type="hidden" name="clientId" id="clientId" value="">
                <div class="modal-body">Are you sure to delete this client <span class="client-name"></span>?</div>
                <div class="modal-footer">
                    <button class="btn btn-warning" type="button" data-bs-dismiss="modal">Close</button>
                    <button class="btn btn-danger" type="submit" >Delete</button>
                </div>
            </form>
        </div>
    </div>
</div>

@push('scripts')
<script>
    jQuery(document).ready(function ($) {

      $('#deleteClient').on('show.bs.modal', function(event){
          var button = $(event.relatedTarget);
          var clientid = button.data('clientid');
          var clientName = button.data('client-name');
          var modal = $(this);
          var action = "{{ url('/clients') }}/" + clientid;

          modal.find('.modal-content .client-name').html(clientName);
          modal.find('.modal-content #clientId').val(clientid);
          modal.find('.modal-content #formClient').attr('action', action);

        });

    });
</script>

@endpush