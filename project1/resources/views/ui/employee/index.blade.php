@extends('layouts.ui-first.app')

@push('appTitle', 'Employee')

@section('cssSection')
@endsection

@section('jsSection')
<script src="{{ asset('js/ui/employee.js') }}"></script>
@endsection

@section('content-wrapper')
@include('layouts.ui-first.content-wrapper')
@include('ui.employee.form')
@include('layouts.ui-first.confirm')
@endsection