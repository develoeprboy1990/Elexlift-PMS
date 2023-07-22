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
            <div class="row">
                <div class="col-12">
                  <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                    <h4 class="mb-sm-0 font-size-18">Create New Job</h4>
                  </div>
                </div>  
            </div>
            <div class="card shadow-sm">
                <div class="card-header bg-transparent border-bottom h5">

                      Add Job
                </div>
                <div class="card-body">
                    <form action="{{URL('/saveJob')}}" method="post" enctype="multipart/form-data">
                    {{csrf_field()}}
                        <div class="row col-md-12">
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="basicpill-firstname-input">Project Name<span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="name" value="{{old('name')}}" placeholder="Project Name">
                                </div>
                            </div>
                            <div class="col-md-4 mt-1">  
                                  <div class="form-group">
                                       <label class="control-label" for="controller">Type of controller <span class="text-danger">*</span></label>
                                  </div>
                                  <div class="form-check form-check-inline pt-1">
                                      <input class="form-check-input" type="radio" name="controller_type" id="mr" value="MRL" required="">
                                      <label class="form-check-label" for="mr">MRL</label>
                                  </div>
                                  <div class="form-check form-check-inline">
                                      <input class="form-check-input" type="radio" required="" name="controller_type" id="mr" value="MR">
                                      <label class="form-check-label" for="mr">MR</label>
                                  </div>
                                  <div class="form-check form-check-inline">
                                      <input class="form-check-input" type="radio" required="" name="controller_type" id="hydralic" value="HYDRAULIC">
                                      <label class="form-check-label" for="hydralic">HYDRAULIC</label>
                                  </div>
                             </div>
                             <div class="col-md-4 mt-1">  
                                  <div class="form-group">
                                       <label class="control-label" for="controller">Number of Stops <span class="text-danger">*</span></label>
                                  </div>
                                  <div class="form-check form-check-inline pt-1">
                                      <input class="form-check-input" type="radio" name="no_of_steps" id="mr" value="2" required="">
                                      <label class="form-check-label" for="mr">2</label>
                                  </div>
                                  <div class="form-check form-check-inline">
                                      <input class="form-check-input" type="radio" required="" name="no_of_steps" id="mr" value="3">
                                      <label class="form-check-label" for="mr">3</label>
                                  </div>
                                  <div class="form-check form-check-inline">
                                      <input class="form-check-input" type="radio" required="" name="no_of_steps" id="hydralic" value="4">
                                      <label class="form-check-label" for="hydralic">4</label>
                                  </div>
                                  <div class="form-check form-check-inline">
                                      <input class="form-check-input" type="radio" required="" name="no_of_steps" id="hydralic" value="5">
                                      <label class="form-check-label" for="hydralic">5</label>
                                  </div>
                                  <div class="form-check form-check-inline">
                                      <input class="form-check-input" type="radio" required="" name="no_of_steps" id="hydralic" value="6">
                                      <label class="form-check-label" for="hydralic">6</label>
                                  </div>

                             </div>
                        </div>

                        <div class="row col-md-12 mt-5">
                            <div class="col-md-4">  
                                  <div class="form-group">
                                       <label class="control-label" for="controller">Overspeed Governor Voltage<span class="text-danger">*</span></label>
                                  </div>
                                  <div class="form-check form-check-inline pt-1">
                                      <input class="form-check-input" type="radio" name="overspeed_governer_voltage" id="mr" value="48V AC" required="">
                                      <label class="form-check-label" for="mr">48V AC</label>
                                  </div>
                                  <div class="form-check form-check-inline">
                                      <input class="form-check-input" type="radio" required="" name="overspeed_governer_voltage" id="mr" value="24V DC">
                                      <label class="form-check-label" for="mr">24V DC</label>
                                  </div>
                             </div>
                             <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="basicpill-firstname-input">Brake Voltage<span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="brake_voltage" value="{{old('brake_voltage')}}" placeholder="Brake Voltage">
                                </div>
                             </div>
                             <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="basicpill-firstname-input">Moter<span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="moter" value="{{old('moter')}}" placeholder="Moter">
                                </div>
                             </div>
                        </div>

                        <div class="row col-md-12 mt-5">
                            <div class="col-md-4">  
                                  <div class="form-group">
                                       <label class="control-label" for="controller">Encoder type<span class="text-danger">*</span></label>
                                  </div>
                                  <div class="form-check form-check-inline pt-1">
                                      <input class="form-check-input" type="radio" name="encoder_type" id="mr" value="ECN 1313" required="">
                                      <label class="form-check-label" for="mr">ECN 1313</label>
                                  </div>
                                  <div class="form-check form-check-inline">
                                      <input class="form-check-input" type="radio" required="" name="encoder_type" id="mr" value="ERN1387">
                                      <label class="form-check-label" for="mr">ERN1387</label>
                                  </div>
                            </div>
                            <div class="col-md-4">  
                                  <div class="form-group">
                                       <label class="control-label" for="controller">Number of Entrance<span class="text-danger">*</span></label>
                                  </div>
                                  <div class="form-check form-check-inline pt-1">
                                      <input class="form-check-input" type="radio" name="no_of_entrance" id="mr" value="1" required="">
                                      <label class="form-check-label" for="mr">1</label>
                                  </div>
                                  <div class="form-check form-check-inline">
                                      <input class="form-check-input" type="radio" required="" name="no_of_entrance" id="mr" value="2">
                                      <label class="form-check-label" for="mr">2</label>
                                  </div>
                            </div>
                            <div class="col-md-4">  
                                  <div class="form-group">
                                       <label class="control-label" for="controller">Rescue<span class="text-danger">*</span></label>
                                  </div>
                                  <div class="form-check form-check-inline pt-1">
                                      <input class="form-check-input" type="radio" name="resue" id="mr" value="with" required="">
                                      <label class="form-check-label" for="mr">with</label>
                                  </div>
                                  <div class="form-check form-check-inline">
                                      <input class="form-check-input" type="radio" required="" name="resue" id="mr" value="without">
                                      <label class="form-check-label" for="mr">without</label>
                                  </div>
                            </div>
                        </div>

                        <div class="row col-md-12 mt-5">
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="basicpill-firstname-input">Delivery Date<span class="text-danger">*</span></label>
                                    <input type="date" class="form-control" name="delivery_date" value="{{old('delivery_date')}}">
                                </div>
                            </div>
                            <div class="col-md-4 mt-1">  
                                  <div class="form-group">
                                       <label class="control-label" for="controller">Door type<span class="text-danger">*</span></label>
                                  </div>
                                  <div class="form-check form-check-inline pt-1">
                                      <input class="form-check-input" type="radio" name="door_type" id="mr" value="Fermator" required="">
                                      <label class="form-check-label" for="mr">Fermator</label>
                                  </div>
                                  <div class="form-check form-check-inline">
                                      <input class="form-check-input" type="radio" required="" name="door_type" id="mr" value="Bonex">
                                      <label class="form-check-label" for="mr">Bonex</label>
                                  </div>
                                  <div class="form-check form-check-inline">
                                      <input class="form-check-input" type="radio" required="" name="door_type" id="mr" value="others">
                                      <label class="form-check-label" for="mr">others</label>
                                  </div>
                            </div>
                            <div class="col-md-4 mt-1">  
                                  <div class="mb-3">
                                    <label for="basicpill-firstname-input">Upload File<span class="text-danger">*</span></label>
                                    <input type="file" class="form-control" name="file" value="{{old('file')}}">
                                </div>
                            </div>
                        </div>


                        <div class="row col-md-12 mt-5">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="basicpill-firstname-input">Additional Details<span class="text-danger">*</span></label>
                                    <textarea name="additional_details" class="form-control" rows="15">
                                        
                                    </textarea>
                                </div>
                            </div>
                            <div class="col-md-6 mt-1">  
                                  <div class="form-group">
                                       <label class="control-label" for="controller">Other materials<span class="text-danger">*</span></label>
                                  </div>
                                  <div class="custom-control custom-checkbox">
                                      <input name="other_materials[]" type="checkbox" class="custom-control-input" id=""  value="Intercom">
                                      <label class="custom-control-label" for="customCheck33079">Intercom </label>
                                      <label>
                                  </div>
                                  <div class="custom-control custom-checkbox">
                                      <input name="other_materials[]" type="checkbox" class="custom-control-input" id=""  value="Load sensor">
                                      <label class="custom-control-label" for="customCheck33079">Load sensor </label>
                                      <label>
                                  </div>
                                  <div class="custom-control custom-checkbox">
                                      <input name="other_materials[]" type="checkbox" class="custom-control-input" id=""  value="3 NO (sdfs up,sdfs dn,mgm)">
                                      <label class="custom-control-label" for="customCheck33079">3 NO (sdfs up,sdfs dn,mgm) </label>
                                      <label>
                                  </div>
                                  <div class="custom-control custom-checkbox">
                                      <input name="other_materials[]" type="checkbox" class="custom-control-input" id=""  value="2 bistable (eos up,dn)">
                                      <label class="custom-control-label" for="customCheck33079">2 bistable (eos up,dn) </label>
                                      <label>
                                  </div>
                                  <div class="custom-control custom-checkbox">
                                      <input name="other_materials[]" type="checkbox" class="custom-control-input" id=""  value="2 limit switch (eos up,dn)">
                                      <label class="custom-control-label" for="customCheck33079">2 limit switch (eos up,dn) </label>
                                      <label>
                                  </div>
                                  <div class="custom-control custom-checkbox">
                                      <input name="other_materials[]" type="checkbox" class="custom-control-input" id=""  value="2 limit switch (final limit)">
                                      <label class="custom-control-label" for="customCheck33079">2 limit switch (final limit) </label>
                                      <label>
                                  </div>
                                  <div class="custom-control custom-checkbox">
                                      <input name="other_materials[]" type="checkbox" class="custom-control-input" id=""  value="4 NO (sdfs up,sdfs dn,RLV,DZ)">
                                      <label class="custom-control-label" for="customCheck33079">4 NO (sdfs up,sdfs dn,RLV,DZ) </label>
                                      <label>
                                  </div>
                                  <div class="custom-control custom-checkbox">
                                      <input name="other_materials[]" type="checkbox" class="custom-control-input" id=""  value="1 NC (EM)">
                                      <label class="custom-control-label" for="customCheck33079">1 NC (EM) </label>
                                      <label>
                                  </div>
                                  <div class="custom-control custom-checkbox">
                                      <input name="other_materials[]" type="checkbox" class="custom-control-input" id=""  value="2 Magnet 120cm">
                                      <label class="custom-control-label" for="customCheck33079">2 Magnet 120cm </label>
                                      <label>
                                  </div>
                                  <div class="custom-control custom-checkbox">
                                      <input name="other_materials[]" type="checkbox" class="custom-control-input" id=""  value="4 round magnet">
                                      <label class="custom-control-label" for="customCheck33079">4 round magnet </label>
                                      <label>
                                  </div>
                                  <div class="custom-control custom-checkbox">
                                      <input name="other_materials[]" type="checkbox" class="custom-control-input" id=""  value="COP">
                                      <label class="custom-control-label" for="customCheck33079">COP </label>
                                      <label>
                                  </div>
                                  <div class="custom-control custom-checkbox">
                                      <input name="other_materials[]" type="checkbox" class="custom-control-input" id=""  value="LOP">
                                      <label class="custom-control-label" for="customCheck33079">LOP </label>
                                      <label>
                                  </div>
                            </div>
                        </div>

                        <div class="row mt-4">
                            <div class="col-lg-8 col-12">
                                <div class="mt-2"><button type="submit" class="btn btn-success w-md float-right" >Save</button>
                                </div>
                            </div>
                        </div>
                        

                    </form>     
                </div>
            </div>      
        </div>
    </div>
</div>
<!-- END: Content-->
<script type="text/javascript"></script>
@endsection