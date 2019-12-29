@extends('layouts.ui-first.app')

@push('appTitle', 'Payment')

@section('cssSection')
@endsection

@section('jsSection')
<script src="{{ asset('js/ui/payment.js') }}"></script>
@endsection

@section('content-wrapper')
@include('layouts.ui-first.content-wrapper')
@include('ui.payment.form')
@include('layouts.ui-first.confirm')
@include('layouts.ui-first.invoice')
@endsection