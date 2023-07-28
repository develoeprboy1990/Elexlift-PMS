<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Models\Job;
use App\Models\User;
use App\Models\Notification;
use Session;

class JobController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pagetitle='Jobs';
        if(Session::get('UserType') == 'Admin'){
            $jobs = Job::all();
        }
        else{
            $user = User::where('UserID',Session::get('UserID'))->first();
            $jobs = $user->jobs;
        }
        
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
        $users = User::where('UserType','User')->get();
        return view ('job.create',compact('pagetitle','users'));
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
        $input['created_by'] = session::get('UserID');

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

        $job = Job::create($input);

        $job->users()->attach($input['user_ids']);

        $userIds = $input['user_ids'];
        foreach($userIds as $userId){
            $notification = new Notification();
            $notification->user_id = $userId;
            $notification->job_id = $job->id;
            $notification->type = 'Job';
            $notification->save();
        }

        return redirect()->route('jobs.list')->with('error', 'Job Saved Successfully.')->with('class','success');
    }

    public function updateJobStatus(Request $request)
    {
        $userJob = DB::table('user_jobs')->where(['user_id' => Session::get('UserID'), 'job_id' => $request->job_id])->update(['reply' => $request->reply, 'status' => $request->job_status]);

        if($request->job_status == 'completed')
            $notification = Notification::where(['user_id' => Session::get('UserID'), 'job_id' => $request->job_id])->update(['read' => 1]);
        else
            $notification = Notification::where(['user_id' => Session::get('UserID'), 'job_id' => $request->job_id])->update(['read' => 0]);
        
        return redirect()->route('jobs.list')->with('error', 'Job status updated successfully!')->with('class','success');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $pagetitle = 'View Job';
        $job = Job::findOrFail($id);
        $userJob = DB::table('user_jobs')->where(['user_id' => Session::get('UserID'), 'job_id' => $job->id])->first();
        return view('job.show',compact('job','userJob','pagetitle'));
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
        $job = Job::findOrFail($id);
        $job->users()->detach();
        Notification::where('job_id',$id)->delete();
        $job->delete();
        return redirect()->route('jobs.list')->with('error','Job Deleted Successfully')->with('class','success');
    }
}
