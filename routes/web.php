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


 
use App\Http\Controllers\KM;
use App\Http\Controllers\Accounts;
use App\Http\Controllers\EstimateController;
use App\Http\Controllers\ReportController;
use App\Http\Controllers\User;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\JobController;
use App\Http\Controllers\Documents;
use App\Http\Controllers\ChartOfAccount;

//HR
use App\Http\Controllers\HR;
use App\Http\Controllers\Employee;

//PMS
use App\Http\Controllers\Work;

 
   
 Route::get('/base1/',[KM::class,'base1']);
 Route::post('/base2/',[KM::class,'base2']);

 
 
 
Route::get('/',[Accounts::class,'Login']);
Route::get('/Login',[Accounts::class,'Login']);
Route::post('/UserVerify',[Accounts::class,'UserVerify']);


 
 Route::group(['middleware' => ['CheckAdmin']], function () {


Route::get('/Dashboard',[Accounts::class,'Dashboard']);


Route::get('/Prayer/',[KM::class,'Prayer']);
 


Route::get('/Invoice',[Accounts::class,'Invoice']);

Route::get('/InvoiceCreate',[Accounts::class,'InvoiceCreate']);
Route::get('/ajax_invoice',[Accounts::class,'ajax_invoice']);
 
Route::post('/InvoiceSave',[Accounts::class,'InvoiceSave']);
route::get('/InvoiceEdit/{id}',[Accounts::class,'InvoiceEdit']);
route::get('/InvoicePDF/{id}',[Accounts::class,'InvoicePDF']);
route::get('/InvoiceView/{id}',[Accounts::class,'InvoiceView']);

Route::post('/InvoiceUpdate',[Accounts::class,'InvoiceUpdate']);
route::get('/InvoiceDelete/{id}',[Accounts::class,'InvoiceDelete']);

Route::post('/Ajax_Balance',[Accounts::class,'Ajax_Balance']);
Route::post('/Ajax_VHNO',[Accounts::class,'Ajax_VHNO']);
Route::post('/ajax_invoice_vhno',[Accounts::class,'ajax_invoice_vhno']);
 
 
Route::get('/Voucher',[Accounts::class,'Voucher']);
Route::get('/VoucherCreate/{vouchertype}',[Accounts::class,'VoucherCreate']);
Route::post('/VoucherSave',[Accounts::class,'VoucherSave']);
Route::get('/ajax_voucher',[Accounts::class,'ajax_voucher']);
Route::get('/VoucherEdit/{id}',[Accounts::class,'VoucherEdit']);
Route::post('/VoucherUpdate',[Accounts::class,'VoucherUpdate']);
Route::get('/VoucherDelete/{id}',[Accounts::class,'VoucherDelete']);
Route::get('/VoucherView/{id}',[Accounts::class,'VoucherView']);

Route::get('/JV/',[Accounts::class,'JV']);
Route::post('/JVSave/',[Accounts::class,'JVSave']);


Route::get('/Item',[Accounts::class,'Item']);
Route::post('/ItemSave',[Accounts::class,'ItemSave']);
Route::get('/ItemEdit/{id}',[Accounts::class,'ItemEdit']);
Route::post('/ItemUpdate/',[Accounts::class,'ItemUpdate']);
Route::get('/ItemDelete/{id}',[Accounts::class,'ItemDelete']); 

Route::get('/ExpenseReport/',[Accounts::class,'ExpenseReport']);
Route::post('/ExpenseReport1/',[Accounts::class,'ExpenseReport1']);


Route::get('/User',[User::class,'Show']);
Route::post('/UserSave',[User::class,'UserSave']);
Route::get('/UserEdit/{id}',[User::class,'UserEdit']);
Route::post('/UserUpdate/',[User::class,'UserUpdate']);
Route::get('/UserDelete/{id}',[User::class,'UserDelete']); 



Route::get('/Supplier',[Accounts::class,'Supplier']);
Route::post('/SaveSupplier',[Accounts::class,'SaveSupplier']);
Route::get('/SupplierEdit/{id}',[Accounts::class,'SupplierEdit']);
Route::post('/SupplierUpdate/',[Accounts::class,'SupplierUpdate']);
Route::get('/SupplierDelete/{id}',[Accounts::class,'SupplierDelete']);


Route::get('/Parties',[Accounts::class,'Parties']);
Route::post('/SaveParties',[Accounts::class,'SaveParties']);
Route::get('/PartiesEdit/{id}',[Accounts::class,'PartiesEdit']);
Route::post('/PartiesUpdate/',[Accounts::class,'PartiesUpdate']);
Route::get('/PartiesDelete/{id}',[Accounts::class,'PartiesDelete']);

Route::get('/Customers',[Accounts::class,'Customers']);
Route::post('/SaveCustomer',[Accounts::class,'SaveCustomer']);
Route::get('/CustomerDelete/{id}',[Accounts::class,'CustomerDelete']);
Route::get('/CustomerEdit/{id}',[Accounts::class,'CustomerEdit']);
Route::post('/CustomerUpdate/',[Accounts::class,'CustomerUpdate']);

Route::get('/CheckUserRole1/{userid},{tablename},{action}',[Accounts::class,'CheckUserRole1']);




Route::get('/table',[Accounts::class,'table']);
Route::get('/datatable',[Accounts::class,'datatable']);



// Petty Cash

Route::get('/PettyCashCreate',[Accounts::class,'PettyCashCreate']);
Route::get('/PettyCash',[Accounts::class,'PettyCash']);
Route::get('/ajax_pettycash',[Accounts::class,'ajax_pettycash']);
Route::post('/PettyCashSave',[Accounts::class,'PettyCashSave']);
route::get('/PettyCashEdit/{id}',[Accounts::class,'PettyCashEdit']);
Route::post('/PettyCashUpdate',[Accounts::class,'PettyCashUpdate']);
Route::post('/Ajax_PVHNO',[Accounts::class,'Ajax_PVHNO']);


Route::get('/ChartOfAcc/',[ChartOfAccount::class,'ChartOfAcc']);
route::post('/ChartOfAccountSave/',[ChartOfAccount::class,'ChartOfAccountSave']);
route::post('/ChartOfAccountSaveL3/',[ChartOfAccount::class,'ChartOfAccountSaveL3']);
route::get('/ChartOfAccountDelete/{ChartOfAccountID}',[ChartOfAccount::class,'ChartOfAccountDelete']);
route::get('/ChartOfAccountEdit/{id}',[ChartOfAccount::class,'ChartOfAccountEdit']);
route::post('/ChartOfAccountUpdate/',[ChartOfAccount::class,'ChartOfAccountUpdate']);

route::get('/PartyLedger/',[Accounts::class,'PartyLedger']);
route::post('/PartyLedger1/',[Accounts::class,'PartyLedger1']);
route::post('/PartyLedger1PDF/',[Accounts::class,'PartyLedger1PDF']);

route::post('/PartySalesLedger1PDF/',[Accounts::class,'PartySalesLedger1PDF']);
route::post('/PartyLedger2PDF/',[Accounts::class,'PartyLedger2PDF']);
route::post('/PartyLedgerAccount1PDF/',[Accounts::class,'PartyLedgerAccount1PDF']);

route::post('/PartySalesLedger2PDF/',[Accounts::class,'PartySalesLedger2PDF']);



route::get('/SupplierLedger/',[Accounts::class,'SupplierLedger']);
route::get('/AdjustmentBalance/',[Accounts::class,'AdjustmentBalance']);
route::post('/AdjustmentBalanceSave/',[Accounts::class,'AdjustmentBalanceSave']);

route::get('/SupplierBalance/',[Accounts::class,'SupplierBalance']);
route::post('/SupplierBalance1/',[Accounts::class,'SupplierBalance1']);
route::post('/SupplierBalance1PDF/',[Accounts::class,'SupplierBalance1PDF']);


route::get('/PartyList/',[Accounts::class,'PartyList']);
route::get('/PartyListPDF/',[Accounts::class,'PartyListPDF']);
route::get('/OutStandingInvoice/',[Accounts::class,'OutStandingInvoice']);
route::post('/OutStandingInvoice1/',[Accounts::class,'OutStandingInvoice1']);
route::post('/OutStandingInvoice1PDF/',[Accounts::class,'OutStandingInvoice1PDF']);


route::get('/PartyWiseSale/',[Accounts::class,'PartyWiseSale']);
route::post('/PartyWiseSale1/',[Accounts::class,'PartyWiseSale1']);
route::post('/PartyWiseSale1PDF/',[Accounts::class,'PartyWiseSale1PDF']);

route::get('/YearlyPartyBalance/',[Accounts::class,'YearlyPartyBalance']);
route::post('/YearlyPartyBalance1/',[Accounts::class,'YearlyPartyBalance1']);




route::get('/PartyBalance/',[Accounts::class,'PartyBalance']);
route::post('/PartyBalance1/',[Accounts::class,'PartyBalance1']);
route::post('/PartyBalance1PDF/',[Accounts::class,'PartyBalance1PDF']);
route::post('/PartyBalanceAreawise2PDF/',[Accounts::class,'PartyBalanceAreawise2PDF']);
route::post('/PartySaleItemWise/',[Accounts::class,'PartySaleItemWise']);




route::get('/PartyYearlyBalance/',[Accounts::class,'PartyYearlyBalance']);
route::post('/PartyYearlyBalance1/',[Accounts::class,'PartyYearlyBalance1']);
route::post('/PartyYearlyBalance1PDF/',[Accounts::class,'PartyYearlyBalance1PDF']);


// supplier reports

route::get('/SupplierLedger/',[Accounts::class,'SupplierLedger']);
route::post('/SupplierLedger1/',[Accounts::class,'SupplierLedger1']);
route::post('/SupplierLedger1PDF/',[Accounts::class,'SupplierLedger1PDF']);
route::post('/SupplierBillLedger2PDF/',[Accounts::class,'SupplierBillLedger2PDF']);

route::get('/SupplierWiseSale/',[Accounts::class,'SupplierWiseSale']);
route::post('/SupplierWiseSale1/',[Accounts::class,'SupplierWiseSale1']);
route::post('/SupplierWiseSale1PDF/',[Accounts::class,'SupplierWiseSale1PDF']);

route::get('/TaxReport/',[Accounts::class,'TaxReport']);
route::post('/TaxReport1/',[Accounts::class,'TaxReport1']);
route::post('/TaxReport1PDF/',[Accounts::class,'TaxReport1PDF']);

route::get('/SalemanReport/',[Accounts::class,'SalemanReport']);
route::post('/SalemanReport1/',[Accounts::class,'SalemanReport1']);
route::post('/SalemanReport1PDF/',[Accounts::class,'SalemanReport1PDF']);

route::get('/AirlineSummary/',[Accounts::class,'AirlineSummary']);
route::post('/AirlineSummary1/',[Accounts::class,'AirlineSummary1']);
route::post('/AirlineSummary1PDF/',[Accounts::class,'AirlineSummary1PDF']);

// accounts report

route::get('/VoucherReport/',[Accounts::class,'VoucherReport']);
route::post('/VoucherReport1/',[Accounts::class,'VoucherReport1']);
route::post('/VoucherReport1PDF/',[Accounts::class,'VoucherReport1PDF']);

route::get('/CashbookReport/',[Accounts::class,'CashbookReport']);
route::post('/CashbookReport1/',[Accounts::class,'CashbookReport1']);
route::post('/CashbookReport1PDF/',[Accounts::class,'CashbookReport1PDF']);

route::get('/DaybookReport/',[Accounts::class,'DaybookReport']);
route::post('/DaybookReport1/',[Accounts::class,'DaybookReport1']);
route::post('/DaybookReport1PDF/',[Accounts::class,'DaybookReport1PDF']);


route::get('/GeneralLedger/',[Accounts::class,'GeneralLedger']);
route::post('/GeneralLedger1/',[Accounts::class,'GeneralLedger1']);
route::post('/GeneralLedger1PDF/',[Accounts::class,'GeneralLedger1PDF']);

route::get('/TrialBalance/',[Accounts::class,'TrialBalance']);
route::post('/TrialBalance1/',[Accounts::class,'TrialBalance1']);
route::post('/TrialBalance1PDF/',[Accounts::class,'TrialBalance1PDF']);


route::get('/TrialBalanceActivity/',[Accounts::class,'TrialBalanceActivity']);
route::post('/TrialBalanceActivity1/',[Accounts::class,'TrialBalanceActivity1']);
route::post('/TrialBalanceActivity1PDF/',[Accounts::class,'TrialBalanceActivity1PDF']);

route::get('/BalanceSheet/',[Accounts::class,'BalanceSheet']);
route::post('/BalanceSheet1/',[Accounts::class,'BalanceSheet1']);
route::post('/BalanceSheet1PDF/',[Accounts::class,'BalanceSheet1PDF']);

Route::get('/BalanceSheetDetail/{ChartOfAccountID}/{StartDat}/{EndDate}',[Accounts::class,'BalanceSheetDetail']);
Route::get('/JournalEntries/{ChartOfAccountID}/{StartDat}/{EndDate}',[Accounts::class,'JournalEntries']);


route::get('/TicketRegister/',[Accounts::class,'TicketRegister']);
route::post('/TicketRegister1/',[Accounts::class,'TicketRegister1']);
route::post('/TicketRegister1PDF/',[Accounts::class,'TicketRegister1PDF']);

route::get('/InvoiceSummary/',[Accounts::class,'InvoiceSummary']);
route::post('/InvoiceSummary1/',[Accounts::class,'InvoiceSummary1']);
route::post('/InvoiceSummary1PDF/',[Accounts::class,'InvoiceSummary1PDF']);

route::get('/ProfitAndLoss/',[Accounts::class,'ProfitAndLoss']);
route::post('/ProfitAndLoss1/',[Accounts::class,'ProfitAndLoss1']);
route::post('/ProfitAndLoss1PDF/',[Accounts::class,'ProfitAndLoss1PDF']);




route::get('/tmp/',[Accounts::class,'tmp']); 

Route::get('/Logout',[Accounts::class,'logout']);


 

route::get('/Role/{UserID}',[Accounts::class,'Role']);
 route::post('/RoleSave',[Accounts::class,'RoleSave']);
 route::get('/RoleView/{UserID}',[Accounts::class,'RoleView']);
 route::post('/RoleUpdate',[Accounts::class,'RoleUpdate']);

 route::get('/checkUserRole/{UserID}',[Accounts::class,'checkUserRole']);


 route::get('/UserProfile',[Accounts::class,'UserProfile']);
 route::get('/ChangePassword',[Accounts::class,'ChangePassword']);
 route::post('/UpdatePassword',[Accounts::class,'UpdatePassword']);



 route::get('/SalesInvoiceCreate/',[Accounts::class,'SalesInvoiceCreate']);
 route::post('/SaleInvoiceSave/',[Accounts::class,'SaleInvoiceSave']);
 route::get('/SaleInvoiceEdit/{id}',[Accounts::class,'SaleInvoiceEdit']);
 route::post('/SaleInvoiceUpdate/',[Accounts::class,'SaleInvoiceUpdate']);
 route::get('/SaleInvoiceDelete/{id}',[Accounts::class,'SaleInvoiceDelete']);
 route::get('/SaleInvoiceView/{id}',[Accounts::class,'SaleInvoiceView']);
 route::get('/SaleInvoiceViewPDF/{id}',[Accounts::class,'SaleInvoiceViewPDF']);
 
 
 

 route::get('/DeliveryChallan/',[Accounts::class,'DeliveryChallan']);


 route::get('/Payment/',[Accounts::class,'Payment']);
 route::get('/ajax_payment',[Accounts::class,'ajax_payment']);
 
 route::get('/PaymentCreate/',[Accounts::class,'PaymentCreate']);

Route::get('/Ajax_PartyInvoices/{id}',[Accounts::class,'Ajax_PartyInvoices']);
route::get('/PaymentViewPDF/{id}',[Accounts::class,'PaymentViewPDF']);


route::get('/DeliveryChallan/',[Accounts::class,'DeliveryChallan']);
route::get('/ajax_deliverychallan/',[Accounts::class,'Ajax_DeliveryChallan']);
route::get('/DeliveryChallanCreate/',[Accounts::class,'DeliveryChallanCreate']);
route::post('/DeliveryChallanSave/',[Accounts::class,'DeliveryChallanSave']);
route::get('/DeliveryChallanView/{id}',[Accounts::class,'DeliveryChallanView']);
route::get('/DeliveryChallanViewPDF/{id}',[Accounts::class,'DeliveryChallanViewPDF']);
route::get('/DeliveryChallanEdit/{id}',[Accounts::class,'DeliveryChallanEdit']);
route::post('/DeliveryChallanUpdate/',[Accounts::class,'DeliveryChallanUpdate']);



route::get('/DeliveryChallanDelete/{id}',[Accounts::class,'DeliveryChallanDelete']);
 
 
 route::get('/PaymentCreate/',[Accounts::class,'PaymentCreate']);
route::post('/PaymentSave/',[Accounts::class,'PaymentSave']);
route::get('/PaymentDelete/{id}',[Accounts::class,'PaymentDelete']);

// bulk payment from parties

 route::get('/BulkPaymentCreate/',[Accounts::class,'BulkPaymentCreate']);
 route::post('/BulkPaymentSearch/',[Accounts::class,'BulkPaymentSearch']);
 route::post('/BulkPaymentSave/',[Accounts::class,'BulkPaymentSave']);



 route::get('/CreditNote/',[Accounts::class,'CreditNote']);
 route::get('/ajax_creditnote',[Accounts::class,'ajax_creditnote']);

 route::get('/CreditNoteCreate',[Accounts::class,'CreditNoteCreate']);
 route::post('/CreditNoteSave',[Accounts::class,'CreditNoteSave']);
 route::get('/CreditNoteEdit/{id}',[Accounts::class,'CreditNoteEdit']);
 route::post('/CreditNoteUpdate',[Accounts::class,'CreditNoteUpdate']);
 route::get('/CreditNoteDelete/{id}',[Accounts::class,'CreditNoteDelete']);
 route::get('/CreditNoteView/{id}',[Accounts::class,'CreditNoteView']);
 route::get('/CreditNoteViewPDF/{id}',[Accounts::class,'CreditNoteViewPDF']);



// ..............Bill / Purchase.............
route::get('/Bill/',[Accounts::class,'Bill']);
route::get('/ajax_bill/',[Accounts::class,'Ajax_bill']);
route::get('/BillCreate/',[Accounts::class,'BillCreate']);
route::post('/BillSave/',[Accounts::class,'BillSave']);
route::get('/BillEdit/{id}',[Accounts::class,'BillEdit']);
route::post('/BillUpdate/',[Accounts::class,'BillUpdate']);
route::get('/BillDelete/{id}',[Accounts::class,'BillDelete']);
route::get('/BillView/{id}',[Accounts::class,'BillView']);
route::get('/BillViewPDF/{id}',[Accounts::class,'BillViewPDF']);

// ..............Purchase Return .............
 route::get('/DebitNote/',[Accounts::class,'DebitNote']);
 route::get('/ajax_debitnote/',[Accounts::class,'ajax_debitnote']);
 route::get('/DebitNoteCreate/',[Accounts::class,'DebitNoteCreate']);
 route::post('/DebitNoteSave/',[Accounts::class,'DebitNoteSave']);
 route::get('/DebitNoteEdit/{id}',[Accounts::class,'DebitNoteEdit']);
 route::post('/DebitNoteUpdate/',[Accounts::class,'DebitNoteUpdate']);
 route::get('/DebitNoteDelete/{id}',[Accounts::class,'DebitNoteDelete']);
 route::get('/DebitNoteView/{id}',[Accounts::class,'DebitNoteView']);
 route::get('/DebitNoteViewPDF/{id}',[Accounts::class,'DebitNoteViewPDF']);

// ..............Estimate.............
route::get('/Estimate/',[EstimateController::class,'Estimate']);

route::get('/EstimateCreate/',[EstimateController::class,'EstimateCreate']);

route::post('/EstimateSave/',[EstimateController::class,'EstimateSave']);
route::get('/ajax_estimate/',[EstimateController::class,'ajax_estimate']);

route::get('/EstimateDelete/{id}',[EstimateController::class,'EstimateDelete']);
route::get('/EstimateView/{id}',[EstimateController::class,'EstimateView']);
route::get('/EstimateEdit/{id}',[EstimateController::class,'EstimateEdit']);
route::post('/EstimateUpdate/',[EstimateController::class,'EstimateUpdate']);
route::get('/BlankReport/',[Accounts::class,'BlankReport']);
route::get('/EstimateViewPDF/{id}',[EstimateController::class,'EstimateViewPDF']);


//.............Complete Journal..............
route::get('/completejournal',[ReportController::class,'completejournal']);


// ............Company............
Route::get('/Company',[CompanyController::class,'Company']);
Route::post('/SaveCompany',[CompanyController::class,'SaveCompany']);
Route::get('/CompanyEdit/{id}',[CompanyController::class,'CompanyEdit']);
Route::post('/CompanyUpdate/',[CompanyController::class,'CompanyUpdate']);
Route::get('/CompanyDelete/{id}',[CompanyController::class,'CompanyDelete']);

// //................. PAYMENT FOR PURCHASES....................

route::get('/PurchasePayment/',[Accounts::class,'PurchasePayment']);
route::get('/ajax_purchasepaymenttable',[Accounts::class,'ajax_purchasepaymenttable']);
route::get('/PurchasePaymentCreate/',[Accounts::class,'PurchasePaymentCreate']);
Route::POST('/Ajax_SupplierInvoices/',[Accounts::class,'Ajax_SupplierInvoices']);

route::post('/PurchasePaymentSave/',[Accounts::class,'PurchasePaymentSave']);
route::get('/PurchasePaymentDelete/{id}',[Accounts::class,'PurchasePaymentDelete']);
route::get('/PurchasePaymentView/{id}',[Accounts::class,'PurchasePaymentView']);
// // Ajax_SupplierInvoices


//...................purchaseorder...........................
 route::get('/PurchaseOrder/',[Accounts::class,'PurchaseOrder']);
 route::get('/ajax_purchaseorder/',[Accounts::class,'ajax_purchaseorder']);
 route::get('/PurchaseOrderCreate/',[Accounts::class,'PurchaseOrderCreate']);
 route::post('/PurchaseOrderSave/',[Accounts::class,'PurchaseOrderSave']);
 route::get('/PurchaseOrderEdit/{id}',[Accounts::class,'PurchaseOrderEdit']);
 route::post('/PurchaseOrderUpdate/',[Accounts::class,'PurchaseOrderUpdate']);
 route::get('/PurchaseOrderDelete/{id}',[Accounts::class,'PurchaseOrderDelete']);
 route::get('/PurchaseOrderView/{id}',[Accounts::class,'PurchaseOrderView']);
 route::get('/PurchaseOrderViewPDF/{id}',[Accounts::class,'PurchaseOrderViewPDF']);


// ..............attachment iframe for all invoices ......
route::get('/Attachment',[Accounts::class,'Attachment']);
Route::post('AttachmentSave',[Accounts::class,'AttachmentSave']);
Route::get('AttachmentDelete/{id}/{filename}',[Accounts::class,'AttachmentDelete']);

Route::get('AttachmentRead', [Accounts::class,'AttachmentRead']);



//  ................Trail Report.............
route::get('/trialreportsearch', [ReportController::class,'trialreportsearch']);
route::post('/trialreport', [ReportController::class,'trialreport']);


// ..................journal report...................

route::get('/generalReport', [ReportController::class,'generalReport']);
route::get('/showGeneralReport', [ReportController::class,'showGeneralReport']);
route::post('/searchjournal', [ReportController::class,'searchByDate']);


route::get('/DailyIncomeExpense/',[Accounts::class,'DailyIncomeExpense']);
route::post('/DailyIncomeExpense1PDF/',[Accounts::class,'DailyIncomeExpense1PDF']);


//  ............Payable..............
route::get('/payablesearch', [ReportController::class,'payablesearch']);
route::post('/payable', [ReportController::class,'payable']);


//  ............Paymentsmade..............
route::get('/paymentsmadesearch', [ReportController::class,'paymentsmadesearch']);
route::post('/paymentsmade', [ReportController::class,'paymentsmade']);


//  ............receiveabledetail..............
route::get('/receiveabledetailsearch', [ReportController::class,'receiveabledetailsearch']);
route::post('/receiveabledetail', [ReportController::class,'receiveabledetail']);

//  ............receiveabledetailsummary..............
route::get('/receiveabledetailsummarysearch', [ReportController::class,'receiveabledetailsummarysearch']);
route::post('/receiveabledetailsummary', [ReportController::class,'receiveabledetailsummary']);

//  ............Vendor Credits..............
route::get('/vendorcreditsearch', [ReportController::class,'vendorcreditsearch']);
route::post('/vendorcredits', [ReportController::class,'vendorcredits']);

route::get('/kashif/',[Accounts::class,'kashif']);
route::get('/kupload/',[Accounts::class,'kupload']);

route::get('/ReconcileReport/',[Accounts::class,'ReconcileReport']);
route::post('/ReconcileReport1/',[Accounts::class,'ReconcileReport1']);


route::get('/ReconcileUpdate/{status}/{id}',[Accounts::class,'ReconcileUpdate']);



Route::get('/Inventory/',[Accounts::class,'Inventory']);
Route::post('/Inventory1/',[Accounts::class,'Inventory1']);

Route::post('/Inventory1PDF/',[Accounts::class,'Inventory1PDF']);
Route::get('/lnventoryDetail/{itemid}/{startdate}/{enddate}',[Accounts::class,'lnventoryDetail']);

route::get('/km/{id}',[Accounts::class,'km']);


 // =====================================Expense Section=====================================
Route::get('/Expense',[Accounts::class,'Expense']);
route::get('/ExpenseCreate/',[Accounts::class,'ExpenseCreate']);
Route::get('/ajax_Expense',[Accounts::class,'ajax_Expense']);

Route::post('/ExpenseSave',[Accounts::class,'ExpenseSave']);
route::get('/ExpenseEdit/{id}',[Accounts::class,'ExpenseEdit']);
route::get('/ExpensePDF/{id}',[Accounts::class,'ExpensePDF']);
route::get('/ExpenseView/{id}',[Accounts::class,'ExpenseView']);

Route::post('/ExpenseUpdate',[Accounts::class,'ExpenseUpdate']);
route::get('/ExpenseDelete/{id}',[Accounts::class,'ExpenseDelete']); 

route::get('/TaxReportSupplier/',[Accounts::class,'TaxReportSupplier']);
route::post('/TaxReportSupplier1/',[Accounts::class,'TaxReportSupplier1']);
route::post('/TaxReportSupplier1PDF/',[Accounts::class,'TaxReportSupplier1PDF']);


route::get('/TaxOverallReport/',[Accounts::class,'TaxOverallReport']);
route::post('/TaxOverallReport1/',[Accounts::class,'TaxOverallReport1']);
route::post('/TaxOverallReport1PDF/',[Accounts::class,'TaxOverallReport1PDF']);
     

// import item from excel
 route::post('/ItemImport/',[Accounts::class,'ItemImport']);
 route::get('/base64/',[Accounts::class,'base64']);



Route::get('/PartyAgingPDF/',[Accounts::class,'PartyAgingPDF']);




// document category
route::get('/DocumentCategory',[Documents::class,'DocumentCategory']);
 route::Post('/DocumentCategorySave',[Documents::class,'DocumentCategorySave']);
 route::get('/DocumentCategoryDelete/{id}',[Documents::class,'DocumentCategoryDelete']);
 route::get('/DocumentCategoryEdit/{id}',[Documents::class,'DocumentCategoryEdit']);
 route::post('/DocumentCategoryUpdate/',[Documents::class,'DocumentCategoryUpdate']);

 
//Document section
route::get('/Document/{id?}',[Documents::class,'Document']);
route::post('/DocumentSave',[Documents::class,'DocumentSave']);
route::get('/DocumentDelete/{id}/{file}',[Documents::class,'DocumentDelete']);



Route::get('/DBDump/',[Accounts::class,'DBDump']);


Route::get('Backup', function () {
	
	/* php artisan migrate */
    \Artisan::call('database:backup');
    dd("Done");
});




Route::post('/DBDump/',[Accounts::class,'DBDump']);
Route::post('/Excel/',[Accounts::class,'Excel']);

Route::get('/SalesmanExport/{city}',[Accounts::class,'SalesmanExport']);

Route::get('/CitywiseReport/',[Accounts::class,'CitywiseReport']);
 
   
//HR ROUTS



Route::get('/Employee',[HR::class,'Employee']);
Route::get('/ajax_employee',[HR::class,'ajax_employee']);
Route::get('/HRDashboard',[HR::class,'Dashboard'])->name('kashif');
Route::get('/EmployeeCreate',[HR::class,'EmployeeCreate']);
Route::post('/EmployeeSave',[HR::class,'EmployeeSave']);
Route::get('/EmployeeDelete/{id}',[HR::class,'EmployeeDelete']);
Route::get('/Login',[HR::class,'Login']);
Route::get('/EmployeeDetail/{id?}',[HR::class,'EmployeeDetail']);
Route::get('/EmployeeEdit/{id}',[HR::class,'EmployeeEdit']);
Route::post('/EmployeeUpdate',[HR::class,'EmployeeUpdate']);

 route::post('/EmpSalarySave/',[HR::class,'EmpSalarySave']);
 route::post('/EmpSalaryUpdate/',[HR::class,'EmpSalaryUpdate']);
 route::post('/EmpAllowanceSave/',[HR::class,'EmpAllowanceSave']);
 route::get('/EmpAllowanceDelete/{id}',[HR::class,'EmpAllowanceDelete']);
 route::get('/EmployeeLoan/',[HR::class,'EmployeeLoan']);
 route::post('/LoanSave/',[HR::class,'LoanSave']);
 route::get('/LoanDelete/{id}',[HR::class,'LoanDelete']);
 route::get('/LoanInstallmentDelete/{id}',[HR::class,'LoanInstallmentDelete']);
 





 // branch section
 route::get('/Branches',[HR::class,'Branches']);
 route::Post('/BranchSave',[HR::class,'BranchSave']);
 route::get('/BranchDelete/{id}',[HR::class,'BranchDelete']);
 route::get('/BranchEdit/{id}',[HR::class,'BranchEdit']);
 route::post('/BranchUpdate/',[HR::class,'BranchUpdate']);

 // Department section
 route::get('/Departments',[HR::class,'Departments']);
 route::Post('/DepartmentSave',[HR::class,'DepartmentSave']);
 route::get('/DepartmentDelete/{id}',[HR::class,'DepartmentDelete']);
 route::get('/DepartmentEdit/{id}',[HR::class,'DepartmentEdit']);
 route::post('/DepartmentUpdate/',[HR::class,'DepartmentUpdate']);

 
 // Department section
 route::get('/JobTitle',[HR::class,'JobTitle']);
 route::Post('/JobTitleSave',[HR::class,'JobTitleSave']);
 route::get('/JobTitleDelete/{id}',[HR::class,'JobTitleDelete']);
 route::get('/JobTitleEdit/{id}',[HR::class,'JobTitleEdit']);
 route::post('/JobTitleUpdate/',[HR::class,'JobTitleUpdate']);



// ............Company............
Route::get('/Company',[CompanyController::class,'Company']);
Route::post('/SaveCompany',[CompanyController::class,'SaveCompany']);
Route::get('/CompanyEdit/{id}',[CompanyController::class,'CompanyEdit']);
Route::post('/CompanyUpdate/',[CompanyController::class,'CompanyUpdate']);
Route::get('/CompanyDelete/{id}',[CompanyController::class,'CompanyDelete']);

// document
route::get('/DocumentCategory',[HR::class,'DocumentCategory']);
 route::Post('/DocumentCategorySave',[HR::class,'DocumentCategorySave']);
 route::get('/DocumentCategoryDelete/{id}',[HR::class,'DocumentCategoryDelete']);
 route::get('/DocumentCategoryEdit/{id}',[HR::class,'DocumentCategoryEdit']);
 route::post('/DocumentCategoryUpdate/',[HR::class,'DocumentCategoryUpdate']);

 

route::get('/Document/{id?}',[HR::class,'Document']);
route::post('/DocumentSave',[HR::class,'DocumentSave']);
route::get('/DocumentDelete/{id}/{file}',[HR::class,'DocumentDelete']);


// Fleet manage

Route::get('/Fleet/',[HR::class,'Fleet']);
Route::post('/FleetSave/',[HR::class,'FleetSave']);
Route::get('/FleetEdit/{id}',[HR::class,'FleetEdit']);
Route::post('/FleetUpdate/',[HR::class,'FleetUpdate']);
route::get('/FleetDelete/{id}',[HR::class,'FleetDelete']);
route::get('/FleetDetail/{id?}',[HR::class,'FleetDetail']);
Route::post('/FleetDetailSave/',[HR::class,'FleetDetailSave']);
route::get('/FleetDetailDelete/{id}',[HR::class,'FleetDetailDelete']);


Route::get('/DailyReport/',[HR::class,'DailyReport']);
Route::post('/DailyReport1/',[HR::class,'DailyReport1']);

Route::get('/NoticeBoard/',[HR::class,'NoticeBoard']);
Route::post('/NoticeBoardSave/',[HR::class,'NoticeBoardSave']);
Route::get('/NoticeBoardView/{id}',[HR::class,'NoticeBoardView']);
Route::get('/NoticeBoardEdit/{id}',[HR::class,'NoticeBoardEdit']);
Route::post('/NoticeBoardUpdate/',[HR::class,'NoticeBoardUpdate']);





 // FCB section
 route::get('/FCB',[HR::class,'FCB']);

route::post('/FCBPrint/',[HR::class,'FCBPrint']);
 

route::get('/FCBMonth/{type}',[HR::class,'FCBMonth']);
route::post('/FCBSetMonthName/',[HR::class,'FCBSetMonthName']);
 
route::get('/FCBView/',[HR::class,'FCBView']); 
route::post('/Ajax_FCBMonthName/',[HR::class,'Ajax_FCBMonthName']); 

 route::Post('/FCBSave',[HR::class,'FCBSave']);
 route::get('/FCBDelete/{id}',[HR::class,'FCBDelete']);
 route::get('/FCBEdit/{id}',[HR::class,'FCBEdit'])->name('edit-fcb');
 route::post('/FCBUpdate/',[HR::class,'FCBUpdate']);

 
 route::get('/Role/{UserID}',[HR::class,'Role']);
 route::post('/RoleSave',[HR::class,'RoleSave']);
 route::get('/RoleView/{UserID}',[HR::class,'RoleView']);
 route::post('/RoleUpdate',[HR::class,'RoleUpdate']);

 route::get('/checkUserRole/{UserID}',[HR::class,'checkUserRole']);


 route::get('/Leave/',[HR::class,'Leave']);
 route::post('/LeaveSave/',[HR::class,'LeaveSave']);
 route::get('/ajax_leave',[HR::class,'ajax_leave']);
 route::get('/LeaveEdit/{id}',[HR::class,'LeaveEdit']);
 route::post('/LeaveUpdate',[HR::class,'LeaveUpdate']);

 route::get('/LeaveDelete/{id}',[HR::class,'LeaveDelete']);
 route::get('/LeaveDetail/{id}',[HR::class,'LeaveDetail']);
 
 route::get('/Letter/',[HR::class,'Letter']);
 route::post('/save_letter/',[HR::class,'save_letter']);
 route::get('/letter_delete/{id}',[HR::class,'letter_delete']);
 route::get('/letter_edit/{LetterID}',[HR::class,'letter_edit']);
 route::post('/letter_update/',[HR::class,'letter_update']);
 route::get('/AttendanceImport',[HR::class,'AttendanceImport']);
 route::post('/Import',[HR::class,'Import'])->name('Import');

 route::get('/EmployeeAttendance/',[HR::class,'EmployeeAttendance']);

 route::get('/EmployeeSalary/',[HR::class,'EmployeeSalary']);
 route::get('/EmployeeComission/{EmployeeID}/{MonthName}',[HR::class,'EmployeeComission']);
 route::get('/EmployeeLetters/',[HR::class,'EmployeeLetters']);
 route::post('/letter_issue_preview/',[HR::class,'letter_issue_preview']);
 route::post('/letter_issue_save/',[HR::class,'letter_issue_save']);
 route::get('/issue_letter_delete/{id}',[HR::class,'issue_letter_delete']);
 route::get('/issue_letter_edit/{id}',[HR::class,'issue_letter_edit']);
 route::post('/issue_letter_update',[HR::class,'issue_letter_update']);
 route::get('/issue_letter_print/{issue_letter_id}',[HR::class,'issue_letter_print']);

 route::get('/EmployeeDocuments/',[HR::class,'EmployeeDocuments']);
 route::post('/EmployeeDocumentUpload/',[HR::class,'EmployeeDocumentUpload']);
 route::get('/EmployeeDocumentDelete/{id}',[HR::class,'EmployeeDocumentDelete']);


 route::get('/EmployeeLeaveReport/',[HR::class,'EmployeeLeaveReport']);

route::get('/SalarySlip/{id?}',[HR::class,'SalarySlip']);


 route::post('/IssueLetter/',[HR::class,'IssueLetter']);

 route::get('/EmployeeFCB/',[HR::class,'EmployeeFCB']);
 route::get('/EmployeeWarningLeter/',[HR::class,'EmployeeWarningLeter']);
 route::get('/CalculateComission/',[HR::class,'CalculateComission']);
 route::get('/Salary/',[HR::class,'Salary']);
 route::post('/Salary2/',[HR::class,'Salary2']);
 route::post('/SaveSalary/',[HR::class,'SaveSalary']);
 route::get('/ViewSalary/',[HR::class,'ViewSalary']);
 route::post('/SearchSalary/',[HR::class,'SearchSalary']);
 route::get('/SalaryPrint/{MonthName}/{BranchID}',[HR::class,'SalaryPrint']);
 route::get('/SalaryDelete/{id}',[HR::class,'SalaryDelete']);
 route::get('/SalaryEdit/{id}',[HR::class,'SalaryEdit']);
 route::post('/SalaryUpdate',[HR::class,'SalaryUpdate']);


 route::get('/EU/',[HR::class,'EU']);
 route::Post('/EUSave/',[HR::class,'EUSave']);

 route::get('/EUEdit/{EuID}',[HR::class,'EUEdit']);
 route::Post('/EUUpdate/',[HR::class,'EUUpdate']);
 
 route::get('/EUView/{EuID}',[HR::class,'EUView']);

 route::get('/EUDelete/{id}',[HR::class,'EUDelete']);
 
 route::get('/EmployeeTeam',[HR::class,'EmployeeTeam']);
 route::get('/Team',[HR::class,'Team']);
 


 route::get('/VisaAlert',[HR::class,'VisaAlert']);
 route::get('/PassportAlert',[HR::class,'PassportAlert']);
 route::get('/LeaveAlert',[HR::class,'LeaveAlert']);
 route::get('/AttendanceAlert',[HR::class,'AttendanceAlert']);
 

 route::get('/UserProfile',[HR::class,'UserProfile']);
 route::get('/ChangePassword',[HR::class,'ChangePassword']);
 route::post('/UpdatePassword',[HR::class,'UpdatePassword']);


route::get('/Users/',[HR::class,'Users']);
route::post('/SaveUser/',[HR::class,'SaveUser']);
route::get('/EditUser/{userid}',[HR::class,'EditUser']);
route::post('/UpdateUser/',[HR::class,'UpdateUser']);
route::get('/DeleteUser/{userid}',[HR::class,'DeleteUser']);

 

// FCB section
Route::get('/FCBAdd', [FCB::class,'FCBAdd']);
Route::post('/FCBAdd', [FCB::class,'saveFCB']);
Route::get('/FCBListing', [FCB::class,'fcbListing']);
Route::get('/filterWiseFCBListing', [FCB::class,'searchFcbListing']);
Route::get('/getBranchWiseEmployees', [FCB::class,'getBranchWiseEmployees']);
Route::get('/checkDuplicateIds', [FCB::class,'checkDuplicateIds']);
Route::get('/fcbEdit/{id}',[FCB::class,'editFcb'])->name('fcb.edit');
Route::post('/fcbUpdate',[FCB::class,'updateFcb'])->name('fcb.update');
Route::get('/fcbDelete/{id}',[FCB::class,'fcbDelete']);

// Live Account section
Route::get('/LiveAccountAdd', [LiveAccount::class,'LiveAccountAdd']);
Route::post('/LiveAccountAdd', [LiveAccount::class,'saveLiveAccount']);
Route::get('/LiveAccountListing', [LiveAccount::class,'liveAccountListing']);
Route::get('/filterWiseLiveAccountListing', [LiveAccount::class,'searchLiveAccountListing']);
Route::get('/checkDuplicateIdsInLiveAccounts', [LiveAccount::class,'checkDuplicateIdsInLiveAccounts']);
Route::get('/liveAccountEdit/{id}',[LiveAccount::class,'editLiveAccount'])->name('live_account.edit');
Route::post('/liveAccountUpdate',[LiveAccount::class,'updateLiveAccount'])->name('liveAccount.update');

 // Month Setting section
Route::get('/CurrentTarget',[MonthlyTarget::class,'CurrentTarget']);
Route::post('/CurrentTarget',[MonthlyTarget::class,'MonthlyTargetSave']);
Route::get('/TargetList',[MonthlyTarget::class,'TargetList']);
Route::get('/filterWiseTargetListing',[MonthlyTarget::class,'searchTargetListing']);
Route::get('/monthlyTarget/{id}',[MonthlyTarget::class,'MonthlyTargetEdit'])->name('edit-monthly-target');
Route::post('/CurrentTargetUpdate',[MonthlyTarget::class,'MonthlyTargetUpdate']);
Route::get('/monthlyTargetDelete/{id}',[MonthlyTarget::class,'MonthlyTargetDelete']);


// Reports section
Route::get('/TopAgentReport', [FCBReports::class,'TopAgentReport']);
Route::post('/TopAgentReport', [FCBReports::class,'SearchTopAgentReport']);
Route::get('/YearlyReport', [FCBReports::class,'YearlyReport']);
Route::post('/YearlyReport', [FCBReports::class,'SearchYearlyReport']);
Route::get('/QuarterlyReport', [FCBReports::class,'QuarterlyReport']);
Route::post('/QuarterlyReport', [FCBReports::class,'SearchQuarterlyReport']);

Route::get('/TopLiveAccount', [FCBReports::class,'TopLiveAccount']);
Route::post('/TopLiveAccount', [FCBReports::class,'SearchTopLiveAccount']);

Route::get('/InvoiceSample/',[Accounts::class,'InvoiceSample']);

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
Route::get('/jobs-list',[JobController::class,'index']);
Route::get('/add-job',[JobController::class,'create']);
Route::post('/saveJob',[JobController::class,'store']);
Route::get('/deleteJob/{id}',[JobController::class,'destroy']);


   });  
