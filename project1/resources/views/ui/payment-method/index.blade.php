@extends('layouts.ui-first.app')

@push('appTitle', 'Payment Method')

@section('cssSection')
@endsection

@section('jsSection')
<script src="{{ asset('js/ui/payment-method.js') }}"></script>
@endsection

@section('content-wrapper')
@include('layouts.ui-first.content-wrapper')
@include('ui.payment-method.form')
@include('layouts.ui-first.confirm')
@endsection