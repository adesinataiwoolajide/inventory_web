<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\{Order,OrderDetails, Distributors, Products, ProductVariants, Categories, User, 
    ActivityLog, Suppliers, WareHouseManagement, InventoryStock, Payments};
use App\Repositories\OrderRepository;
use DB;
use Str;
use Illuminate\Support\Facades\Auth;
class SalesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $payment =Payments::orderBy('payment_id', 'desc')->get();
        return view('administrator.sales.index')->with([
            "payment" => $payment,
            //"invoice" => $invoice,
        ]);
    }

    public function report()
    {
        $payment =Order::orderBy('order_id', 'desc')->get();
        return view('administrator.sales.report')->with([
            "payment" => $payment,
            //"invoice" => $invoice,
        ]);
    }

    public function invoice()
    {
        if(auth()->user()->hasPermissionTo('order-invoice')){

            $inv = WareHouseManagement::find(auth()->user()->user_id);
            // $invoice =  OrderDetails::where([
            //     'ware_house_id'=> $inv->ware_house_id]
            // )->get();
            $invoice =  OrderDetails::orderBy('details_id', 'desc')->get();
            return view('administrator.sales.invoice')->with([
                "invoice" => $invoice,
            ]);
            
            return view('administrator.orders.invoice')
                ->with([
                
                "invoice" => $invoice,

            ]);
        } else{
            return  redirect()->route("order.create")->with([
                'error' => "You Dont have Access To Sales",
            ]);
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
