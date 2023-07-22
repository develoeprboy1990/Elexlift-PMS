<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Models\Job;

class JobController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $jobs = Job::all();
        $pagetitle='Jobs';
        return view('job.index',compact('pagetitle','jobs'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $pagetitle='Add Job';

        $country = DB::table('country')->get();
        $tax_treatments = DB::table('tax_treatment')->get();
        $customers = DB::table('customers')->get();
        $estimates = DB::table('v_estimate_master')->get();
        $departments = DB::table('department')->get();
        $employee = DB::table('v_employee')->get();
        return view ('job.create',compact('pagetitle','estimates','departments','employee','customers','country','tax_treatments'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
        'name'=>'required',
        ],
        [
        'name.required' => 'Project Name is required',
        ]);

        $input = $request->all();

        if ($request->file('file'))
        {
          
             $this->validate($request, [

                'file' => 'required|mimes:jpeg,png,jpg,gif,svg,xlsx,pdf|max:1000',

            ],
            [
            'file.required' => 'Please upload file',
            ]);

             $file = $request->file('file');
             $input['file'] = time().'.'.$file->extension();

             $destinationPath = public_path('/documents/jobs');

             $file->move($destinationPath, $input['file']);

        }

        Job::create($input);

        return redirect('jobs-list')->with('error', 'Job Saved Successfully.')->with('class','success');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Job::findOrFail($id)->delete();
        return redirect('jobs-list')->with('error','Job Deleted Successfully')->with('class','success');
    }
}
