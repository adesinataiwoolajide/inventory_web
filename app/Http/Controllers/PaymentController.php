<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\{Order,OrderDetails, Distributors, Products, ProductVariants, Categories, User, 
    Activitylog, Suppliers, WareHouseManagement, InventoryStock, Payments, CreditManagement};
use App\Repositories\PaymentRepository;
use DB;
use Str;
use Illuminate\Support\Facades\Auth;

class PaymentController extends Controller
{
    protected $model;
    public function __construct(Payments $payment)
    {
       // set the model
       $this->model = new PaymentRepository($payment);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $inv = WareHouseManagement::find(auth()->user()->user_id);
        // $invoice =  OrderDetails::where([
        //     'ware_house_id'=> $inv->ware_house_id]
        // )->get();
       
        $payment =Payments::orderBy('payment_id', 'desc')->get();
        return view('administrator.payments.index')->with([
            "payment" => $payment,
            //"invoice" => $invoice,
        ]);
    }

    public function bin()
    {
        $outlet= Payments::onlyTrashed()->get();
        return view('administrator.payments.recyclebin')->with([
            'outlet' => $outlet,
        ]);
    }

    // public function restore($payment_id)
    // {
    //     Payments::withTrashed()
    //     ->where('payment_id', $payment_id)
    //     ->restore();
    //     $categ= $this->model->show($payment_id);
    //     $outlet_name = $categ->outlet_name;
    //     $log = new Activitylog([
    //         "operations" => "Restored  ". " ".$outlet_name. " " . " To The Outlet List",
    //         "user_id" => Auth::user()->user_id,
    //     ]);
    //     $log->save();
    //     return redirect()->back()->with([
    //         'success' => " You Have Restored". " ".$outlet_name. " " ." Outlet Successfully",
    //         // "outlet" => $outlet,
    //     ]);
    // }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $invoice =  OrderDetails::orderBy('details_id', 'desc')->get();
        $payment =Payments::orderBy('payment_id', 'desc')->get();
        return view('administrator.payments.create')->with([
            "invoice" => $invoice,
            "payment" => $payment,
        ]);
    }

    public function makepayment($transaction_number)
    {
        
        $viewOrder = Order::where([
            "transaction_number"=> $transaction_number
        ])->get();
        $orderDetails = OrderDetails::where([
            "transaction_number"=> $transaction_number
        ])->first();
        $category= Categories::all();
        $variant = ProductVariants::all();
        $product =  Products::all();
        $warehouse =  WareHouseManagement::all();
        $supplier =  Suppliers::all();
        $inventory =  InventoryStock::all();
        $distributor =  Distributors::all();
        $price = Order::where([
            "transaction_number" => $transaction_number, 
        ])->sum('total_amount');

        $distributor_id = $orderDetails->distributor_id;
        $buyers = Distributors::where([
            "distributor_id" => $distributor_id, 
        ])->get();
        $credit = CreditManagement::where([
            "distributor_id" => $distributor_id, 
        ])->get();

        
        return view('administrator.payments.make-payment')->with([
            //"dist"=> $dist,
            "price"=> $price,
            "buyers" => $buyers,
            "viewOrder" => $viewOrder,
            "category" => $category,
            "variant" => $variant,
            "product" => $product,
            "warehouse"=> $warehouse,
            "supplier" => $supplier,
            "inventory" =>$inventory,
            "distributor" => $distributor,
            "orderDetails" => $orderDetails,
            
            "credit" => $credit,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
        //
    }
}
