<?php
namespace App\Http\Controllers;
use Carbon\Carbon;
// for API data receiving from http source
use Illuminate\Support\Facades\Http;
use Illuminate\Validation\Rule;
use Illuminate\Http\Request;
// use Datatables;
 use Yajra\DataTables\DataTables;

use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendMail;
// for excel export
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Writer\Xls;
// end for excel export

use Session;
use DB;
use URL;
use Image;
use File;
use PDF;

use Maatwebsite\Excel\Facades\Excel;

use App\Exports\ExcelLedger;
use App\Exports\PartyBalanceExcel;

use App\Exports\SalemanExport;
use App\Exports\PartyLedgerExcel;
 
class Work extends Controller
{

public function __construct()
{
if(session::get('UserID')==1)
{
echo  "null";
}
}
/**
* Show the form for creating a new resource.
*
* @return \Illuminate\Http\Response
*/

//Projects
public  function Projects()
{
 ///////////////////////USER RIGHT & CONTROL ///////////////////////////////////////////
 $allow= check_role(session::get('UserID'),'Supplier','Delete');
 
if($allow[0]->Allow=='N')
{
return redirect()->back()->with('error', 'You access is limited')->with('class','danger');
}
////////////////////////////END SCRIPT ////////////////////////////////////////////////
session::put('menu','Party');
$pagetitle='Projects';

$country = DB::table('country')->get();
$tax_treatments = DB::table('tax_treatment')->get();
$customers = DB::table('customers')->get();
return view ('work.projects',compact('pagetitle','customers','country','tax_treatments'));
}
public  function AddProject()
{
 ///////////////////////USER RIGHT & CONTROL ///////////////////////////////////////////
 $allow= check_role(session::get('UserID'),'Supplier','Delete');
 
if($allow[0]->Allow=='N')
{
return redirect()->back()->with('error', 'You access is limited')->with('class','danger');
}
////////////////////////////END SCRIPT ////////////////////////////////////////////////
session::put('menu','Party');
$pagetitle='Add Project';

$country = DB::table('country')->get();
$tax_treatments = DB::table('tax_treatment')->get();
$customers = DB::table('customers')->get();
$estimates = DB::table('v_estimate_master')->get();
$departments = DB::table('department')->get();
$employee = DB::table('v_employee')->get();
return view ('work.project_add',compact('pagetitle','estimates','departments','employee','customers','country','tax_treatments'));
}
public  function SaveProject(request $request)
{
///////////////////////USER RIGHT & CONTROL ///////////////////////////////////////////
$allow= check_role(session::get('UserID'),'Party / Customers','List / Create');
if($allow[0]->Allow=='N')
{
return redirect()->back()->with('error', 'You access is limited')->with('class','danger');
}
////////////////////////////END SCRIPT ////////////////////////////////////////////////
$this->validate($request,[
'PartyType'=>'required',
'TRN'=>'required',
],
[
'CompanyName.required' => 'Company / Cusomter Name is required',
]);

$data = array(
   'PartyType' => $request->input('PartyType'),
   'Salutation' => $request->input('Salutation'),
   'FirstName' => $request->input('FirstName'),
   'LastName' => $request->input('LastName'),
   'CompanyName' => $request->input('CompanyName'),
   'Email' => $request->input('Email'),
   'WorkPhone' => $request->input('WorkPhone'),
   'Mobile' => $request->input('Mobile'),
   'SkypeID' => $request->input('SkypeID'),
   'Designation' => $request->input('Designation'),
   'Department' => $request->input('Department'), 
   'Website' => $request->input('Website'),
   'TaxTreatment' => $request->input('TaxTreatment'), 
   'TRN' => $request->input('TRN'),
   'PlaceOfSupply' => $request->input('PlaceOfSupply'),
   'Currency' => $request->input('Currency'), 
   'OpeningBalance' => $request->input('OpeningBalance'),
   'Facebook' => $request->input('Facebook'), 
   'Twitter' => $request->input('Twitter'),
   'BillingAttention' => $request->input('BillingAttention'),
   'BillingCountry' => $request->input('BillingCountry'),
   'BillingAddressLine1' => $request->input('BillingAddressLine1'),
   'BillingAddressLine2' => $request->input('BillingAddressLine2'),
   'BillingCity' => $request->input('BillingCity'),
   'BillingState' => $request->input('BillingState'),
   'BillingZipCode' => $request->input('BillingZipCode'),
   'BillingPhone' => $request->input('BillingPhone'),
   'BillingFax' => $request->input('BillingFax'),
   'ShippingAttention' => $request->input('ShippingAttention'),
   'ShippingCountry' => $request->input('ShippingCountry'),
   'ShippingAddressLine1' => $request->input('ShippingAddressLine1'),
   'ShippingAddressLine2' => $request->input('ShippingAddressLine2'),
   'ShippingCity' => $request->input('ShippingCity'),
   'ShippingState' => $request->input('ShippingState'),
   'ShippingZipCode' => $request->input('ShippingZipCode'),
   'ShippingPhone' => $request->input('ShippingPhone'),
   'ShippingFax' => $request->input('ShippingFax'),
   'Remarks' => $request->input('Remarks'),
   );

$id= DB::table('customers')->insertGetId($data);


return redirect ('Customers')->with('error', 'Save Successfully.')->with('class','success');
}
public  function ProjectDelete($id)
{
///////////////////////USER RIGHT & CONTROL ///////////////////////////////////////////
$allow= check_role(session::get('UserID'),'Party / Customers','Delete');
if($allow[0]->Allow=='N')
{
return redirect()->back()->with('error', 'You access is limited')->with('class','danger');
}
////////////////////////////END SCRIPT ////////////////////////////////////////////////


$id = DB::table('customers')->where('PartyID',$id)->delete();
return redirect('Customers')->with('error','Deleted Successfully')->with('class','success');


}
public  function ProjectEdit($id)
{
///////////////////////USER RIGHT & CONTROL ///////////////////////////////////////////
$allow= check_role(session::get('UserID'),'Party / Customers','Update');
if($allow[0]->Allow=='N')
{
return redirect()->back()->with('error', 'You access is limited')->with('class','danger');
}
////////////////////////////END SCRIPT ////////////////////////////////////////////////
session::put('menu','Party');
$pagetitle='Party';

$customer = DB::table('customers')->where('PartyID',$id)->get();
$country = DB::table('country')->get();
$tax_treatments = DB::table('tax_treatment')->get();

return view ('customer_edit',compact('pagetitle','customer','country','tax_treatments'));
}
public  function ProjectUpdate(request $request)
{
///////////////////////USER RIGHT & CONTROL ///////////////////////////////////////////
$allow= check_role(session::get('UserID'),'Party / Customers','Update');
if($allow[0]->Allow=='N')
{
return redirect()->back()->with('error', 'You access is limited')->with('class','danger');
}
////////////////////////////END SCRIPT ////////////////////////////////////////////////
$this->validate($request,[
'PartyType'=>'required',
'TRN'=>'required',
],
[
'CompanyName.required' => 'Company / Cusomter Name is required',
]);

$data = array(
   'PartyType' => $request->input('PartyType'),
   'Salutation' => $request->input('Salutation'),
   'FirstName' => $request->input('FirstName'),
   'LastName' => $request->input('LastName'),
   'CompanyName' => $request->input('CompanyName'),
   'Email' => $request->input('Email'),
   'WorkPhone' => $request->input('WorkPhone'),
   'Mobile' => $request->input('Mobile'),
   'SkypeID' => $request->input('SkypeID'),
   'Designation' => $request->input('Designation'),
   'Department' => $request->input('Department'), 
   'Website' => $request->input('Website'),
   'TaxTreatment' => $request->input('TaxTreatment'), 
   'TRN' => $request->input('TRN'),
   'PlaceOfSupply' => $request->input('PlaceOfSupply'),
   'Currency' => $request->input('Currency'), 
   'OpeningBalance' => $request->input('OpeningBalance'),
   'Facebook' => $request->input('Facebook'), 
   'Twitter' => $request->input('Twitter'),
   'BillingAttention' => $request->input('BillingAttention'),
   'BillingCountry' => $request->input('BillingCountry'),
   'BillingAddressLine1' => $request->input('BillingAddressLine1'),
   'BillingAddressLine2' => $request->input('BillingAddressLine2'),
   'BillingCity' => $request->input('BillingCity'),
   'BillingState' => $request->input('BillingState'),
   'BillingZipCode' => $request->input('BillingZipCode'),
   'BillingPhone' => $request->input('BillingPhone'),
   'BillingFax' => $request->input('BillingFax'),
   'ShippingAttention' => $request->input('ShippingAttention'),
   'ShippingCountry' => $request->input('ShippingCountry'),
   'ShippingAddressLine1' => $request->input('ShippingAddressLine1'),
   'ShippingAddressLine2' => $request->input('ShippingAddressLine2'),
   'ShippingCity' => $request->input('ShippingCity'),
   'ShippingState' => $request->input('ShippingState'),
   'ShippingZipCode' => $request->input('ShippingZipCode'),
   'ShippingPhone' => $request->input('ShippingPhone'),
   'ShippingFax' => $request->input('ShippingFax'),
   'Remarks' => $request->input('Remarks'),
);
$id= DB::table('customers')->where('PartyID',$request->input('PartyID'))->update($data);
return redirect ('Customers')->with('error', 'Updated Successfully.')->with('class','success');
}
public function ProjectView($id)
{
    // dd('hello');
    $pagetitle = 'Project Details';
    $estimate = DB::table('v_estimate_master')->where('EstimateMasterID', $id)->get();
    $estimate_detail = DB::table('v_estimate_detail')->where('EstimateMasterID', $id)->get();
    $company = DB::table('company')->get();
    
    session()->forget('VHNO');

    session::put('VHNO',$estimate[0]->EstimateNo);



     return view('work.project_view', compact('estimate', 'pagetitle', 'company', 'estimate_detail'));
  }


//Tasks
public  function Tasks()
{
 ///////////////////////USER RIGHT & CONTROL ///////////////////////////////////////////
 $allow= check_role(session::get('UserID'),'Supplier','Delete');
 
if($allow[0]->Allow=='N')
{
return redirect()->back()->with('error', 'You access is limited')->with('class','danger');
}
////////////////////////////END SCRIPT ////////////////////////////////////////////////
session::put('menu','Party');
$pagetitle='Tasks';

$country = DB::table('country')->get();
$customers = DB::table('customers')->get();
return view ('work.tasks',compact('pagetitle','customers','country'));
}

public  function AddTask()
{
 ///////////////////////USER RIGHT & CONTROL ///////////////////////////////////////////
 $allow= check_role(session::get('UserID'),'Supplier','Delete');
 
if($allow[0]->Allow=='N')
{
return redirect()->back()->with('error', 'You access is limited')->with('class','danger');
}
////////////////////////////END SCRIPT ////////////////////////////////////////////////
session::put('menu','Party');
$pagetitle='Add Task';

$country = DB::table('country')->get();
$customers = DB::table('customers')->get();
$estimates = DB::table('v_estimate_master')->get();
$departments = DB::table('department')->get();
$employee = DB::table('v_employee')->get();
return view ('work.task_add',compact('pagetitle','estimates','departments','employee','customers','country'));
}
public function TaskView($id)
{
    // dd('hello');
    $pagetitle = 'Task Details';
    $estimate = DB::table('v_estimate_master')->where('EstimateMasterID', $id)->get();
    $estimate_detail = DB::table('v_estimate_detail')->where('EstimateMasterID', $id)->get();
    $company = DB::table('company')->get();
    
    session()->forget('VHNO');

    session::put('VHNO',$estimate[0]->EstimateNo);



     return view('work.task_view', compact('estimate', 'pagetitle', 'company', 'estimate_detail'));
  }

} // end of controller