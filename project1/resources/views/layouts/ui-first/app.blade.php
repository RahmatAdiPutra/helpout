<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>{{ env('APP_NAME') }} | @stack('appTitle')</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <base href="{{ url('') }}">

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
