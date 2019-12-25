@extends('layouts.ui-first.app')

@push('appTitle', 'Role')

@section('cssSection')
@endsection

@section('jsSection')
<script src="{{ asset('js/ui/role.js') }}"></script>
@endsection

@section('content-wrapper')
@include('layouts.ui-first.content-wrapper')
@include('ui.role.form')
@include('layouts.ui-first.confirm')
@endsection