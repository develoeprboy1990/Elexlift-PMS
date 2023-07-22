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
                                <h4 class="card-title">Invoice Sample</h4>
                                <p class="card-title-desc"></p>                    
                                    <div class="mb-2 row">
                                        <label for="example-url-input" class="col-md-2 col-form-label fw-bold text-danger">Invoice Date* </label>
                                        <div class="col-md-3">
                                            <!-- <input class="form-control datepicker" type="date" id="example-date-input"> -->

                                            <div class="input-group" id="datepicker21">
                                                <input type="text" name="Date" autocomplete="off" class="form-control" placeholder="dd/mm/yyyy" data-date-format="dd/mm/yyyy" data-date-container="#datepicker21" data-provide="datepicker" data-date-autoclose="true" value="{{date('d/m/Y')}}" id="example-date-input">
                                                <span class="input-group-text"><i class="mdi mdi-calendar"></i></span>
                                            </div>


                                        </div>
                                        <div class="col-md-3">
                                            <label for="example-url-input" class="col-md-2 col-form-label fw-bold" style="width: 30%;float: left;">Terms</label>
                                                <select class="form-select" style="width: 70%;" id="terms">
                                                    <option value="15">Net 15</option>
                                                    <option value="30">Net 30</option>
                                                    <option value="45">Net 45</option>
                                                    <option value="60">Net 60</option>
                                                    <option value="EOM">Due end of the month</option>
                                                    <option value="EOSM">Due end of the next month</option>
                                                    <option value="0">as on receipt </option>
                                                </select>
                                        </div>

                                        <div class="col-md-3">
                                        <label for="example-url-input" class="col-md-2 col-form-label fw-bold" style="width: 30%;float: left;">Due Date</label>
                                        <input class="form-control dropoffDate" type="text"  name="DueDate" value="" readonly style="width: 70%;" >
                                        </div>
                                    </div>
                                    <div class="mb-2 row">
                                        <label for="example-url-input" class="col-md-2 col-form-label fw-bold">Salesperson</label>
                                        <div class="col-md-3">
                                            <select class="form-select">
                                                <option>Select or Add Saleperson</option>
                                                <option>Test</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="mb-2 row">
                                        <label for="example-url-input" class="col-md-2 col-form-label fw-bold">Subject</label>
                                        <div class="col-md-6">
                                            <input class="form-control" type="text"  value="" name="Subject" placeholder="Let your customer know what this Invoice is for" >
                                        </div>
                                    </div>
                                </div>
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs nav-tabs-custom" role="tablist"></ul>

                            <!-- Tab panes -->
                            <div class="tab-content p-3"></div>

                            <div class="card-footer">
                                <button type="submit" class="btn btn-primary me-1 waves-effect waves-float waves-light">Submit</button>
                                <button type="reset" class="btn btn-outline-secondary waves-effect">Reset</button>
                            </div>
                        </div>
                    </form>        
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END: Content-->
<script type="text/javascript">
$(document).ready(function() {
     //$('#example-date-input').datepicker({autoHide: true, format: 'dd-MM-yyyy'});


function addDays(theDate, days) {
    return new Date(theDate.getTime() + days*24*60*60*1000);
}



     $(document).on('change', '#example-date-input,#terms', function() {

        var terms = $('#terms').find(":selected").val();   

        var dateAr =$('#example-date-input').val().split('/')
        var chosseDate = dateAr[2]+ '-' + dateAr[1] + '-' + dateAr[0];

        var date = new Date(chosseDate);

        if(terms == 'EOM')
        {
            var y = date.getFullYear(), m = date.getMonth();
            var firstDay = new Date(y, m, 1);
            var dueDate = new Date(y, m + 1, 0);
        }
        else if(terms == 'EOSM')
        {
            var y = date.getFullYear(), m = date.getMonth();
            var firstDay = new Date(y, m, 1);
            var dueDate = new Date(y, m + 2, 0);
        }
        else{
            var dueDate = addDays(date, terms);
        }

        var day = ('0' + dueDate.getDate()).slice(-2);
        var month = ('0' + (dueDate.getMonth()+1)).slice(-2);
        var year = dueDate.getFullYear();
        var dropoffDate =[day, month, year].join('/');
        //alert(dropoffDate);
        $('.dropoffDate').val(dropoffDate);



           /* var date2 = $('#example-date-input').datepicker('getDate', '+'+terms+'d'); 
            date2.setDate(date2.getDate()+1); 
            $('.dropoffDate').datepicker('setDate', date2);*/

        });
});
</script>
@endsection