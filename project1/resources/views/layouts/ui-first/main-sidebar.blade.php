<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{ url('/') }}" class="brand-link">
        <img src="{{ asset('img/kizaru.png') }}" alt="KIZARU Logo" class="brand-image img-circle elevation-3"
            style="opacity: .8">
        <span class="brand-text font-weight-light">KIZARU</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="{{ asset('adminlte3/dist/img/avatar.png') }}" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">Alexander Pierce</a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <li class="nav-header">MASTER</li>
                <li class="nav-item">
                    <a href="{{ url('/position') }}" class="nav-link">
                        <i class="nav-icon far fa-calendar-alt"></i>
                        <p>
                            Position
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ url('/employee') }}" class="nav-link">
                        <i class="nav-icon far fa-image"></i>
                        <p>
                            Employee
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ url('/customer') }}" class="nav-link">
                        <i class="nav-icon far fa-plus-square"></i>
                        <p>
                            Customer
                        </p>
                    </a>
                </li>
                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-book"></i>
                        <p>
                            Items
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ url('/item-type') }}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Item Type</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ url('/item') }}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Item</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ url('/item-history') }}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Item History</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a href="{{ url('/payment-method') }}" class="nav-link">
                        <i class="nav-icon far fa-plus-square"></i>
                        <p>
                            Payment Method
                        </p>
                    </a>
                </li>
                <li class="nav-header">TRANSACTION</li>
                <li class="nav-item">
                    <a href="{{ url('/order') }}" class="nav-link">
                        <i class="nav-icon fas fa-book"></i>
                        <p>
                            Order
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ url('/payment') }}" class="nav-link">
                        <i class="nav-icon far fa-plus-square"></i>
                        <p>
                            Payment
                        </p>
                    </a>
                </li>
                <li class="nav-header">SETTING</li>
                <li class="nav-item">
                    <a href="{{ url('/role') }}" class="nav-link">
                        <i class="nav-icon far fa-envelope"></i>
                        <p>
                            Role
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ url('/permission') }}" class="nav-link">
                        <i class="nav-icon fas fa-book"></i>
                        <p>
                            Permission
                        </p>
                    </a>
                </li>
                {{-- <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
                        <i class="nav-icon far fa-plus-square"></i>
                        <p>
                            User
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ url('/') }}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Role Permission</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ url('/') }}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Login</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ url('/') }}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Register</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ url('/') }}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Forgot Password</p>
                            </a>
                        </li>
                    </ul>
                </li> --}}
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
<!-- ./main-sidebar -->