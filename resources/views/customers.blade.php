@extends('template.tmp')
@section('title', $pagetitle)
@section('content')
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<div class="main-content">
    <div class="page-content">
        <div class="container-fluid">
            @if (session('error'))
            <div class="alert alert-{{ Session::get('class') }} p-1" id="success-alert">        
                {{ Session::get('error') }}  
            </div>
            @endif
            @if (count($errors) > 0)
            <div>
                <div class="alert alert-danger p-2 border-1">
                   <p class="font-weight-bold"> There were some problems with your input.</p>
                    <ul>
                        
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>

                        @endforeach
                    </ul>
                </div>
            </div>
            @endif            
            <div class="card shadow-sm">
                <div class="card-body">
                    <form action="{{URL('/SaveCustomer')}}" method="post">
                        {{csrf_field()}}
                        <div>
                            <div class="mb-5">
                                <h4 class="card-title">Add Customer</h4>
                                <p class="card-title-desc"></p>
                                    <div class="mb-2 row">
                                        <label for="example-url-input" class="col-md-2 col-form-label fw-bold">Cutomer Type</label>
                                        <div class="col-md-2 mt-2 ">
                                            <input class="form-check-input" type="radio" name="PartyType"
                                                id="formRadios1" checked value="Business">
                                                <label class="form-check-label" for="formRadios2">
                                                            Business</label>
                                        </div>
                                        <div class="col-md-2 mt-2 form-check">
                                            <input class="form-check-input" type="radio" name="PartyType"
                                                id="formRadios2" value="Individual" >
                                                <label class="form-check-label" for="formRadios2">
                                                            Individual</label>
                                        </div>
                                    </div>                      
                                    <div class="mb-2 row">
                                        <label for="example-url-input" class="col-md-2 col-form-label fw-bold">Primary Contact</label>
                                        <div class="col-md-1">
                                            <select name="Salutation" class="form-select" >
                                                <option value="">Salutation</option>
                                                <option value="Mr." {{(old('Salutation')== 'Mr.') ? 'selected=selected':'' }}>Mr.</option>
                                                <option value="Miss" {{(old('Salutation')== 'Miss') ? 'selected=selected':'' }}>Miss</option>
                                            </select> 
                                        </div>
                                        <div class="col-md-2">
                                             <input class="form-control" type="text"  name="FirstName" value="{{old('FirstName')}}" placeholder="First Name"  >
                                        </div>
                                        <div class="col-md-2">
                                             <input class="form-control" type="text"  name="LastName" value="{{old('LastName')}}" placeholder="Last Name" >
                                        </div>
                                    </div>
                                    <div class="mb-2 row">
                                        <label for="example-url-input" class="col-md-2 col-form-label fw-bold">Company Name</label>
                                        <div class="col-md-4">
                                            <input class="form-control" type="text"  value="{{old('CompanyName')}}" name="CompanyName" >
                                        </div>
                                    </div>
                                    <div class="mb-2 row">
                                        <label for="example-url-input" class="col-md-2 col-form-label fw-bold">Customer Email</label>
                                        <div class="col-md-4">
                                            <input class="form-control" type="text"  value="{{old('Email')}}" name="Email" >
                                        </div>
                                    </div>
                                    <div class="mb-2 row">
                                        <label for="example-url-input" class="col-md-2 col-form-label fw-bold">Customer Phone</label>
                                        <div class="col-md-2">
                                            <input class="form-control" type="text"  name="WorkPhone" value="{{old('WorkPhone')}}" >
                                        </div>
                                        <div class="col-md-2">
                                            <input class="form-control" type="text"  name="Mobile" value="{{old('Mobile')}}" >
                                        </div>
                                    </div>
                                    <div class="mb-2 row">
                                        <label for="example-url-input" class="col-md-2 col-form-label fw-bold">Skype Name/Number</label>
                                        <div class="col-md-4">
                                            <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text"><i style="min-height:20px;padding-top: 3px;" class="fa fa-skype"></i></span>
                                                    </div>
                                                   <input class="form-control" type="text" name="SkypeID" value="{{old('SkypeID')}}"  >
                                                </div>

                                            <!--  -->
                                        </div>
                                    </div>
                                    <div class="mb-2 row">
                                        <label for="example-url-input" class="col-md-2 col-form-label fw-bold">Designation</label>
                                        <div class="col-md-4">
                                            <input class="form-control" type="text"  name="Designation" value="{{old('Designation')}}"  >
                                        </div>
                                    </div>
                                    <div class="mb-2 row">
                                        <label for="example-url-input" class="col-md-2 col-form-label fw-bold">Department</label>
                                        <div class="col-md-4">
                                            <input class="form-control" type="text"  name="Department" value="{{old('Department')}}"  >
                                        </div>
                                    </div>
                                    <div class="mb-2 row">
                                        <label for="example-url-input" class="col-md-2 col-form-label fw-bold">Website</label>
                                        <div class="col-md-4">
                                            <input class="form-control" type="text"  name="Website" value="{{old('Website')}}"  >
                                        </div>  
                                    </div>
                                </div>
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs nav-tabs-custom" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-bs-toggle="tab" href="#other-details" role="tab">
                                        Other Details
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-bs-toggle="tab" href="#address" role="tab">
                                        Address
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-bs-toggle="tab" href="#remarks" role="tab">
                                        Remarks
                                    </a>
                                </li>
                                
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content p-3">
                                <div class="tab-pane active" id="other-details" role="tabpanel">
                                    <div class="row">
                                        <div>
                                            <div class="mb-1 row">
                                                <label for="example-tel-input" class="col-md-2 col-form-label fw-bold text-danger">Tax Treatment *</label>
                                                <div class="col-md-4">
                                                    <select name="TaxTreatment" class="form-select" required >
                                                        @foreach($tax_treatments as $value)
                                                            <option value="{{$value->TaxTreatmentName}}" {{(old('TaxTreatment')== $value->TaxTreatmentName) ? 'selected=selected': '' }}>{{$value->TaxTreatmentName}}</option>
                                                        @endforeach
                                                    </select> 
                                                </div>
                                            </div> 

                                            <div class="mb-2 row">
                                                <label for="example-url-input" class="col-md-2 col-form-label fw-bold text-danger">Tax Registration <br>Number (TRN)*</label>
                                                <div class="col-md-4">
                                                    <input class="form-control mt-2" type="text"  name="TRN" value="{{old('TRN')}}" placeholder="Number" required>
                                                </div>
                                            </div>

                                            <div class="mb-1 row">
                                                <label for="example-tel-input" class="col-md-2 col-form-label fw-bold text-danger">Place Of Supply*</label>
                                                <div class="col-md-4">
                                                    <input class="form-control mt-3" type="text"  name="PlaceOfSupply" value="{{old('PlaceOfSupply')}}" required>
                                                </div>
                                            </div> 

                                            <div class="mb-1 row">
                                                <label for="example-tel-input" class="col-md-2 col-form-label fw-bold">Currency</label>
                                                <div class="col-md-4">
                                                    <select name="Currency" class="form-select" >
                                                        <option value="AED- UAE Dirham" {{(old('AED- UAE Dirham')== 'AED- UAE Dirham') ? 'selected=selected':'' }}>AED- UAE Dirham</option>
                                                    </select> 
                                                </div>
                                            </div> 

                                            <div class="mb-2 row">
                                                <label for="example-url-input" class="col-md-2 col-form-label fw-bold">Opening Balance</label>
                                                <div class="col-md-4">
                                                    <div class="input-group">
                                                            <div class="input-group-prepend">
                                                                <span class="input-group-text">AED</span>
                                                            </div>
                                                           <input class="form-control" type="text" name="OpeningBalance" value="{{old('OpeningBalance')}}"  >
                                                        </div>
                                                </div>
                                            </div>

                                            <div class="mb-2 row">
                                                <label for="example-url-input" class="col-md-2 col-form-label fw-bold">Facebook</label>
                                                <div class="col-md-4">
                                                    <div class="input-group">
                                                            <div class="input-group-prepend">
                                                                <span class="input-group-text"><i style="min-height:20px;padding-top: 3px;" class="fa fa-facebook"></i></span>
                                                            </div>
                                                           <input class="form-control" type="text" name="Facebook" value="{{old('Facebook')}}"  >
                                                           
                                                    </div>
                                                    <span class="text-muted">http://facebook.com/</span>
                                                </div>
                                            </div>
                                            <div class="mb-2 row">
                                                <label for="example-url-input" class="col-md-2 col-form-label fw-bold">Twitter</label>
                                                <div class="col-md-4">
                                                    <div class="input-group">
                                                            <div class="input-group-prepend">
                                                                <span class="input-group-text"><i style="min-height:20px;padding-top: 3px;" class="fa fa-twitter"></i></span>
                                                            </div>
                                                           <input class="form-control" type="text" name="Twitter" value="{{old('Twitter')}}"  >
                                                           
                                                    </div>
                                                    <span class="text-muted">http://twitter.com/</span>
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="address" role="tabpanel">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h4 class="card-title">BILLING ADDRESS</h4>
                                            <div class="mb-2 row">
                                                    <label for="example-url-input" class="col-md-4 col-form-label fw-bold">Attention</label>
                                                    <div class="col-md-8">
                                                        <input class="form-control" type="text"  name="BillingAttention" value="{{old('BillingAttention')}}"  >
                                                    </div>
                                            </div>
                                            <div class="mb-2 row">
                                                    <label for="example-url-input" class="col-md-4 col-form-label fw-bold">Country / Region</label>
                                                    <div class="col-md-8">
                                                        <select name="BillingCountry" class="form-select" >
                                                            @foreach($country as $value)
                                                            <option value="{{$value->CountryName}}" {{(old('BillingCountry')== $value->CountryName) ? 'selected=selected': '' }}>{{$value->CountryName}}</option>
                                                            @endforeach
                                                    </select>
                                                    </div>
                                            </div>
                                            <div class="mb-2 row">
                                                <label for="example-url-input" class="col-md-4 col-form-label fw-bold">Address</label>
                                                <div class="col-md-8">
                                                     <textarea name="BillingAddressLine1" class="form-control" rows="3"  placeholder="Street1"></textarea><br>
                                                     <textarea name="BillingAddressLine2" class="form-control" rows="3" placeholder="Street2"></textarea>
                                                     
                                                </div>
                                            </div>
                                            <div class="mb-2 row">
                                                <label for="example-url-input" class="col-md-4 col-form-label fw-bold">City</label>
                                                <div class="col-md-8">
                                                    <input class="form-control" type="text"  name="BillingCity" value="{{old('BillingCity')}}"  >
                                                </div>
                                            </div>
                                            <div class="mb-2 row">
                                                <label for="example-url-input" class="col-md-4 col-form-label fw-bold">Sate</label>
                                                <div class="col-md-8">
                                                    <input class="form-control" type="text"  name="BillingState" value="{{old('BillingState')}}" >
                                                </div>
                                            </div>
                                            <div class="mb-2 row">
                                                    <label for="example-url-input" class="col-md-4 col-form-label fw-bold">Zip Code</label>
                                                    <div class="col-md-8">
                                                        <input class="form-control" type="text"  name="BillingZipCode" value="{{old('BillingZipCode')}}"  >
                                                    </div>
                                                </div>
                                            <div class="mb-2 row">
                                                <label for="example-url-input" class="col-md-4 col-form-label fw-bold">Phone</label>
                                                <div class="col-md-8">
                                                    <input class="form-control" type="text"  name="BillingPhone" value="{{old('BillingPhone')}}"  >
                                                </div>
                                            </div>
                                            <div class="mb-2 row">
                                                <label for="example-url-input" class="col-md-4 col-form-label fw-bold">Fax</label>
                                                <div class="col-md-8">
                                                    <input class="form-control" type="text"  name="BillingFax" value="{{old('BillingFax')}}"  >
                                                </div>
                                            </div>                                           
                                        </div>
                                        <div class="col-md-6">
                                            <h4 class="card-title">SHIPPING ADDRESS</h4>
                                            <div class="mb-2 row">
                                                    <label for="example-url-input" class="col-md-4 col-form-label fw-bold">Attention</label>
                                                    <div class="col-md-8">
                                                        <input class="form-control" type="text"  name="ShippingAttention" value="{{old('ShippingAttention')}}"  >
                                                    </div>
                                            </div>
                                            <div class="mb-2 row">
                                                    <label for="example-url-input" class="col-md-4 col-form-label fw-bold">Country / Region</label>
                                                    <div class="col-md-8">
                                                        <select name="ShippingCountry" class="form-select" >
                                                            @foreach($country as $value)
                                                            <option value="{{$value->CountryName}}" {{(old('ShippingCountry')== $value->CountryName) ? 'selected=selected': '' }}>{{$value->CountryName}}</option>
                                                            @endforeach
                                                    </select>
                                                    </div>
                                            </div>
                                            <div class="mb-2 row">
                                                <label for="example-url-input" class="col-md-4 col-form-label fw-bold">Address</label>
                                                <div class="col-md-8">
                                                     <textarea name="ShippingAddressLine1" class="form-control" rows="3"  placeholder="Street1"></textarea><br>
                                                     <textarea name="ShippingAddressLine2" class="form-control" rows="3" placeholder="Street2"></textarea>
                                                     
                                                </div>
                                            </div>
                                            <div class="mb-2 row">
                                                <label for="example-url-input" class="col-md-4 col-form-label fw-bold">City</label>
                                                <div class="col-md-8">
                                                    <input class="form-control" type="text"  name="ShippingCity" value="{{old('ShippingCity')}}"  >
                                                </div>
                                            </div>
                                            <div class="mb-2 row">
                                                <label for="example-url-input" class="col-md-4 col-form-label fw-bold">Sate</label>
                                                <div class="col-md-8">
                                                    <input class="form-control" type="text"  name="ShippingState" value="{{old('ShippingState')}}"  >
                                                </div>
                                            </div>
                                            <div class="mb-2 row">
                                                    <label for="example-url-input" class="col-md-4 col-form-label fw-bold">Zip Code</label>
                                                    <div class="col-md-8">
                                                        <input class="form-control" type="text"  name="ShippingZipCode" value="{{old('ShippingZipCode')}}"  >
                                                    </div>
                                                </div>
                                            <div class="mb-2 row">
                                                <label for="example-url-input" class="col-md-4 col-form-label fw-bold">Phone</label>
                                                <div class="col-md-8">
                                                    <input class="form-control" type="text"  name="ShippingPhone" value="{{old('ShippingPhone')}}"  >
                                                </div>
                                            </div>
                                            <div class="mb-2 row">
                                                <label for="example-url-input" class="col-md-4 col-form-label fw-bold">Fax</label>
                                                <div class="col-md-8">
                                                    <input class="form-control" type="text"  name="ShippingFax" value="{{old('ShippingFax')}}"  >
                                                </div>
                                            </div>    
                                        </div>
                                    </div>     
                                </div>
                                <div class="tab-pane" id="remarks" role="tabpanel">
                                    <div>
                                        <div class="table-responsive mt-4">

                                        <label class="form-label">Remarks <span class="card-title-desc">(For Internal Use)</span></label>
                                        <div>
                                            <textarea name="Remarks" class="form-control" rows="3"></textarea>
                                        </div>
                                    
                                            
                                        </div>
                                    </div>
                                </div>
                                

                            </div>

                            <div class="card-footer">
                                <button type="submit" class="btn btn-primary me-1 waves-effect waves-float waves-light">Submit</button>
                                <button type="reset" class="btn btn-outline-secondary waves-effect">Reset</button>
                            </div>
                        </div>
                    </form>        
                </div>
                <!-- card end here -->
                <div class="row">
                    <div class="col-lg-12">                                              
                        <div class="card">                              
                        <div class="card-body">
                            <h4 class="card-title ">Party / Customer Detail</h4>
                            <div class="table-responsive">
                                <table class="table table-striped  table-sm  m-0" id="student_table">
                                    <thead>
                                       <tr>
                                        <th>Party Code</th>
                                        <th>Party Type</th>
                                        <th>Name</th>
                                        <th>TRN #</th>
                                        <th>Billing Address</th>
                                        <th>Billing City</th>
                                        <th>Phone</th>
                                        <th>Email</th>                                         
                                        <th>Action</th>
                                      </tr>
                                     </thead>
                                    <tbody>                        
                                        @foreach($customers as $value)
                                        <tr>                            
                                        <td>{{$value->PartyID}}</td>
                                        <td>{{$value->PartyType}}</td>
                                        <td>{{$value->Salutation .''.$value->FirstName .' '.$value->FirstName }}</td>
                                        <td>{{$value->TRN}}</td>
                                        <td>{{$value->BillingAddressLine1}}</td>
                                        <td>{{$value->BillingCity}}</td>
                                        <td>{{$value->WorkPhone}}</td>
                                        <td>{{$value->Email}}</td>                                         
                                        <td>
                                            <div class="d-flex gap-1">
                                            <a href="{{URL('/CustomerEdit/'.$value->PartyID)}}" class="text-secondary"><i class="mdi mdi-pencil font-size-15"></i></a>
                                            <a href="#"  class="text-secondary" onclick="delete_confirm2('CustomerDelete',{{$value->PartyID}})"><i class="mdi mdi-delete font-size-15"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            </div>
        </div>
    </div>
</div>
<!-- END: Content-->
<script type="text/javascript">
$(document).ready(function() {
     $('#student_table').DataTable( );
});
</script>
@endsection