<?php

namespace App\Http\Controllers;

use App\Models\Client;
use App\Models\Country;
use App\Models\State;
use App\Http\Requests\StoreClientRequest;
use App\Http\Requests\UpdateClientRequest;

class ClientController extends Controller
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
        $clients = Client::all();
        return view('clients.index', compact('clients'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $countries = Country::all();
        $states = State::all();
        $client = new Client;
        return view('clients.create', ['countries' => $countries, 'states' => $states, 'client' => $client]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreClientRequest $request)
    {
        $client = new Client;
        $client->first_name         = $request['first_name'];
        $client->middle_name        = $request['middle_name'];
        $client->last_name          = $request['last_name'];
        $client->business_name      = $request['business_name'];
        $client->email              = $request['email'];
        $client->phone              = $request['phone'];
        $client->address_line1      = htmlentities($request['address_line_1'], ENT_QUOTES, "UTF-8");
        $client->address_line2      = htmlentities($request['address_line_2'], ENT_QUOTES, "UTF-8");
        $client->city               = $request['city'];
        $client->state              = $request['state'];
        $client->country            = $request['country'];
        $client->zip_code            = $request['zipcode'];
        $client->save();

        $name = $request['first_name'] . ' ' . $request['last_name'];

        $message = "Client {$name} has been created.";

        return redirect()->route('clients.index')->with('message', $message);
    }

    /**
     * Display the specified resource.
     */
    public function show(Client $client)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Client $client)
    {
        $countries = Country::all();
        return view('clients.edit', ['countries' => $countries, 'client' => $client]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateClientRequest $request, $id)
    {
        $client = Client::find($id);
        $client->first_name        = $request->get('first_name');
        $client->middle_name       = $request->get('middle_name');
        $client->last_name        = $request->get('last_name');
        $client->business_name     = $request->get('business_name');
        $client->email             = $request->get('email');
        $client->phone             = $request->get('phone');
        $client->address_line1     = htmlentities($request->get('address_line_1'), ENT_QUOTES, "UTF-8");
        $client->address_line2     = htmlentities($request->get('address_line_2'), ENT_QUOTES, "UTF-8");
        $client->city              = $request->get('city');
        $client->state             = $request->get('state');
        $client->country           = $request->get('country');
        $client->zip_code          = $request->get('zipcode');
        $client->save();

        $name = $request['first_name'] . ' ' . $request['last_name'];

        $message = "Client {$name} has been updated.";

        return redirect()->route('clients.index')->with('message', $message);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Client $client)
    {
        $name = $client->first_name . ' ' . $client->last_name;
        $client->delete();

        $message = "Client {$name} has been deleted.";
        return redirect()->back()->with('message', $message);
    }
}
