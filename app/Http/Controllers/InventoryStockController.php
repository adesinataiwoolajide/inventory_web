<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\{Products, ProductVariants, Categories, User, Activitylog, Suppliers, WareHouseManagement, InventoryStock};
use App\Repositories\ProductRepository;
use DB;
use Str;
use Illuminate\Support\Facades\Auth;

class InventoryStockController extends Controller
{
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
        return view('administrator.inventory.index')
            ->with([
            "category" => $category,
            "variant" => $variant,
            "product" => $product,
            "warehouse"=> $warehouse,
            "supplier" => $supplier,
            "inventory" =>$inventory
        ]);
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
