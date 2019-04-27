<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\{Order, Distributors, Products, ProductVariants, Categories, User, 
    Activitylog, Suppliers, WareHouseManagement, InventoryStock};
use App\Repositories\OrderRepository;
use DB;
use Str;
use Illuminate\Support\Facades\Auth;
class OrderController extends Controller
{
    protected $model;
    public function __construct(Order $order)
    {
       // set the model
       $this->model = new OrderRepository($order);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $category= Categories::all();
        $variant = ProductVariants::all();
        $product =  Products::all();
        $warehouse =  WareHouseManagement::all();
        $supplier =  Suppliers::all();
        $inventory =  InventoryStock::all();
        $distributor =  Distributors::all();
        $order= $this->model->all();
        return view('administrator.orders.index')
            ->with([
            "category" => $category,
            "variant" => $variant,
            "product" => $product,
            "warehouse"=> $warehouse,
            "supplier" => $supplier,
            "inventory" =>$inventory,
            "order" => $order,
            "distributor" => $distributor,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $category= Categories::all();
        $variant = ProductVariants::all();
        $product =  Products::all();
        $warehouse =  WareHouseManagement::all();
        $supplier =  Suppliers::all();
        $inventory =  InventoryStock::all();
        $distributor =  Distributors::all();
        $order= $this->model->all();
        return view('administrator.orders.create')
            ->with([
            "category" => $category,
            "variant" => $variant,
            "product" => $product,
            "warehouse"=> $warehouse,
            "supplier" => $supplier,
            "inventory" =>$inventory,
            "order" => $order,
            "distributor" => $distributor,
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
        if(auth()->user()->hasPermissionTo('order-create')){
            $this->validate($request, [
                'stock_id' =>'required|min:1|max:255',
                'quantity' =>'required|min:1|max:255',
                'unit_amount' =>'required|min:1|max:255',
                'distributor_id' =>'required|min:1|max:50',
                
            ]);

            $y = $request->input("show");
            function generateRandomHash($length)
			{
				return strtoupper(substr(md5(uniqid(rand())), 0, (-32 + $length)));
			}	
			$transaction_id = strtoupper(generateRandomHash(10));
            for($i = 1; $i <= $y; $i++){
                $add_order = $request->input("add_order$i");
                if($add_order == 1){
                    $data = ([
                        "order" => new Order,
                        "stock_id" => $request->input("stock_id$i"),
                        "quantity" => $request->input("quantity$i"),
                        "unit_amount" => $request->input("unit_amount$i"),
                        "distributor_id" => $request->input("distributor_id$i"),
                        "transaction_id" => $transaction_id,
                        "total_amount" => $request->input("quantity") * $request->input("unit_amount"),   
                    ]);

                    $dist = Distributors::where([
                        "distributor_id" => $request->input('distributor_id'), 
                    ])->first();
                    $distributor_name = $dist->name;

                    $che = InventoryStock::where([
                        "stock_id" => $request->input("stock_id"),
                    ])->first();
                    
                    $prev_quantity = $che->quantity;
                    echo $new_quantity = $prev_quantity - $request->input('quantity');
                    
                    DB::table('inventory_stocks')->where([
                        "stock_id" => $request->input("stock_id"),
                    ])->update([ 
                        'quantity' => $new_quantity
                    ]);

                    $log = new Activitylog([
                        "operations" => "Added Order". " "  .$transaction_id. " ".
                         " For Distributor". " ". $distributor_name,
                        "user_id" => Auth::user()->user_id,
                    ]);  
                    
                }   
            }
            dd($data);
            if($log->save() AND ($this->model->create($data))){
                return redirect()->route("order.create")->with("success", "You HaveAdded Order". " "  .$transaction_id. " ".
                " For Distributor". " ". $distributor_name. " ".  "Successfully");
            }

        } else{
            return redirect()->back()->with([
                'error' => "You Dont have Access To Create An Order",
            ]);
        }
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