// middleware end

 route::get('/StaffDashboard/',[Employee::class,'StaffDashboard']);
 route::get('/StaffDocuments/',[Employee::class,'StaffDocuments']);
 route::get('/StaffSalary/',[Employee::class,'StaffSalary']);
 route::get('/StaffComission/{EmployeeID}/{MonthName}',[Employee::class,'StaffComission']);
 route::get('/StaffLetters/',[Employee::class,'StaffLetters']);
 route::get('/StaffLeave/',[Employee::class,'StaffLeave']);
 route::get('/ajax_StaffLeave/',[Employee::class,'ajax_StaffLeave']);
 route::post('/StaffLeaveSave/',[Employee::class,'StaffLeaveSave']);




 route::get('/ajax_leave_validate/{leavetypeid}/{employeeid}',[Employee::class,'ajax_leave_validate']);


 route::get('/StaffLeaveDelete/{id}',[Employee::class,'StaffLeaveDelete']);
 route::get('/StaffAttendance/',[Employee::class,'StaffAttendance']);
 route::get('/StaffFCB/',[Employee::class,'StaffFCB']);
 route::get('/StaffTeam/',[Employee::class,'StaffTeam']);
 route::get('/StaffDailyReport/',[Employee::class,'StaffDailyReport']);
 route::post('/DailyReportSave/',[Employee::class,'DailyReportSave']);
 route::get('/StaffDailyReportDelete/{id}',[Employee::class,'StaffDailyReportDelete']);
 route::get('/StaffDailyReportEdit/{id}',[Employee::class,'StaffDailyReportEdit']);
 route::post('/DailyReportUpdate/',[Employee::class,'DailyReportUpdate']);
 
