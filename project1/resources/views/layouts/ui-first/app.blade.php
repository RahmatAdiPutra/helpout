<!DOCTYPE html>
<html>

<head>
    @include('layouts.ui-first.css')
</head>

<body class="hold-transition sidebar-mini layout-fixed">
    <!-- Wrapper -->
    <div class="wrapper">
        @include('layouts.ui-first.navbar')
        @include('layouts.ui-first.main-sidebar')
        @yield('content-wrapper')
        @include('layouts.ui-first.footer')
        @include('layouts.ui-first.control-sidebar')
    </div>
    <!-- ./wrapper -->
    @include('layouts.ui-first.js')
</body>

</html>
