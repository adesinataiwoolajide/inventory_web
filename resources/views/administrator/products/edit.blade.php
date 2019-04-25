@extends("layouts.app")
    @section("content")
    <div class="clearfix"></div>
    <div class="content-wrapper">
   		<div class="container-fluid">
   			<div class="row pt-2 pb-2">
		        <div class="col-sm-9">
				    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('administrator.dashboard')}}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{route('product.edit', $prod->product_id)}}">Edit  Product</a></li>
                        <li class="breadcrumb-item"><a href="{{route('product.create')}}">Add Product</a></li>
                        <li class="breadcrumb-item"><a href="{{route('inventory.index')}}">Inventory</a></li>
			            <li class="breadcrumb-item active" aria-current="page">Saved Products</li>
			         </ol>
			   	</div>
			</div>
   			<div class="row">
		    	<div class="col-lg-12">

		    		@include('partials._message')
		          	<div class="card">
                        <div class="card-header"><i class="fa fa-table"></i> Please Fill The Below Form To Update 
                            The Product Details</div>
	            		<div class="card-body">
	            			<form action="{{route('product.update', $prod->product_id)}}" method="POST" enctype="multipart/form-data">
	            				{{ csrf_field() }}
		            			<div class="form-group row ">
		            				<div class="col-sm-4">
                                        <label>Name</label>
                                        <input type="text" name="product_name" class="form-control 
                                        form-control-rounded" required placeholder="Enter The Product Name" 
                                        value="{{$prod->product_name}}">
					                    <span style="color: red">** This Field is Required **</span>
					                     @if ($errors->has('product_name'))
                                            <div class="alert alert-danger alert-dismissible" role="alert">
										        <button type="button" class="close" data-dismiss="alert">&times;</button>
										        <div class="alert-icon contrast-alert">
										            <i class="fa fa-check"></i>
										        </div>
										        <div class="alert-message">
										            <span><strong>Error!</strong> {{ $errors->first('product_name') }} !</span>
										        </div>
										    </div>
                                        @endif  
                                    </div>
                                    <div class="col-sm-4">
                                        <label>Amount</label>
                                        <input type="number" name="amount" class="form-control 
                                        form-control-rounded" required placeholder="Enter The Amount" value="{{$prod->amount}}">
                                        <span style="color: red">** This Field is Required **</span>
                                            @if ($errors->has('amount'))
                                            <div class="alert alert-danger alert-dismissible" role="alert">
                                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                                <div class="alert-icon contrast-alert">
                                                    <i class="fa fa-check"></i>
                                                </div>
                                                <div class="alert-message">
                                                    <span><strong>Error!</strong> {{ $errors->first('amount') }} !</span>
                                                </div>
                                            </div>
                                        @endif  
                                    </div>
                                    <div class="col-sm-4">
                                        <label>Quantity</label>
                                        <input type="hidden" value="{{$prod->quantity}}" name="previous">
                                        <input type="number" name="quantity" class="form-control 
                                        form-control-rounded" required placeholder="Enter The Quantity" value="{{$prod->quantity}}">
                                        <span style="color: red">** This Field is Required **</span>
                                            @if ($errors->has('quantity'))
                                            <div class="alert alert-danger alert-dismissible" role="alert">
                                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                                <div class="alert-icon contrast-alert">
                                                    <i class="fa fa-check"></i>
                                                </div>
                                                <div class="alert-message">
                                                    <span><strong>Error!</strong> {{ $errors->first('quantity') }} !</span>
                                                </div>
                                            </div>
                                        @endif  
                                    </div>
                                    <div class="col-sm-4">
                                        <label>Supplier</label>
                                        <select name="supplier_id" class="form-control 
                                        form-control-rounded" required>
                                            @foreach(ProductSupplier($prod->supplier_id) as $supl)      
                                                <option value="{{$prod->supplier_id}}">{{$supl->name}}</option>
                                            @endforeach
                                            <option value=""> </option>
                                            @foreach($supplier as $suppliers)
                                                <option value="{{$suppliers->supplier_id}}">{{$suppliers->name}} </option>
                                            @endforeach
                                        </select>
                                        <span style="color: red">** This Field is Required **</span>
                                            @if ($errors->has('supplier_id'))
                                            <div class="alert alert-danger alert-dismissible" role="alert">
                                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                                <div class="alert-icon contrast-alert">
                                                    <i class="fa fa-check"></i>
                                                </div>
                                                <div class="alert-message">
                                                    <span><strong>Error!</strong> {{ $errors->first('supplier_id') }} !</span>
                                                </div>
                                            </div>
                                        @endif  
                                    </div>
                                   
                                    <div class="col-sm-4">
                                        <label>Category & Variant</label>
                                        <select name="variant_id" class="form-control 
                                        form-control-rounded" required>
                                            @foreach(ProductVariants($prod->variant_id) as $var) 
                                                @foreach(ProductCategory($var->category_id) as $ca)    
                                                    <option value="{{$prod->variant_id}}">{{$ca->category_name. " ". $var->variant_name. 
                                                    " ". $var->variant_size}}</option>
                                                @endforeach
                                            @endforeach
                                            <option value=""> </option>
                                            @foreach($variant as $variants)
                                                @foreach(ProductCategory($variants->category_id) as $cat)
            
                                                    <option value="{{$variants->variant_id }}">
                                                    {{$cat->category_name. " ". $variants->variant_name. " ". $variants->variant_size}} </option>
                                                @endforeach
                                            @endforeach
                                        </select>
                                        <span style="color: red">** This Field is Required **</span>
                                            @if ($errors->has('variant_id'))
                                            <div class="alert alert-danger alert-dismissible" role="alert">
                                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                                <div class="alert-icon contrast-alert">
                                                    <i class="fa fa-check"></i>
                                                </div>
                                                <div class="alert-message">
                                                    <span><strong>Error!</strong> {{ $errors->first('variant_id') }} !</span>
                                                </div>
                                            </div>
                                        @endif  
                                    </div>
                                    <div class="col-sm-4">
                                        <label>Ware House</label>
                                        <select name="ware_house_id" class="form-control 
                                        form-control-rounded" required>
                                            @foreach(WareHouseDetails($prod->ware_house_id) as $wareh)
                                              
                                                <option value="{{$prod->ware_house_id}}">{{$wareh->name}}</option>
                                            @endforeach
                                            <option value=""> </option>
                                            @foreach($warehouse as $warehouses)
                                                <option value="{{$warehouses->ware_house_id}}">
                                                    {{$warehouses->name}} </option>
                                            @endforeach
                                        </select>
                                        <span style="color: red">** This Field is Required **</span>
                                            @if ($errors->has('ware_house_id'))
                                            <div class="alert alert-danger alert-dismissible" role="alert">
                                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                                <div class="alert-icon contrast-alert">
                                                    <i class="fa fa-check"></i>
                                                </div>
                                                <div class="alert-message">
                                                    <span><strong>Error!</strong> {{ $errors->first('ware_house_id') }} !</span>
                                                </div>
                                            </div>
                                        @endif  
                                    </div>

					                <div class="col-sm-12" align="center">
					                    <button type="submit" class="btn btn-success btn-lg btn-block">
                                            UPDATE THE 
                                            PRODUCT </button>
					                </div>
						            
					            </div>
				            </form>
		            	</div>
		            </div>
		        </div>
		    </div>
			 <div class="row">
		    	<div class="col-lg-12">
		          	<div class="card">
		          		@if(count($product) ==0)
                            <div class="card-header" align="center" style="color: red">
                                <i class="fa fa-table"></i> The List is Empty
			            	</div>

			            @else
			            	<div class="card-header"><i class="fa fa-table"></i> List of Saved Products</div>
		            		<div class="card-body">
		              			<div class="table-responsive">
                                    <table id="default-datatable" class="table table-bordered">
		              					<thead>
						                    <tr>
                                                <<th>S/N</th>
                                                <th>Name</th>
                                                <th>Qty </th>
                                                <th>Price </th>
                                                <th>Category</th>
                                                <th>Variants </th>
                                                <th>Supplier </th>
                                                <th>Ware House </th>
						                    </tr>
						                </thead>

						                <tfoot>
						                    <tr>
                                                <<th>S/N</th>
                                                <th>Name</th>
                                                <th>Qty </th>
                                                <th>Price </th>
                                                <th>Category</th>
                                                <th>Variants </th>
                                                <th>Supplier </th>
                                                <th>Ware House </th>
						                    </tr>
						                </tfoot>
						                <tbody>
						                	<?php $number =1; ?>
						                	@foreach($product as $products)
							                    <tr>
							                        <td>{{$number}}
                                                        <a href="{{route('product.delete', $products->product_id)}}" 
                                                            onclick="return(confirmToDelete());" class="btn btn-danger">
                                                            <i class="fa fa-trash-o">
                                                        </i></a>
                                                        <a href="{{route('product.edit', $products->product_id)}}" 
                                                            onclick="return(confirmToEdit());" class="btn btn-success">
                                                            <i class="fa fa-pencil">
                                                        </i></a>
							                        </td>
                                                    <td>{{$products->product_name}}</td> 
                                                    <td><?php echo number_format($products->quantity) ?></td> 
                                                    <td>&#8358;<?php echo number_format($products->amount)  ?></td> 
                                                    
                                                    <td>
                                                        @foreach(ProductCategory($products->category_id) as $categories)
                                                            {{$categories->category_name}}
                                                        @endforeach
                                                    </td>
                                                    <td>
                                                        @foreach(ProductVariants($products->variant_id) as $vari)
                                                            {{$vari->variant_name}}
                                                        @endforeach
                                                    </td> 
                                                    
                                                    <td>
                                                        @foreach(ProductSupplier($products->supplier_id) as $suppl)
                                                            {{$suppl->name}}
                                                        @endforeach
                                                    </td> 
                                                
                                                    <td>
                                                        @foreach(WareHouseDetails($products->ware_house_id) as $wareh)
                                                            {{$wareh->name}}
                                                        @endforeach
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