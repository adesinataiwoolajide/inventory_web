<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use App\{Categories, User, Activitylog, AssignOutlet, Distributors, Suppliers, Employee,InventoryStock, Order, Outlets, Products, 
    ProductVariants, Sales, WareHouseManagement};


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
        $log = Activitylog::all(); 
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

        //auth()->user()->assignRole(['Administrator']);
        
        // Permission::create([
        //     'name'=>'account-restore',
        //     'guard_name' => 'web'
        // ]);
        
        

        // auth()->user()->hasRole(['Admin'])->revokePermissionTo([
        //     'warehouse-create', 'warehouse-edit', 'warehouse-delete', 'warehouse-update',
        // ]);


       

        $roleAccount = Role::where([
            'name' => 'Accountant',
        ])->first();
        $roleAdmin = Role::where([
            'name' => 'Administrator',
            'name' => 'Admin',
        ])->first();
        
        

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


        $roleAccount->givePermissionTo([
            'salary-create',  'salary-update', 'salary-edit',
            'account-create',  'account-update', 'account-edit',
            'order-create',  'order-edit', 'order-delete',
            //'payment-create', 'account-update', 'account-edit', 
        ]);
        
        $roleAdmin->givePermissionTo([
            'category-restore',  'product-restore', 'variant-restore',
            'distributor-restore', 'supplier-restore', 'outlet-restore', 'warehouse-restore',
            'employee-restore', 'user-restore', 'salary-restore', 'account-restore',

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
            'order-create', 'order-update', 'order-edit', 'order-delete'
            //'payment-create', 'account-update', 'account-edit', 
        ]);

        $remove = Role::where([
            'name' => 'Admin',
        ])->first();

       $remove->revokePermissionTo([
            'warehouse-create', 'warehouse-edit', 'warehouse-delete', 'warehouse-update',
            'category-restore',  'product-restore', 'variant-restore',
            'distributor-restore', 'supplier-restore', 'outlet-restore', 'warehouse-restore',
            'employee-restore', 'user-restore', 'salary-restore', 'account-restore',
        ]);


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
        ]);
        //Creating Roles
        // Role::create([
        //     'name'=>'Accountant',
        //     'guard_name' => 'web'
        // ]);

        //Creating Permission
        // Permission::create([
        //     'name'=>'warehouse-delete',
        //     'guard_name' => 'web'
        // ]);

         // return auth()->user()->getAllPermissions();
        // return User::role('Administrator')->get();
       // return auth()->user()->assignRole('Administrator');
        //return $role = Role::where('name', 'Administrator')->first();

        // Granting Permission
        // $role = Role::where('name', 'Administrator')->first();
        // $permission = Permission::where('name', 'product-create')->first();

        // $permission = Permission::where('name', 'All Pages')->first();
        // $role = Role::where('name', 'Administrator')->first();
        // $permission->removeRole($role);

        //model has permission
        // auth()->user()->givePermissionTo('category-create');

        // model has role
        //auth()->user()->assignRole('Administrator');

        //checking User Permission

        //return auth()->user()->getAllPermissions();

        //return User::role('Administrator')->get();
        //return User::permission('category-create')->get();

        //giving multiple permission
        

        // auth()->user()->givePermissionTo([
        //     // 'product-edit','product-list', 'product-delete',
        //     // 'category-edit', 'category-delete', 'category-update',
        //     // 'variant-create', 'variant-delete', 'variant-update',
        //     // 'distributor-create', 'distributor-edit', 'distributor-update', 'distributor-delete',
        //     // 'supplier-create', 'supplier-edit', 'supplier-update', 'supplier-delete',
        //     // 'outlet-create', 'outlet-edit', 'outlet-update', 'outlet-delete',
        //     // 'warehouse-create', 'warehouse-edit', 'warehouse-delete', 'warehouse-update',

        //     'employee-create', 'employee-delete', 'employee-update', 'employee-edit',
        //     'user-create', 'user-delete', 'user-update', 'user-edit',
        //     'salary-create', 'salary-delete', 'salary-update', 'salary-edit',
        //     'account-create', 'account-delete', 'account-update', 'account-edit',

        // ]);

    }

    public function userlogin(Request $request)
    {
        $data = [
            "email" => $request->input("email"),
            "password" => $request->input("password"),
        ];
        if(Auth::attempt($data)){
            $usertype = Auth::user();
            if(auth()->user()->hasRole('Administrator')){
                echo "Yes";
            }elseif(auth()->user()->hasRole('Administrator')){
                echo "Yess";
            }elseif(auth()->user()->hasRole('Editor')){

            }elseif(auth()->user()->hasRole('Accountant')){

            }elseif(auth()->user()->hasRole('Receptionist')){

            }else{
                echo "Not FOund";
            }
            if(!empty($usertype)){
                $request->session()->flash('success', 'You Have Login Successfully');
                return redirect()->route("administrator.dashboard");
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
