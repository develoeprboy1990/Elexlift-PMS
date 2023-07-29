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
use App\Models\Job;
use App\Models\Company;

use Maatwebsite\Excel\Facades\Excel;
 
class Accounts extends Controller
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

    public function Dashboard()
    {
        session::put('menu','Dashboard');

        $pagetitle='Dashboard';

        if(Session::get('UserType') == 'Admin'){
            $totalJobs = Job::count();
            $inProgressJobs = DB::table('user_jobs')->where('status','in-progress')->count();
            $pendingJobs = DB::table('user_jobs')->where('status','pending')->count();
            $reviewedJobs = DB::table('user_jobs')->where('status','reviewed')->count();
            $completedJobs = DB::table('user_jobs')->where('status','completed')->count();
        }
        else{
            $totalJobs = DB::table('user_jobs')->where('user_id',Session::get('UserID'))->count();
            $inProgressJobs = DB::table('user_jobs')->where('user_id',Session::get('UserID'))->where('status','in-progress')->count();
            $pendingJobs = DB::table('user_jobs')->where('user_id',Session::get('UserID'))->where('status','pending')->count();
            $reviewedJobs = DB::table('user_jobs')->where('user_id',Session::get('UserID'))->where('status','reviewed')->count();
            $completedJobs = DB::table('user_jobs')->where('user_id',Session::get('UserID'))->where('status','completed')->count();
        }
        return view ('dashboard',compact('pagetitle','totalJobs','inProgressJobs','completedJobs','pendingJobs','reviewedJobs'));
    }

    public  function Logout()
    {
        Session::flush(); // removes all session data
        return redirect ('/')->with('error', 'Logout Successfully.')->with('class','success');
    }

    public function Login()
    {
        $company = Company::get();
        return view ('login',compact('company'));
    }
public function UserVerify( request $request)
{
//
if($request->StaffType=='Management'){
//dd($request->all());
$input = $request->only(['username', 'password']);


$username = $input['username'];
$password =  $input['password'];

$data=DB::table('user')->where('Email', '=', $username )
->where('Password', '=', $password )
->where('Active', '=', 'Yes' )
->get();
$company = Company::get();

if(count($data)>0)
{
Session::put('FullName', $data[0]->FullName);
Session::put('UserID', $data[0]->UserID);
Session::put('Email', $data[0]->Email);
Session::put('UserType', $data[0]->UserType);

Session::put('Currency', $company[0]->Currency);
Session::put('CompanyName', $company[0]->Name . ' '.$company[0]->Name2);
// Session::put('isAdmin', $data[0]->isAdmin);



return redirect('Dashboard')->with('error','Welcome to '. session::get('CompanyName').' Software')->with('class','success');

}

else
{
//session::flash('error', 'Invalid username or Password. Try again');
return redirect ('Login')->withinput($request->all())->with('error', 'Invalid username or Password. Try again')->with('class','danger');
}

}

 else
 {

        $username = $request->input('username');
         $password =  $request->input('password');
 

         $data=DB::table('employee')->where('Email', '=', $username )
                                ->where('Password', '=', $password )
                                // ->where('Active', '=', 'Y' )
                                ->get(); 




         

           if(count($data)>0)
            {   

              
           Session::put('FullName', $data[0]->FirstName . ''.$data[0]->MiddleName.''.$data[0]->LastName); 
           Session::put('EmployeeID', $data[0]->EmployeeID);
           Session::put('Email', $data[0]->Email);
           Session::put('StaffType', $data[0]->StaffType);
           


 
                 return redirect ('StaffDashboard' );
               }
               else

            {   


                //session::flash('error', 'Invalid username or Password. Try again'); 

                return redirect ('Login')->withinput($request->all())->with('error', 'Invalid username or Password. Try again');
            }
          }

// for staff login
}



function Attachment()
  {
    return view('attachment');
  }


  function AttachmentSave(Request $request)
  {
  
        

  



if($request->hasfile('filenames'))
         {
            foreach($request->file('filenames') as $file)
            {
                $name = rand(0,999999).time().'.'.$file->extension();
                $file->move(public_path().'/documents/', $name);  
                $data[] = $name;  


                $fileData = array(
          'InvoiceNo' => $request->InvoiceNo,
          'FileName' =>  $name

        );
        // dd($fileData);
        $fileid = DB::table('attachment')->insertGetId($fileData);
            }


 
       

         }


      

        return back()->with('success', 'Data Your files has been successfully added');
    }





       


public function AttachmentRead(){ 
       $directory = 'documents'; 
       $files_info = []; 
       
       $file_name = session::get('VHNO');; 

       $image=DB::table('attachment')->where('InvoiceNo',$file_name)->get();
     
       // Read files
       foreach ($image as $file) { 
          
            //  $filename = $file->getFilename(); 
            //  $size = $file->getSize(); // Bytes 
            //  $sizeinMB = round($size / (1000 * 1024), 2);// MB 
           
            //  if($sizeinMB <= 2){ // Check file size is <= 2 MB 
                 $files_info[] = array( 
                       "name" => $file->FileName, 
                       "size" => 12, 
                       "path" => url($directory.'/'.$file->FileName) 
                 ); 
            //  } 
        //   } 
       } 
       return response()->json($files_info); 
    }



  public function AttachmentDelete($id,$filename)
  {
      $id =  $id;
      $filename =  $filename;
      DB::table('attachment')->where('AttachmentID',$id)->delete();
      $path=public_path().'/documents/'.$filename;
      if (file_exists($path)) {
          unlink($path);
      }
     return redirect('Attachment')->with('error', 'File Deleted')->with('class', 'success');
  
  }

} // end of controller