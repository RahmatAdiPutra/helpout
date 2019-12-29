@extends('layouts.ui-first.app')

@push('appTitle', 'Order')

@section('cssSection')
@endsection

@section('jsSection')
<script src="{{ asset('js/ui/order.js') }}"></script>
@endsection

@section('content-wrapper')
@include('layouts.ui-first.content-wrapper')
@include('ui.order.form')
@include('layouts.ui-first.confirm')
@include('layouts.ui-first.invoice')
@endsection