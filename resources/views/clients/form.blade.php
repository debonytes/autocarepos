                    @csrf
                    <div class="row">
                        <div class="mb-3 col-md-4">
                            <label for="first_name">First Name <span>*</span></label>
                            <input class="form-control form-control-solid" id="first_name" type="text" name="first_name" placeholder="First Name" value="{{ old('first_name', $client->first_name) }}"  >
                            @error('first_name')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                        <div class="mb-3 col-md-4">
                            <label for="middle_name">Middle Name <span>*</span></label>
                            <input class="form-control form-control-solid" id="middle_name" type="text" name="middle_name" placeholder="Middle Name" value="{{ old('middle_name', $client->middle_name) }}">
                            @error('middle_name')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                        <div class="mb-3 col-md-4">
                            <label for="last_name">Last Name <span>*</span></label>
                            <input class="form-control form-control-solid" id="last_name" type="text" name="last_name" placeholder="Last Name" value="{{ old('last_name', $client->last_name) }}">
                            @error('last_name')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="business_name">Business Name</label>
                        <input class="form-control form-control-solid" id="business_name" type="text" name="business_name" placeholder="Business Name" value="{{ old('business_name', $client->business_name) }}">
                        @error('business_name')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>

                    <div class="row">

                        <div class="mb-3 col-md-6">
                            <label for="email_address">Email address</label>
                            <input class="form-control form-control-solid" id="email_address" type="email" name="email" placeholder="name@example.com" value="{{ old('email', $client->email) }}">
                            @error('email')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                        <div class="mb-3 col-md-6">
                            <label for="phone">Phone</label>
                            <input class="form-control form-control-solid" id="phone" type="text" name="phone" placeholder="000-000-0000" value="{{ old('phone', $client->phone) }}">
                            @error('phone')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>

                    </div>

                    <div class="mb-3">
                        <label for="address_1">Address 1</label>
                        <textarea class="form-control form-control-solid" id="address_1" name="address_line_1" rows="3">{{ old('address_line_1', $client->address_line1) }}</textarea>
                        @error('address_line_1')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>

                    <div class="mb-3">
                        <label for="address_2">Address 2</label>
                        <textarea class="form-control form-control-solid" id="address_2" name="address_line_2" rows="3">{{ old('address_line_2', $client->address_line2) }}</textarea>
                        @error('address_line_2')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>

                    <div class="row">

                        <div class="mb-3 col-md-3">
                            <label for="city">City</label>
                            <input class="form-control form-control-solid" id="city" type="text" name="city" placeholder="City" value="{{ old('city', $client->city) }}">
                            @error('city')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="mb-3 col-md-3">
                            <label for="state">State</label>
                            <select class="form-control form-control-solid" id="state" name="state">
                                <option value="">Select</option>
                                @foreach( $states as $state )
                                    @php
                                        $selected = ($state->id == $client->state) ? ' selected ' : '';
                                    @endphp
                                    <option value="{{ $state->id }}" {{ $selected }}>{{ $state->name }}</option>
                                @endforeach
                            </select>
                            @error('state')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="mb-3 col-md-3">
                            <label for="country">Country</label>
                            <select class="form-control form-control-solid" id="country" name="country">
                                <option value="">Select</option>
                                @foreach( $countries as $country )
                                    @php
                                        $selected = ($country->id == $client->country) ? ' selected ' : '';
                                    @endphp
                                    <option value="{{ $country->id }}" {{ $selected }}>{{ $country->name }}</option>
                                @endforeach
                            </select>
                            @error('country')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="mb-3 col-md-3">
                            <label for="zipcode">Zipcode</label>
                            <input class="form-control form-control-solid" id="zipcode" type="text" name="zipcode" placeholder="Zipcode" value="{{ old('zipcode', $client->zip_code) }}" maxlength="5">
                            @error('zipcode')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>


                    </div>

                    <div class="mb-0 text-align-right">
                        <button type="button" class="btn btn-warning" onclick="window.location.href='{{ route('clients.index') }}'">Cancel</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>


