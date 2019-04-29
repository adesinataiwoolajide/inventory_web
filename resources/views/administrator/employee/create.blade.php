@extends("layouts.app")
    @section("content")
    <div class="clearfix"></div>
    <div class="content-wrapper">
   		<div class="container-fluid">
   			<div class="row pt-2 pb-2">
		        <div class="col-sm-9">
				    <ol class="breadcrumb">
				    	<li class="breadcrumb-item"><a href="{{route('administrator.dashboard')}}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{route('employee.create')}}">Add Employee</a></li>
                        <li class="breadcrumb-item"><a href="{{route('employee.restore')}}">Restore Deleted Employees</a></li>
			            <li class="breadcrumb-item active" aria-current="page">Saved Employees</li>
			         </ol>
			   	</div>
			</div>
   			<div class="row">
		    	<div class="col-lg-12">

		    		@include('partials._message')
		          	<div class="card">
                        <div class="card-header"><i class="fa fa-table"></i> Please Fill The Below Form To Add 
                            New Employee Details</div>
	            		<div class="card-body">
	            			<form action="{{route('employee.save')}}" method="POST" enctype="multipart/form-data">
	            				{{ csrf_field() }}
		            			<div class="form-group row ">
		            				<div class="col-sm-4">
                                        <label>Full Name</label>
					                    <input type="text" name="full_name" class="form-control form-control-rounded" required placeholder="Enter The employee Name">
					                    <span style="color: red">** This Field is Required **</span>
					                     @if ($errors->has('full_name'))
                                            <div class="alert alert-danger alert-dismissible" role="alert">
										        <button type="button" class="close" data-dismiss="alert">&times;</button>
										        <div class="alert-icon contrast-alert">
										            <i class="fa fa-check"></i>
										        </div>
										        <div class="alert-message">
										            <span><strong>Error!</strong> {{ $errors->first('full_name') }} !</span>
										        </div>
										    </div>
                                        @endif  
                                    </div>
                                    <div class="col-sm-4">
                                        <label>E-Mail</label>
                                        <input type="email" name="email" class="form-control 
                                        form-control-rounded" required placeholder="Enter The Employee Email">
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
                                    <div class="col-sm-4">
                                        <label>Phone Number</label>
                                        <input type="number" name="phone_number" class="form-control 
                                        form-control-rounded" required placeholder="Enter The Phone Number">
                                        <span style="color: red">** This Field is Required **</span>
                                            @if ($errors->has('phone_number'))
                                            <div class="alert alert-danger alert-dismissible" role="alert">
                                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                                <div class="alert-icon contrast-alert">
                                                    <i class="fa fa-check"></i>
                                                </div>
                                                <div class="alert-message">
                                                    <span><strong>Error!</strong> {{ $errors->first('phone_number') }} !</span>
                                                </div>
                                            </div>
                                        @endif  
                                    </div>
                                    <div class="col-sm-4">
                                        <label>Contract Type</label>
                                        <select name="contract_type" required class="form-control form-control-rounded">
                                            <option value="">-- Contract Type --</option>
                                            <option value=""> </option>
                                            <option value="Temporary Staff">Temporary Staff </option>
                                            <option value="Permanant Staff">Permanent Staff </option>
                                        </select>
                                        <span style="color: red">** This Field is Required **</span>
                                            @if ($errors->has('contract_type'))
                                            <div class="alert alert-danger alert-dismissible" role="alert">
                                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                                <div class="alert-icon contrast-alert">
                                                    <i class="fa fa-check"></i>
                                                </div>
                                                <div class="alert-message">
                                                    <span><strong>Error!</strong> {{ $errors->first('contract_type') }} !</span>
                                                </div>
                                            </div>
                                        @endif  
                                        
                                    </div>

                                    <div class="col-sm-4">
                                        <label>Category</label>
                                        <select name="role" required class="form-control form-control-rounded">
                                            <option value="">-- Contract Type --</option>
                                            <option value=""> </option>
                                            <option value="Accountant">Accountant </option>
                                            <option value="Admin">Admin </option>
                                            <option value="Administrator">Administrator </option>
                                            <option value="Editor">Editor </option>
                                            <option value="Receptionist">Receptionist </option>
                                            
                                        </select>
                                        <span style="color: red">** This Field is Required **</span>
                                            @if ($errors->has('role'))
                                            <div class="alert alert-danger alert-dismissible" role="alert">
                                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                                <div class="alert-icon contrast-alert">
                                                    <i class="fa fa-check"></i>
                                                </div>
                                                <div class="alert-message">
                                                    <span><strong>Error!</strong> {{ $errors->first('role') }} !</span>
                                                </div>
                                            </div>
                                        @endif  
                                        
                                    </div>

                                    <div class="col-sm-4">
                                        <label>Address</label>
                                        <textarea class="form-control form-control-rounded" required 
                                        placeholder="Enter The Address" name="address"></textarea>
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
                                            EMPLOYEE </button>
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
		          		@if(count($employee) ==0)
                            <div class="card-header" align="center" style="color: red">
                                <i class="fa fa-table"></i> The List is Empty
			            	</div>

			            @else
			            	<div class="card-header"><i class="fa fa-table"></i> List of Saved Employees</div>
		            		<div class="card-body">
		              			<div class="table-responsive">
                                    <table id="default-datatable" class="table table-bordered">
		              					<thead>
						                    <tr>
                                                <th>S/N</th>
                                                <th> Name</th>
                                                <th>Phone</th>
                                                <th> Email </th>
                                                <th>Type </th>
						                    </tr>
						                </thead>

						                <tfoot>
						                    <tr>
                                                <th>S/N</th>
                                                <th> Name</th>
                                                <th>Phone</th>
                                                <th> Email </th>
                                                <th>Type </th>
						                    </tr>
						                </tfoot>
						                <tbody>
						                	<?php $number =1; ?>
						                	@foreach($employee as $employees)
							                    <tr>
							                        <td>{{$number}}
                                                        <a href="{{route('employee.delete', $employees->employee_id)}}" 
                                                            onclick="return(confirmToDelete());" class="btn btn-danger"><i class="fa fa-trash-o"></i></a>
                                                        <a href="{{route('employee.edit', $employees->employee_id)}}" 
                                                            onclick="return(confirmToEdit());" class="btn btn-success"><i class="fa fa-pencil"></i></a>
							                        </td>
							                        <td>{{$employees->full_name}}</td> 
                                                    <td>{{$employees->phone_number}}</td> 
                                                    <td>{{$employees->email}}</td> 
                                                    <td>{{$employees->contract_type}}</td> 
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