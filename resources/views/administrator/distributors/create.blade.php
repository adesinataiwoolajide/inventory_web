@extends("layouts.app")
    @section("content")
    <div class="clearfix"></div>
    <div class="content-wrapper">
   		<div class="container-fluid">
   			<div class="row pt-2 pb-2">
		        <div class="col-sm-9">
				    <ol class="breadcrumb">
				    	<li class="breadcrumb-item"><a href="{{route('administrator.dashboard')}}">Home</a></li>
				    	<li class="breadcrumb-item"><a href="{{route('distributor.create')}}">Add Distributor</a></li>
			            <li class="breadcrumb-item active" aria-current="page">Save Product Distributors</li>
			         </ol>
			   	</div>
			</div>
   			<div class="row">
		    	<div class="col-lg-12">

		    		@include('partials._message')
		          	<div class="card">
                        <div class="card-header"><i class="fa fa-table"></i> Please Fill The Below Form To Add 
                            New Product Distributor Details</div>
	            		<div class="card-body">
	            			<form action="{{route('distributor.save')}}" method="POST" enctype="multipart/form-data">
	            				{{ csrf_field() }}
		            			<div class="form-group row ">
		            				<div class="col-sm-3">
                                        <label>Distributor Name</label>
					                    <input type="text" name="name" class="form-control form-control-rounded" required placeholder="Enter The distributor Name">
					                    <span style="color: red">** This Field is Required **</span>
					                     @if ($errors->has('name'))
                                            <div class="alert alert-danger alert-dismissible" role="alert">
										        <button type="button" class="close" data-dismiss="alert">&times;</button>
										        <div class="alert-icon contrast-alert">
										            <i class="fa fa-check"></i>
										        </div>
										        <div class="alert-message">
										            <span><strong>Error!</strong> {{ $errors->first('name') }} !</span>
										        </div>
										    </div>
                                        @endif  
                                    </div>
                                    <div class="col-sm-3">
                                        <label>Phone One</label>
                                        <input type="number" name="phone_one" class="form-control form-control-rounded" required placeholder="Enter The Phone One">
                                        <span style="color: red">** This Field is Required **</span>
                                            @if ($errors->has('phone_one'))
                                            <div class="alert alert-danger alert-dismissible" role="alert">
                                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                                <div class="alert-icon contrast-alert">
                                                    <i class="fa fa-check"></i>
                                                </div>
                                                <div class="alert-message">
                                                    <span><strong>Error!</strong> {{ $errors->first('phone_one') }} !</span>
                                                </div>
                                            </div>
                                        @endif  
                                    </div>
                                    <div class="col-sm-3">
                                        <label>Phone Two</label>
                                        <input type="number" name="phone_two" class="form-control form-control-rounded" required 
                                        placeholder="Enter The Phone Two">
                                        <span style="color: red">** This Field is Required **</span>
                                            @if ($errors->has('phone_two'))
                                            <div class="alert alert-danger alert-dismissible" role="alert">
                                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                                <div class="alert-icon contrast-alert">
                                                    <i class="fa fa-check"></i>
                                                </div>
                                                <div class="alert-message">
                                                    <span><strong>Error!</strong> {{ $errors->first('phone_two') }} !</span>
                                                </div>
                                            </div>
                                        @endif  
                                        
                                    </div>

                                    <div class="col-sm-3">
                                        <label>E-Mail</label>
                                        <input type="email" name="email" class="form-control form-control-rounded" required 
                                        placeholder="Enter The E-mail">
                                        <span style="color: red">** This Field is Required **</span>
                                        @if ($errors->has('email'))
                                            <div class="alert alert-danger alert-dismissible" role="alert">
                                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                                <div class="alert-icon contrast-alert">
                                                    <i class="fa fa-check"></i>
                                                </div>
                                                <div class="alert-message">
                                                    <span><strong>Error!</strong> {{ $errors->first('email') }} !</span>
                                                </div>
                                            </div>
                                        @endif  
                                        
                                    </div>

                                    <div class="col-sm-3">
                                        <label>Credit Limit</label>
                                        <input type="number" name="credit_limit" class="form-control form-control-rounded" 
                                        required placeholder="Enter The Credit Limit">
                                        <span style="color: red">** This Field is Required **</span>
                                        @if ($errors->has('credit_limit'))
                                            <div class="alert alert-danger alert-dismissible" role="alert">
                                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                                <div class="alert-icon contrast-alert">
                                                    <i class="fa fa-check"></i>
                                                </div>
                                                <div class="alert-message">
                                                    <span><strong>Error!</strong> {{ $errors->first('credit_limit') }} !</span>
                                                </div>
                                            </div>
                                        @endif  
                                        
                                    </div>

                                    <div class="col-sm-3">
                                        <label>Credit Reduction</label>
                                        <input type="number" name="credit_reduction_per_month" class="form-control form-control-rounded" required 
                                                    placeholder="Enter The Credit Reduction">
                                        <span style="color: red">** This Field is Required **</span>
                                        @if ($errors->has('credit_reduction_per_month'))
                                            <div class="alert alert-danger alert-dismissible" role="alert">
                                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                                <div class="alert-icon contrast-alert">
                                                    <i class="fa fa-check"></i>
                                                </div>
                                                <div class="alert-message">
                                                    <span><strong>Error!</strong> {{ $errors->first('credit_reduction_per_month') }} !</span>
                                                </div>
                                            </div>
                                        @endif  
                                        
                                    </div>

                                    
                                    <div class="col-sm-6">
                                        <label>Address</label>
                                        <textarea class="form-control form-control-rounded" required name="address" placeholder="Enter The distributor Address"></textarea>
                                        <span style="color: red">** This Field is Required **</span>
                                        @if ($errors->has('address'))
                                            <div class="alert alert-danger alert-dismissible" role="alert">
                                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                                <div class="alert-icon contrast-alert">
                                                    <i class="fa fa-check"></i>
                                                </div>
                                                <div class="alert-message">
                                                    <span><strong>Error!</strong> {{ $errors->first('address') }} !</span>
                                                </div>
                                            </div>
                                        @endif  
                                        
                                    </div>

					                <div class="col-sm-12" align="center">
					                    <button type="submit" class="btn btn-success btn-lg btn-block">ADD THE 
                                            DISTRIBUTOR 
                                        </button>
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
		          		@if(count($distributor) ==0)
                            <div class="card-header" align="center" style="color: red">
                                <i class="fa fa-table"></i> The List is Empty
			            	</div>

			            @else
			            	<div class="card-header"><i class="fa fa-table"></i> List of Saved Product distributors</div>
		            		<div class="card-body">
		              			<div class="table-responsive">
                                    <table id="default-datatable" class="table table-bordered">
		              					<thead>
						                    <tr>
                                                <th>S/N</th>
                                                <th> Name</th>
                                                <th>Phone Number</th>
                                                <th> Email </th>
                                                <th>Options </th>
						                    </tr>
						                </thead>

						                <tfoot>
						                    <tr>
                                                <th>S/N</th>
                                                <th> Name</th>
                                                <th>Phone Number</th>
                                                <th> Email </th>
                                                <th>Options </th>
												
						                    </tr>
						                </tfoot>
						                <tbody>
						                	<?php $number =1; ?>
						                	@foreach($distributor as $distributors)
							                    <tr>
							                        <td>{{$number}}
                                                        <a href="{{route('distributor.delete', $distributors->distributor_id)}}" 
                                                            onclick="return(confirmToDelete());" class="btn btn-danger"><i class="fa fa-trash-o"></i></a>
                                                        <a href="{{route('distributor.edit', $distributors->distributor_id)}}" 
                                                            onclick="return(confirmToEdit());" class="btn btn-success"><i class="fa fa-pencil"></i></a>
							                        </td>
							                        <td>{{$distributors->name}}</td> 
                                                    <td>{{$distributors->phone_one}}</td> 
                                                    <td>{{$distributors->email}}</td> 
                                                    
                                                    <td>
                                                        <a href="" class="btn btn-danger"><i class="far fa-trash-o"></i>
                                                            View Outlet
                                                        </a>
                                                            
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