@extends('template.tmp')

@section('title', 'Labels')
 

@section('content')

 <div class="main-content">

 <div class="page-content">
<div class="container-fluid">

 <!-- start page title -->
<div class="row">
<div class="col-12">
<div class="page-title-box d-sm-flex align-items-center justify-content-between">
 <h4 class="mb-sm-0 font-size-18">Manage Labels</h4>

 <div class="page-title-right">
<div class="page-title-right">
<div class="text-sm-end">
                <button type="button" id="generate-lable" class="btn btn-success btn-rounded waves-effect waves-light mb-2 me-2"> Generate Label</button>
            </div>
</div>
</div>
</div>
</div>
<div>
 <!-- end page title -->

 @if (session('error'))

 <div class="alert alert-{{ Session::get('class') }} p-3" id="success-alert">
                    
                   {{ Session::get('error') }}  
                </div>

@endif

 @if (count($errors) > 0)
                                 
                            <div >
                <div class="alert alert-danger pt-3 pl-0   border-3">
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
    <form action="{{URL('/SaveUser')}}" method="post">
        {{csrf_field()}}
<div class="card">
<div class="card-body">
<!--
<h4 class="card-title">Add New Label</h4>
<p class="card-title-desc"></p>

 
<div class="mb-3 row">
<label for="example-email-input" class="col-md-2 col-form-label">Full Name</label>
<div class="col-md-10">
<input class="form-control" type="text"  value="{{old('FullName')}}"  name="FullName" id="example-email-input">
</div>
</div>
<div class="mb-3 row">
<label for="example-url-input" class="col-md-2 col-form-label">Username</label>
<div class="col-md-10">
<input class="form-control" type="text"  value="{{old('Email')}}" name="Email" required>
</div>

</div>
<div class="mb-3 row">
<label for="example-url-input" class="col-md-2 col-form-label">Password</label>
<div class="col-md-10">
<input class="form-control" type="text"  name="Password" value="{{old('Password')}}" required>
</div>

</div>
<div class="mb-3 row">
<label for="example-tel-input" class="col-md-2 col-form-label">User Type</label>
<div class="col-md-10">
<select name="UserType" class="form-select">

     
      <option value="HR">HR</option>
    <option value="OM">OM</option>
    <option value="GM">GM</option>
    


</select> </div>
 </div>
<div class="mb-3 row">
<label for="example-tel-input" class="col-md-2 col-form-label">Active</label>
<div class="col-md-10">
<select name="Active" class="form-select">

     
    <option value="Y">Yes</option>
    <option value="N">No</option>
    


</select> </div>
 </div> 
<input type="submit" class="btn btn-primary w-md">                                   
                                   
        
                                      
                                        

                                       

                                    </div>
                                </div>

                            </form>
                            </div> <!-- end col -->
                        </div>
                    
  <div class="row">
      <div class="col-lg-12">
          
          <div class="card">
              
          <div class="card-body">
            <h4 class="card-title pb-3">Manage Labels</h4>
             <!-- <p class="card-title-desc"> Add <code>.table-sm</code> to make tables more compact by cutting cell padding in half.</p>  -->   
                                        
       <div class="table-responsive">
        <table class="table table-sm m-0" id="datatable">
            <thead>
               <tr>
                <th><input type="checkbox" value="" id="check-all"></th>
                <th>Order Number</th>
                <th>Client</th>
                <th>Content</th>
                <th>Customer Order Date</th>
                <th>Unit Number</th>
                <th>Descritpion</th>
              </tr>
             </thead>
            <tbody>
            <?php $no=1; ?> 
            @foreach($labels as $label)
           <tr>
                <td><input type="checkbox" value="" name=""></td>
                <td scope="row">{{$label->OrderNumber}}</td>
                <td>{{$label->ClientName}}</td>
                <td>{{$label->Content}}</td>
                <td>{{$label->CustomerOrderDate}}</td>
                <td>{{$label->UnitNumber}}</td>               
                <td>{{$label->Description}}</td>

                 
            </tr>

            @endforeach
             
              </tbody>
               </table>
        
                  </div>
        
                   </div>
          </div>
      </div>



  </div>                     
 
                         
                     
                        
                    </div> <!-- container-fluid -->
                </div>


    
</div>
<script type="text/javascript">
        $("#generate-lable").on("click", function(event) {
        
        var code = [];
        var qty = 1;
        /*var rownumber = $('table.order-list tbody tr:last').index();
        for(i = 0; i <= rownumber; i++){
            code.push($('table.order-list tbody tr:nth-child(' + (i + 1) + ')').find('td:nth-child(2)').text());
            qty.push($('table.order-list tbody tr:nth-child(' + (i + 1) + ')').find('.qty').val());
        }*/
        $.ajax({
            type: 'GET',
            url: 'Lables/sticer_search',
            data: {
                code:code,
                qty:qty
            },
            success: function(data) {

                window.open(data.url);
                
            }
        });

    });

</script>
  @endsection