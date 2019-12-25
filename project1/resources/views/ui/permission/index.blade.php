@extends('layouts.ui-first.app')

@push('appTitle', 'Permission')

@section('cssSection')
@endsection

@section('jsSection')
<script src="{{ asset('js/ui/permission.js') }}"></script>
@endsection

@section('content-wrapper')
@include('layouts.ui-first.content-wrapper')
@include('ui.permission.form')
@include('layouts.ui-first.confirm')
@endsection