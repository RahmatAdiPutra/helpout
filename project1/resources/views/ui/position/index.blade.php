@extends('layouts.ui-first.app')

@push('appTitle', 'Position')

@section('cssSection')
@endsection

@section('jsSection')
<script src="{{ asset('js/ui/position.js') }}"></script>
@endsection

@section('content-wrapper')
@include('layouts.ui-first.content-wrapper')
@include('ui.position.form')
@include('layouts.ui-first.confirm')
@endsection
