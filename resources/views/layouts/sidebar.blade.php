<div id="wrapper">
        <div id="sidebar-wrapper" class="bg-theme bg-theme4" data-simplebar="" data-simplebar-auto-hide="true">
            <div class="brand-logo">
                <a href="{{route('administrator.dashboard')}}">
                    <h5 class="logo-text">Inventory Application</h5>
                </a>
            </div>
            <div class="user-details">
                <div class="media align-items-center user-pointer collapsed" data-toggle="collapse" data-target="#user-dropdown">
                    <div class="avatar">
                        <img class="mr-3 side-user-img" src="{{asset('styling/assets/inventory.jpg')}}" alt="user avatar">
                    </div>
                    <div class="media-body">
                        <h6 class="side-user-name"><?php $name = Auth::user()->name; ?> {{ $name }}</h6>
                    </div>
                </div>
                <div id="user-dropdown" class="collapse">
                    <ul class="user-setting-menu">
                        <li><a href=""><i class="icon-user"></i>  My Profile</a></li>
                        <li><a href=""><i class="icon-user"></i> Reset Password</a></li>
                        <li><a href="{{ route('admin.logout') }}"><i class="icon-power"></i> Logout</a></li>
                    </ul>
                </div>
            </div>
            <ul class="sidebar-menu do-nicescrol">
                <li class="sidebar-header">MAIN NAVIGATION</li>
                @if(( Auth::user()->email_verified_at) == ""))
                    <li>
                        <a href="{{ route('verification.resend') }}" class="waves-effect">
                            <i class="zmdi zmdi-view-dashboard"></i> <span>Resend Link </span>
                            <small class="badge float-right badge-light">
                                <i class="zmdi zmdi-long-arrow-right"></i>
                            </small>
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('admin.logout') }}" class="waves-effect">
                            <i class="zmdi zmdi-lock"></i> <span>Log Out</span>
                            <small class="badge float-right badge-light"><i class="zmdi zmdi-long-arrow-right"></i></small>
                        </a>
                    </li>	
                       
                @else
                    <li>
                        <a href="{{route('administrator.dashboard')}}" class="waves-effect">
                            <i class="zmdi zmdi-view-dashboard"></i> <span>Dashboard</span>
                            <small class="badge float-right badge-light">
                                <i class="zmdi zmdi-long-arrow-right"></i>
                            </small>
                        </a>
                    </li>
                    @if ((auth()->user()->hasRole('Administrator')) OR
                        (auth()->user()->hasRole('Admin')) OR 
                        (auth()->user()->hasRole('Editor')) OR
                        (auth()->user()->hasRole('Receptionist')))
                        <li>
                            <a href="javaScript:void();" class="waves-effect">
                                <i class="zmdi zmdi-card-travel"></i>
                                <span>Inventory Mgt</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="sidebar-submenu">
                                <li><a href="{{route('category.create')}}"><i class="zmdi zmdi-long-arrow-right"></i> Categories</a></li>
                                <li><a href="{{route('variant.create')}}"><i class="zmdi zmdi-long-arrow-right"></i> Variants</a></li>
                                <li><a href="{{route('product.create')}}"><i class="zmdi zmdi-long-arrow-right"></i> Products</a></li>
                                <li><a href="{{route('inventory.index')}}"><i class="zmdi zmdi-long-arrow-right"></i> Stocks</a></li>
                                <li><a href="{{route('order.create')}}"><i class="zmdi zmdi-long-arrow-right"></i> Orders</a></li>
                            
                            </ul>
                        </li>
                        <li>
                            <a href="javaScript:void();" class="waves-effect">
                                <i class="zmdi zmdi-card-travel"></i>
                                <span>Customer Mgt</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="sidebar-submenu">
                                <li><a href="{{route('supplier.create')}}"><i class="zmdi zmdi-long-arrow-right"></i> Suppliers</a></li>
                                <li><a href="{{route('distributor.create')}}"><i class="zmdi zmdi-long-arrow-right"></i> Distributors</a></li>
                                
                                
                            </ul>
                        </li>
                    @endif
                    @if ((auth()->user()->hasRole('Administrator')) OR
                        (auth()->user()->hasRole('Admin')) OR 
                        (auth()->user()->hasRole('Accountant')))
                        <li>
                            <a href="javaScript:void();" class="waves-effect">
                                <i class="zmdi zmdi-card-travel"></i>
                                <span>Accounting Mgt</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="sidebar-submenu">
                                <li><a href="{{route('sales.index')}}"><i class="zmdi zmdi-long-arrow-right"></i> Sales & Purchase</a></li>
                                <li><a href="{{route('order.invoice')}}"><i class="zmdi zmdi-long-arrow-right"></i> Invoices</a></li>
                                <li><a href="{{route('payment.index')}}"><i class="zmdi zmdi-long-arrow-right"></i> Payments</a></li>
                                <li><a href=""><i class="zmdi zmdi-long-arrow-right"></i> Salary Mgt</a></li>
                                
                            </ul>
                        </li>
                        <li>
                            <a href="javaScript:void();" class="waves-effect">
                                <i class="zmdi zmdi-card-travel"></i>
                                <span>Credit Mgt</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="sidebar-submenu">
                                <li><a href="{{route('credit.index')}}"><i class="zmdi zmdi-long-arrow-right"></i> Sales Credit</a></li>
                                <li><a href="{{route('credit.paid')}}"><i class="zmdi zmdi-long-arrow-right"></i> Paid Credits</a></li>
                                <li><a href="{{route('credit.unpaid')}}"><i class="zmdi zmdi-long-arrow-right"></i> Un Paid Credits</a></li>
                                <li><a href="{{route('credit.payment')}}"><i class="zmdi zmdi-long-arrow-right"></i> Payments History</a></li>
                                
                            </ul>
                        </li>
                    @endif
                    @if ((auth()->user()->hasRole('Administrator')))
                        <li>
                            <a href="javaScript:void();" class="waves-effect">
                                <i class="zmdi zmdi-card-travel"></i>
                                <span>Warehouse Mgt</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="sidebar-submenu">
                                <li><a href="{{route('warehouse.create')}}"><i class="zmdi zmdi-long-arrow-right"></i> Add Ware House</a></li>
                                <li><a href=""><i class="zmdi zmdi-long-arrow-right"></i> Ware House Sales</a></li>
                                <li><a href=""><i class="zmdi zmdi-long-arrow-right"></i> Warehouse Products</a></li>
                                <li><a href=""><i class="zmdi zmdi-long-arrow-right"></i> Ware House Credit</a></li>
                                <li><a href=""><i class="zmdi zmdi-long-arrow-right"></i> Ware House Payment</a></li>
                            </ul>
                        </li>
                    @endif
                    @if ((auth()->user()->hasRole('Administrator')) OR
                        (auth()->user()->hasRole('Admin')))
                        <li>
                            <a href="javaScript:void();" class="waves-effect">
                                <i class="zmdi zmdi-card-travel"></i>
                                <span>Outlet Mgt</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="sidebar-submenu">
                                <li><a href="{{route('outlet.create')}}"><i class="zmdi zmdi-long-arrow-right"></i>Add Outlet</a></li>
                                <li><a href="{{route('assign.outlet.create')}}"><i class="zmdi zmdi-long-arrow-right"></i> Assign Outlet</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="{{route('employee.create')}}" class="waves-effect">
                                <i class="fa fa-group"></i> <span>Employee</span>
                                <small class="badge float-right badge-light">
                                    <i class="zmdi zmdi-long-arrow-right"></i>
                                </small>
                            </a>
                        </li>
                        <li>
                            <a href="javaScript:void();" class="waves-effect">
                                <i class="zmdi zmdi-card-travel"></i>
                                <span>User Mgt</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="sidebar-submenu">
                                <li><a href="{{route('user.create')}}"><i class="zmdi zmdi-long-arrow-right"></i> Add User</a></li>
                                <li><a href=""><i class="zmdi zmdi-long-arrow-right"></i> Acces Control</a></li>
                                <li><a href=""><i class="zmdi zmdi-long-arrow-right"></i> Permission</a></li>
                                
                            </ul>
                        </li>
                        <li>
                            <a href="{{route('log.index')}}" class="waves-effect">
                                <i class="fa fa-users"></i> <span>All Activities Log</span>
                                <small class="badge float-right badge-light">
                                    <i class="zmdi zmdi-long-arrow-right"></i>
                                </small>
                            </a>
                        </li>
                    @endif
                    {{-- @if ((auth()->user()->hasRole('Administrator')) OR
                        (auth()->user()->hasRole('Admin')) OR 
                        (auth()->user()->hasRole('Editor')) OR
                        (auth()->user()->hasRole('Receptionist')))
                        <li>
                            <a href="{{route('category.create')}}" class="waves-effect">
                                <i class="fa fa-users"></i> <span>Categories</span>
                                <small class="badge float-right badge-light">
                                    <i class="zmdi zmdi-long-arrow-right"></i>
                                </small>
                            </a>
                        </li>
                        <li>
                            <a href="{{route('variant.create')}}" class="waves-effect">
                                <i class="zmdi zmdi-view-dashboard"></i> <span>Product Variants</span>
                                <small class="badge float-right badge-light">
                                    <i class="zmdi zmdi-long-arrow-right"></i>
                                </small>
                            </a>
                        </li>
                        <li>
                            <a href="{{route('supplier.create')}}" class="waves-effect">
                                <i class="fa fa-cog"></i> <span>Supplier</span>
                                <small class="badge float-right badge-light">
                                    <i class="zmdi zmdi-long-arrow-right"></i>
                                </small>
                            </a>
                        </li>
                        
                        <li>
                            <a href="{{route('distributor.create')}}" class="waves-effect">
                                <i class="fa fa-sitemap"></i> <span>Distributors</span>
                                <small class="badge float-right badge-light">
                                    <i class="zmdi zmdi-long-arrow-right"></i>
                                </small>
                            </a>
                        </li>
                        
                    
                        <li>
                            <a href="{{route('product.create')}}" class="waves-effect">
                                <i class="zmdi zmdi-card-travel"></i>
                                <span>Products</span>
                                <small class="badge float-right badge-light">
                                    <i class="zmdi zmdi-long-arrow-right"></i>
                                </small>
                            </a>
                            
                        </li>

                        <li>
                            <a href="{{route('inventory.index')}}" class="waves-effect">
                                <i class="zmdi zmdi-card-travel"></i>
                                <span>Inventory</span>
                                <small class="badge float-right badge-light">
                                    <i class="zmdi zmdi-long-arrow-right"></i>
                                </small>
                            </a>
                            
                        </li>
                    @endif --}}
                    {{--  --}}
                    
                   
                    {{-- @if(auth()->user()->hasRole('Administrator') OR 
                        (auth()->user()->hasRole('Accountant'))
                        OR 
                        (auth()->user()->hasRole('Admin')))
                        <li>
                            <a href="{{route('payment.index')}}" class="waves-effect">
                                <i class="zmdi zmdi-card-travel"></i>
                                <span>Payments</span>
                                <small class="badge float-right badge-light">
                                    <i class="zmdi zmdi-long-arrow-right"></i>
                                </small>
                            </a>
                            
                        </li>
                        <li>
                            <a href="{{route('order.invoice')}}" class="waves-effect">
                                <i class="zmdi zmdi-card-travel"></i>
                                <span>Orders </span>
                                <small class="badge float-right badge-light">
                                    <i class="zmdi zmdi-long-arrow-right"></i>
                                </small>
                            </a>
                            
                        </li>
                        <li>
                            <a href="{{route('credit.index')}}" class="waves-effect">
                                <i class="zmdi zmdi-card-travel"></i>
                                <span>Credit Mgt</span>
                                <small class="badge float-right badge-light">
                                    <i class="zmdi zmdi-long-arrow-right"></i>
                                </small>
                            </a>
                            
                        </li>
                        <li>
                            <a href="{{route('sales.index')}}" class="waves-effect">
                                <i class="zmdi zmdi-card-travel"></i>
                                <span>Sales</span>
                                <small class="badge float-right badge-light">
                                    <i class="zmdi zmdi-long-arrow-right"></i>
                                </small>
                            </a>
                            
                        </li>
                        <li>
                            <a href="{{route('product.create')}}" class="waves-effect">
                                <i class="zmdi zmdi-card-travel"></i>
                                <span>Account</span>
                                <small class="badge float-right badge-light">
                                    <i class="zmdi zmdi-long-arrow-right"></i>
                                </small>
                            </a>
                            
                        </li>
                        <li>
                            <a href="" class="waves-effect">
                                <i class="zmdi zmdi-card-travel"></i>
                                <span>Salary</span>
                                <small class="badge float-right badge-light">
                                    <i class="zmdi zmdi-long-arrow-right"></i>
                                </small>
                            </a>
                            
                        </li>
                        
                    @endif --}}
                    <li>
                        <a href="{{route('log.user')}}" class="waves-effect">
                            <i class="fa fa-cloud"></i> <span>My Activity Log</span>
                            <small class="badge float-right badge-light"><i class="zmdi zmdi-long-arrow-right"></i></small>
                        </a>
                    </li>	
                    <li>
                        <a href="{{ route('admin.logout') }}" class="waves-effect">
                            <i class="zmdi zmdi-lock"></i> <span>Log Out</span>
                            <small class="badge float-right badge-light"><i class="zmdi zmdi-long-arrow-right"></i></small>
                        </a>
                    </li>	
                       
                @endif
                
            </ul>
           
        </div>
        
        <header class="topbar-nav">
             <nav class="navbar navbar-expand fixed-top">
                  <ul class="navbar-nav mr-auto align-items-center">
                    <li class="nav-item">
                          <a class="nav-link toggle-menu" href="">
                           <i class="icon-menu menu-icon"></i>
                         </a>
                    </li>
                    
                    <h4 align="center"><p >INVENTORY APPLICATION</p></h4>
                  </ul>
             
                  <ul class="navbar-nav align-items-center right-nav-link">
           
                    <li class="nav-item">
                        
                        <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" data-toggle="dropdown" href="">
                            <span class="user-profile"><img src="{{asset('styling/assets/inventory.jpg')}}" class="img-circle" alt="user avatar"></span>
                        </a>
                        
                    </li>
                  </ul>
            </nav>
        </header>
        <div class="clearfix"></div>