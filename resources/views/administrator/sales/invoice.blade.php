@extends("layouts.app")
    @section("content")
    <div class="clearfix"></div>
    <div class="content-wrapper">
   		<div class="container-fluid">
   			<div class="row pt-2 pb-2">
		        <div class="col-sm-9">
				    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('administrator.dashboard')}}">Home</a></li>
                        @can('order-invoice')
                            <li class="breadcrumb-item"><a href="{{route('sales.invoice')}}">Sales Invoice</a></li>
                        @endcan
                        @can('order-create')
                        <li class="breadcrumb-item"><a href="{{route('sales.index')}}">View Sales</a></li>
                        {{-- <li class="breadcrumb-item"><a href="{{route('sales.report')}}">View Sales Report</a></li> --}}
                        @endcan
                        {{-- <li class="breadcrumb-item"><a href="{{route('order.index')}}">View Orders</a></li> --}}
                        <li class="breadcrumb-item active" aria-current="page">List of Sales Invoice</li>
                        
			         </ol>
			   	</div>
			</div>
   			
			<div class="row">
		    	<div class="col-lg-12">
                    @include('partials._message')
		          	<div class="card">
                        @role('Administrator')
                            @if(count($invoice) ==0)
                                <div class="card-header" align="center" style="color: red">
                                    <i class="fa fa-table"></i> The List is Empty
                                </div>

                            @else
                                <div class="card-header"><i class="fa fa-table"></i> 
                                    List of Saved Sales Invoice
                                </div>
                                
                                <div class="card-body">
                                
                                    <div class="table-responsive">
                                        <table id="default-datatable" class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>S/N</th>
                                                    <th>Transaction Id</th>{{-- <th>Total</th> --}}
                                                    <th>Distributor </th>
                                                    <th> Invoice </th>
                                                    <th> Ware House </th>
                                                    <th>TIme Added</th>
                                                    @can('print-invoice')
                                                        <th>Action </th>
                                                    @endcan
                                                </tr>
                                            </thead>

                                            <tfoot>
                                                <tr>
                                                    <th>S/N</th>
                                                    <th>Transaction Id</th>
                                                    {{-- <th>Total</th> --}}
                                                    <th>Distributor </th>
                                                    <th> Invoice </th>
                                                    <th> Ware House </th>
                                                    <th>TIme Added</th>
                                                    @can('print-invoice')
                                                        <th>Action </th>
                                                    @endcan
                                                    
                                                </tr>
                                            </tfoot>
                                            <tbody>
                                                <?php $number =1; ?>
                                                @foreach($invoice as $orders)
                                                    <tr>
                                                        <td>{{$number}}</td>
                                                        <td>{{$orders->transaction_number}}</td>
                                                        <td>{{$orders->distributor->name}}
                                                            {{-- @foreach(ProductDistributor($orders->distributor_id) as $dist)
                                                                {{$dist->name}}
                                                            @endforeach --}}
                                                        </td>
                                                        <td> {{$orders->invoice_number}} </td>
                                                        <td> {{$orders->warehouse->name}}</td>
                                                        <td>{{$orders->created_at}}
                                                            
                                                        </td>
                                                        @can('print-invoice')
                                                            <td>
                                                        
                                                                <a href="{{route('print.invoice', $orders->transaction_number)}}" class="btn btn-success">
                                                                    <i class="fa fa-book"></i> See Invoice
                                                                </a>
                                                            
                                                            </td>
                                                        @endcan
                                                    </tr>
                                                    
                                                    <?php
                                                    $number++; ?>
                                                @endforeach
                                            </tbody>
                                        
                                        </table>
                                    </div>
                                    
                                </div> 
                                    
                            @endif
                        @else  
                            @if(count($invoice) ==0)
                                <div class="card-header" align="center" style="color: red">
                                    <i class="fa fa-table"></i> The List is Empty in {{$inv->name}} Ware House
                                </div>

                            @else
                                <div class="card-header"><i class="fa fa-table"></i> 
                                    List of Saved Sales Invoice in {{$inv->name}} Ware House
                                </div>
                                
                                <div class="card-body">
                                
                                    <div class="table-responsive">
                                        <table id="default-datatable" class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>S/N</th>
                                                    <th>Transaction Id</th>{{-- <th>Total</th> --}}
                                                    <th>Distributor </th>
                                                    <th> Invoice </th>
                                                    <th> Ware House </th>
                                                    <th>TIme Added</th>
                                                    @can('print-invoice')
                                                        <th>Action </th>
                                                    @endcan
                                                </tr>
                                            </thead>

                                            <tfoot>
                                                <tr>
                                                    <th>S/N</th>
                                                    <th>Transaction Id</th>
                                                    {{-- <th>Total</th> --}}
                                                    <th>Distributor </th>
                                                    <th> Invoice </th>
                                                    <th> Ware House </th>
                                                    <th>TIme Added</th>
                                                    @can('print-invoice')
                                                        <th>Action </th>
                                                    @endcan
                                                    
                                                </tr>
                                            </tfoot>
                                            <tbody>
                                                <?php $number =1; ?>
                                                @foreach($invo as $orders)
                                                    <tr>
                                                        <td>{{$number}}</td>
                                                        <td>{{$orders->transaction_number}}</td>
                                                        <td>{{$orders->distributor->name}}
                                                            {{-- @foreach(ProductDistributor($orders->distributor_id) as $dist)
                                                                {{$dist->name}}
                                                            @endforeach --}}
                                                        </td>
                                                        <td> {{$orders->invoice_number}} </td>
                                                        <td> {{$orders->warehouse->name}}</td>
                                                        <td>{{$orders->created_at}}
                                                            
                                                        </td>
                                                        @can('print-invoice')
                                                            <td>
                                                        
                                                                <a href="{{route('print.invoice', $orders->transaction_number)}}" class="btn btn-success">
                                                                    <i class="fa fa-book"></i> See Invoice
                                                                </a>
                                                            
                                                            </td>
                                                        @endcan
                                                    </tr>
                                                    
                                                    <?php
                                                    $number++; ?>
                                                @endforeach
                                            </tbody>
                                        
                                        </table>
                                    </div>
                                    
                                </div> 
                                    
                            @endif
                        
                        @endrole
                    </div>
	            </div>
	        </div>
	     </div>
	</div>


    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <!--End Back To Top Button-->
	
@endsection