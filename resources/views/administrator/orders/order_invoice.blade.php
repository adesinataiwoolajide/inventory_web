@extends("layouts.app")
    @section("content")
    <div class="clearfix"></div>
    <div class="content-wrapper">
   		<div class="container-fluid">
   			<div class="row pt-2 pb-2">
		        <div class="col-sm-9">
				    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('administrator.dashboard')}}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{route('order.create')}}">Add Order</a></li>
                        <li class="breadcrumb-item"><a href="{{route('order.index')}}">View Orders</a></li>
                        <li class="breadcrumb-item"><a href="{)}}">Order Invoice</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Adding Distributor Order</li>
                        
			         </ol>
			   	</div>
            </div>
            <div class="card">
                <div class="card-body">
                    <!-- Content Header (Page header) -->
                    <section class="content-header">
                        <h3>
                            Invoice
                            <small>#007612</small>
                        </h3>
                    </section>
      
                    <!-- Main content -->
                    <section class="invoice">
                        <!-- title row -->
                        <div class="row mt-3">
                            <div class="col-lg-6">
                                <h4><i class="fa fa-globe"></i> Company Name</h4>
                            </div>
                            <div class="col-lg-6">
                                <h5 class="float-sm-right">Date: 2/10/2014</h5>
                            </div>
                        </div>
                          
                        <hr>
                        <div class="row invoice-info">
                            <div class="col-sm-4 invoice-col">
                                From
                                <address>
                                    <strong>Kudiland Inc</strong><br>
                                    543 suthpark drive<br>
                                    Boston, MA 94107<br>
                                    Phone: (555) 539-1444<br>
                                    Email: info@example.com
                                </address>
                            </div><!-- /.col -->
                            <div class="col-sm-4 invoice-col">
                                To
                                <address>
                                    <strong>Sandra Mekoya</strong><br>
                                    543 suthpark drive<br>
                                    Boston, MA 94107<br>
                                    Phone: (555) 539-1444<br>
                                    Email: support@example.com
                                </address>
                            </div><!-- /.col -->
                            <div class="col-sm-4 invoice-col">
                                <b>Invoice #007612</b><br>
                                <br>
                                <b>Order ID:</b> 4F3S8J<br>
                                <b>Payment Due:</b> 2/22/2014<br>
                                <b>Account:</b> 968-34567
                            </div><!-- /.col -->
                        </div><!-- /.row -->
      
                          <!-- Table row -->
                        <div class="row">
                            <div class="col-12 table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th>Qty</th>
                                        <th>Product</th>
                                        <th>Serial #</th>
                                        <th>Description</th>
                                        <th>Subtotal</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Call of Duty</td>
                                        <td>455-981-221</td>
                                        <td>El snort testosterone trophy driving gloves handsome</td>
                                        <td>$64.50</td>
                                    </tr>
                                    
                                    </tbody>
                                </table>
                            </div><!-- /.col -->
                        </div><!-- /.row -->
      
                        <div class="row">
                            <!-- accepted payments column -->
                            <div class="col-lg-6 payment-icons">
                                <p class="lead">Payment Methods:</p>
                                <img src="assets/images/payment-icons/visa-dark.png" alt="Visa">
                                <img src="assets/images/payment-icons/mastro-dark.png" alt="Mastercard">
                                <img src="assets/images/payment-icons/american-dark.png" alt="American Express">
                                <img src="assets/images/payment-icons/paypal-dark.png" alt="Paypal">
                                <p class="bg-light p-2 mt-3 rounded">
                                    Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles, weebly ning heekya handango imeem plugg dopplr jibjab, movity jajah plickers sifteo edmodo ifttt zimbra.
                                </p>
                            </div><!-- /.col -->
                            <div class="col-lg-6">
                                <p class="lead">Amount Due 2/22/2014</p>
                                <div class="table-responsive">
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <th style="width:50%">Subtotal:</th>
                                                <td>$250.30</td>
                                            </tr>
                                        
                                        </tbody>
                                    </table>
                                </div>
                            </div><!-- /.col -->
                        </div><!-- /.row -->
      
                        <!-- this row will not appear when printing -->
                        <hr>
                        <div class="row no-print">
                            <div class="col-lg-3">
                                <a href="javascript:window.print();" target="_blank" 
                                class="btn btn-dark m-1"><i class="fa fa-print"></i> Print</a>
                            </div>
                            <div class="col-lg-9">
                                <div class="float-sm-right">
                                    <button class="btn btn-success m-1"><i class="fa fa-credit-card"></i> Submit Payment</button>
                                    <button class="btn btn-primary m-1"><i class="fa fa-download"></i> Generate PDF</button>
                                </div>
                            </div>
                        </div>
                    </section><!-- /.content -->
                </div>
            </div>
	     </div>
	</div>
    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <!--End Back To Top Button-->
@endsection