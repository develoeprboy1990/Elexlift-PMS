<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Accounts;
use App\Http\Controllers\User;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\JobController;
;

//PMS
use App\Http\Controllers\Work;


 
 
 
Route::get('/',[Accounts::class,'Login']);
Route::get('/Login',[Accounts::class,'Login']);
Route::post('/UserVerify',[Accounts::class,'UserVerify']);


 
 Route::group(['middleware' => ['CheckAdmin']], function () {


Route::get('/Dashboard',[Accounts::class,'Dashboard']);



Route::get('/User',[User::class,'Show']);
Route::post('/UserSave',[User::class,'UserSave']);
Route::get('/UserEdit/{id}',[User::class,'UserEdit']);
Route::post('/UserUpdate/',[User::class,'UserUpdate']);
Route::get('/UserDelete/{id}',[User::class,'UserDelete']); 

 route::get('/UserProfile',[Accounts::class,'UserProfile']);
 route::get('/ChangePassword',[Accounts::class,'ChangePassword']);
 route::post('/UpdatePassword',[Accounts::class,'UpdatePassword']);


// ............Company............
Route::get('/Company',[CompanyController::class,'Company']);
Route::post('/SaveCompany',[CompanyController::class,'SaveCompany']);
Route::get('/CompanyEdit/{id}',[CompanyController::class,'CompanyEdit']);
Route::post('/CompanyUpdate/',[CompanyController::class,'CompanyUpdate']);
Route::get('/CompanyDelete/{id}',[CompanyController::class,'CompanyDelete']);


Route::get('Backup', function () {
	
	/* php artisan migrate */
    \Artisan::call('database:backup');
    dd("Done");
});




Route::post('/DBDump/',[Accounts::class,'DBDump']);
Route::post('/Excel/',[Accounts::class,'Excel']);

//Projects
Route::get('/Projects',[Work::class,'Projects']);
Route::get('/AddProject',[Work::class,'AddProject']);
Route::post('/SaveProject',[Work::class,'SaveProject']);
Route::get('/ProjectDelete/{id}',[Work::class,'ProjectDelete']);
Route::get('/ProjectEdit/{id}',[Work::class,'ProjectEdit']);
Route::post('/ProjectUpdate/',[Work::class,'ProjectUpdate']);
route::get('/ProjectView/{id}',[Work::class,'ProjectView']);
route::get('/ProjectViewPDF/{id}',[Work::class,'EstimateViewPDF']);


//Tasks
Route::get('/Tasks',[Work::class,'Tasks']);
Route::get('/AddTask',[Work::class,'AddTask']);
Route::post('/SaveTask',[Work::class,'SaveTask']);
Route::get('/TaskDelete/{id}',[Work::class,'TaskDelete']);
Route::get('/TaskEdit/{id}',[Work::class,'TaskEdit']);
Route::post('/TaskUpdate/',[Work::class,'TaskUpdate']);
route::get('/TaskView/{id}',[Work::class,'TaskView']);



//Jobs
Route::get('/JobList',[JobController::class,'index'])->name('jobs.list');
Route::get('/AddJob',[JobController::class,'create']);
Route::post('/SaveJob',[JobController::class,'store']);
Route::post('/UpdateJobStatus',[JobController::class,'updateJobStatus'])->name('job.updateStatus');
Route::get('/ViewJob/{id}',[JobController::class,'show']);
Route::get('DeleteJob/{id}',[JobController::class,'destroy']);


});  
// middleware end
