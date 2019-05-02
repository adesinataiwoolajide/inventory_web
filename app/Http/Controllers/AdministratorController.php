<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use App\{Categories, User, ActivityLog, AssignOutlet, Distributors, Suppliers, Employee,InventoryStock, Order, Outlets, Products, 
    ProductVariants, Sales, WareHouseManagement, OrderDetails, CreditManagement, Payments};


class AdministratorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categories = Categories::all();
        $user = User::all();
    //$log = ActivityLog::all(); 
        $assign = AssignOutlet::all();
        $distributor = Distributors::all();
        $supplier = Suppliers::all();
        $employee = Employee::all();
        $inventory = InventoryStock::all();
        $order = Order::all(); 
        $outlet = Outlets::all();
        $product = Products::all();
        $variant = ProductVariants::all();
        $sales = Sales::all();
        $warehouse = WareHouseManagement::all();
        $invoice = OrderDetails::all(); 
        $credit = CreditManagement::all();
        $log = ActivityLog::all();
        $payment = Payments::all();

        //auth()->user()->assignRole(['Accountant']);
        // Role::create([
        //     'name'=>'Admin',
        //     'guard_name' => 'web'
        // ]);
        
        
        // Permission::create([
        //     'name'=>'credit-payment-delete',
        //     'guard_name' => 'web'
        // ]);
        $roleAccount = Role::where([
            'name' => 'Accountant',
        ])->first();
        $roleAccount->givePermissionTo([
            'salary-create',  'salary-update', 'salary-edit',
            'account-create',  'account-update', 'account-edit',
            'order-create',  'order-edit', 'order-update', 'order-invoice',
            'payment-create', 'payment-edit', 'payment-update', 'credit-payment', 
            'credit-payment-edit', 'credit-payment-update', 'credit-payment-delete'
        ]);
        $roleAdmin = Role::where([
            'name' => 'Administrator',
            'name' => 'Admin',
        ])->first();
        $roleAdmin->givePermissionTo([
            'category-restore',  'product-restore', 'variant-restore',
            'distributor-restore', 'supplier-restore', 'outlet-restore', 'warehouse-restore',
            'employee-restore', 'user-restore', 'salary-restore', 'account-restore', 
            'payment-restore', 'assign-restore',

            'assign-create', 'assign-edit', 'assign-update', 'assign-delete',
            'product-edit','product-create', 'product-delete', 'product-update',
            'category-edit', 'category-delete', 'category-update', 'category-create',
            'variant-create', 'variant-delete', 'variant-update', 'variant-edit',
            'distributor-create', 'distributor-edit', 'distributor-update', 'distributor-delete',
            'supplier-create', 'supplier-edit', 'supplier-update', 'supplier-delete',
            'outlet-create', 'outlet-edit', 'outlet-update', 'outlet-delete',
            'warehouse-create', 'warehouse-edit', 'warehouse-delete', 'warehouse-update',
            'employee-create', 'employee-delete', 'employee-update', 'employee-edit',
            'user-create', 'user-delete', 'user-update', 'user-edit',
            'salary-create', 'salary-delete', 'salary-update', 'salary-edit',
            'account-create', 'account-delete', 'account-update', 'account-edit',
            'order-create', 'order-update', 'order-edit', 'order-delete', 'order-invoice', 
            'payment-create', 'payment-edit', 'payment-update', 'payment-delete', 
            //'account-update', 'account-edit', 
            'print-invoice', 'credit-payment', 'credit-payment-edit', 'credit-payment-update',
            'credit-payment-delete'

        ]);

        $remove = Role::where([
            'name' => 'Admin',
        ])->first();

        $remove->revokePermissionTo([
            'warehouse-create', 'warehouse-edit', 'warehouse-delete', 'warehouse-update',

        ]);
        
        

        $editorRecep = Role::where([
            'name' => 'Editor',
            'name' => 'Receptionist',
        ])->first();
        $editorRecep->givePermissionTo([
            'product-edit','product-create', 'product-update',
            'category-edit', 'category-delete', 'category-create',
            'variant-create', 'variant-delete', 'variant-edit',
            'distributor-create', 'distributor-edit', 'distributor-update', 
            'supplier-create', 'supplier-edit', 'supplier-update', 
        ]);


        
        //auth()->user()->givePermissionTo('payment-delete');
       
        
       // auth()->user()->givePermissionTo('order-invoice');

       //auth()->user()->assignRole('Administrator');
        
        return view("administrator.dashboard")->with([
            'categories' => $categories,
            'user' => $user,
            'log' => $log,
            'assign' => $assign,
            'distributor' => $distributor,
            'supplier' => $supplier,
            'employee' => $employee,
            'inventory' => $inventory,
            'order' => $order,
            'outlet' => $outlet,
            'product' => $product,
            'variant' => $variant,
            'sales' => $sales,
            'warehouse' => $warehouse,
            'invoice' => $invoice,
            'credit' => $credit,
            'payment' => $payment,
        ]);
        

        //return auth()->user()->getAllPermissions();

    }

    public function userlogin(Request $request)
    {
        $data = [
            "email" => $request->input("email"),
            "password" => $request->input("password"),
        ];
        if(Auth::attempt($data)){
            $usertype = Auth::user()->role;
            if(auth()->user()->hasRole('Administrator')){
                $message = 'Administrator';
            }elseif(auth()->user()->hasRole('Admin')){
                $message = 'Admin';
            }elseif(auth()->user()->hasRole('Editor')){
                $message = 'Editor';
            }elseif(auth()->user()->hasRole('Accountant')){
                $message = 'Accountant';
            }else{
                $message = 'Receptionist';
            }
            if(!empty($usertype)){
                $log = new ActivityLog([
                    "operations" => "Login Successfully",
                    "user_id" => Auth::user()->user_id,
                ]);
                $log->save();
                
                return redirect()->route("administrator.dashboard")->with([
                    "success" => Auth::user()->name. " ". "Welcome To $message  Dashboard"
                ]);
            }else{
               
                return redirect()->back()->with([
                    "error" => "Ooops!!! Invalid User Name or Password",
                ]);
            }
        }else{
            
            return redirect()->back()->with([
                "error" => "Ooops!! Your Account Does Not Exist",
            ]);
        }
    }

    public function logout(Request $request)
    {
        // $log = new ActivityLog([
        //     "operations" => "Logged Out Successfully",
        //     "user_id" => auth()->user()->user_id,
        // ]);
        // $log->save();
        Auth::logout();
        return view("auth.login");
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