Route::get('/StaffLead/',[Employee::class,'StaffLead']);
Route::post('/StaffLeadSave/',[Employee::class,'StaffLeadSave']);
Route::get('/StaffLeadDelete/{id}',[Employee::class,'StaffLeadDelete']);

Route::get('/StaffDeal/',[Employee::class,'StaffDeal']);
Route::post('/StaffDealSave/',[Employee::class,'StaffDealSave']);
Route::get('/StaffDealDelete/{id}',[Employee::class,'StaffDealDelete']);

Route::get('/StaffTarget/',[Employee::class,'StaffTarget']);
Route::post('/StaffTargetSave/',[Employee::class,'StaffTargetSave']);
Route::get('/StaffTargetDelete/{id}',[Employee::class,'StaffTargetDelete']);


Route::get('/StaffTargetReply/{id}',[Employee::class,'StaffTargetReply']);
Route::post('/StaffTargetReplySave/',[Employee::class,'StaffTargetReplySave']);
Route::get('/StaffTargetReplyDelete/{id}',[Employee::class,'StaffTargetReplyDelete']);

route::get('/OMDashboard/',[OM::class,'Dashboard']);



Route::get('/logout',[Accounts::class,'logout']);


route::post('/SendEmail/',[HR::class,'SendEmail']);


route::get('/ComposeEmail/{EmployeeID}',[HR::class,'ComposeEmail']);




route::get('/ForgotPassword/',[HR::class,'ForgotPassword']);
route::post('/SendForgotEmail/',[HR::class,'SendForgotEmail']);
route::get('/EmailPin/',[HR::class,'EmailPin']);
route::post('/NewPassword/',[HR::class,'NewPassword']);
route::post('/UpdateNewPassword/',[HR::class,'UpdateNewPassword']);

route::get('/DepositExport/{type}',[HR::class,'DepositExport']);
 


// staff notice boad

Route::get('/StaffNoticeBoard/',[Employee::class,'StaffNoticeBoard']);
Route::get('/StaffNoticeBoardView/{id}',[Employee::class,'StaffNoticeBoardView']);

