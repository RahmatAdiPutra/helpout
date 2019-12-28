@extends('layouts.ui-first.app')

@push('appTitle', 'Customer')

@section('cssSection')
@endsection

@section('jsSection')
<script src="{{ asset('js/ui/customer.js') }}"></script>
@endsection

@section('content-wrapper')
@include('layouts.ui-first.content-wrapper')
@include('ui.customer.form')
@include('layouts.ui-first.confirm')
@endsection