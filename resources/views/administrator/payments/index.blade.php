@extends("layouts.app")
    @section("content")
    <div class="clearfix"></div>
    <div class="content-wrapper">
   		<div class="container-fluid">
   			<div class="row pt-2 pb-2">
		        <div class="col-sm-9">
				    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('administrator.dashboard')}}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{route('payment.index')}}">View Payments</a></li>
                        <li class="breadcrumb-item"><a href="{{route('payment.create')}}">Add Payment</a></li>
                        <li class="breadcrumb-item active" aria-current="page">List of Payment</li>
                        
			         </ol>
			   	</div>
			</div>
   			
			<div class="row">
		    	<div class="col-lg-12">
                    @include('partials._message')
		          	<div class="card">
		          		@if(count($payment) ==0)
                            <div class="card-header" align="center" style="color: red">
                                <i class="fa fa-table"></i> The List is Empty
			            	</div>

			            @else
                            <div class="card-header"><i class="fa fa-table"></i> 
                                List of Saved Order Payment
                            </div>
                            
                            <div class="card-body">
                            
                                <div class="table-responsive">
                                    <table id="default-datatable" class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>S/N</th>
                                                
                                                <th>Invoice ID</th>
                                                <th>Total Amount </th>
                                                <th> Amount Paid </th>
                                                <th> Credit </th>
                                                <th>Status</th>
                                            </tr>
                                        </thead>

                                        <tfoot>
                                            <tr>
                                                <th>S/N</th>
                                                <th>Invoice Id</th>
                                                
                                                <th>Total Amount </th>
                                                <th> Amount Paid </th>
                                                <th> Credit </th>
                                                <th>Status</th>
                                                
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <?php $number =1; ?>
                                            @foreach($payment as $orders)
                                                <tr>
                                                    <td>{{$number}}</td>
                                                    <td>{{$orders->order_id}}</td>
                                                   
                                                    <td> &#8358;<?php echo number_format($orders->total_amount) ?> </td>
                                                    <td> &#8358;<?php echo number_format($orders->paid_amount) ?></td>
                                                    <td> &#8358;<?php echo number_format($orders->credit) ?></td>
                                                    <td>
                                                        @if($orders->paid_status == 1)
                                                            <p style="color:green"> Paid </p>
                                                        @else
                                                            <p style="color:red"> Pending </p>
                                                        @endif
                                                    </td>
                                                </tr>
                                                
                                                <?php
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