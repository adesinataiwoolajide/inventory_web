@extends("layouts.app")
    @section("content")
    <div class="clearfix"></div>
    <div class="content-wrapper">
   		<div class="container-fluid">
   			<div class="row pt-2 pb-2">
		        <div class="col-sm-9">
				    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('administrator.dashboard')}}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{route('inventory.index')}}">Inventory</a></li>
				    	<li class="breadcrumb-item"><a href="{{route('product.create')}}">Add  Product</a></li>
			            <li class="breadcrumb-item active" aria-current="page">Saved Products Inventory</li>
			         </ol>
			   	</div>
			</div>
   			
			 <div class="row">
		    	<div class="col-lg-12">
		          	<div class="card">
		          		@if(count($inventory) ==0)
                            <div class="card-header" align="center" style="color: red">
                                <i class="fa fa-table"></i> The List is Empty
			            	</div>

			            @else
                            <div class="card-header"><i class="fa fa-table"></i> 
                                List of Saved inventories
                            </div>
		            		<div class="card-body">
		              			<div class="table-responsive">
                                    <table id="default-datatable" class="table table-bordered">
		              					<thead>
						                    <tr>
                                                <th>S/N</th>
                                                <th>Name</th>
                                                <th>Qty </th>
                                                <th>Category</th>
                                                <th>Variants </th>
                                                <th>Supplier </th>
                                                <th>Ware House </th>
						                    </tr>
						                </thead>

						                <tfoot>
						                    <tr>
                                                <th>S/N</th>
                                                <th>Name</th>
                                                <th>Qty </th>
                                                <th>Category</th>
                                                <th>Variants </th>
                                                <th>Supplier </th>
                                                <th>Ware House </th>
						                    </tr>
						                </tfoot>
						                <tbody>
						                	<?php $number =1; ?>
						                	@foreach($inventory as $inventories)
							                    <tr>
							                        <td>{{$number}}</td>
                                                    <td>{{$inventories->product_name}}</td> 
                                                    <td><?php echo number_format($inventories->quantity) ?>
                                                    </td> 
                                                    
                                                    <td>{{$inventories->category->category_name}}
                                                        {{-- @foreach(ProductCategory($inventories->category_id) as 
                                                            $categories)
                                                            {{$categories->category_name}}
                                                        @endforeach --}}
                                                    </td>
                                                    <td>{{$inventories->invenvariant->variant_name}}
                                                        {{-- @foreach(ProductVariants($inventories->variant_id) 
                                                            as $vari)
                                                            {{$vari->variant_name. " ". $vari->variant_size}}
                                                        @endforeach --}}
                                                    </td> 
                                                    
                                                    <td>{{$inventories->supplier->name}}
                                                        {{-- @foreach(ProductSupplier($inventories->supplier_id) 
                                                        as $suppl)
                                                            {{$suppl->name}}
                                                        @endforeach --}}
                                                    </td> 
                                                    <td>{{$inventories->warehouse->name}}
                                                        {{-- @foreach(WareHouseDetails($inventories->ware_house_id) 
                                                        as $ware)
                                                            {{$ware->name}}
                                                        @endforeach --}}
                                                    </td> 
							                    </tr><?php
							                    $number++; ?>
							                @endforeach
						                </tbody>
						               
		              				</table>
		              			</div>
		              		</div>
		             	@endif
	              	</div>
	            </div>
	        </div>
	     </div>
	</div>


    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <!--End Back To Top Button-->
	
@endsection