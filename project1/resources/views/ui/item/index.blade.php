@extends('layouts.ui-first.app')

@push('appTitle', 'Item')

@section('cssSection')
@endsection

@section('jsSection')
<script src="{{ asset('js/ui/item.js') }}"></script>
@endsection

@section('content-wrapper')
@include('layouts.ui-first.content-wrapper')
@include('ui.item.form')
@include('layouts.ui-first.confirm')
@endsection