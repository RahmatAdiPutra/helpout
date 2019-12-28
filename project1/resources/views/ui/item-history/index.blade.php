@extends('layouts.ui-first.app')

@push('appTitle', 'Item History')

@section('cssSection')
@endsection

@section('jsSection')
<script src="{{ asset('js/ui/item-history.js') }}"></script>
@endsection

@section('content-wrapper')
@include('layouts.ui-first.content-wrapper')
@include('ui.item-history.form')
@include('layouts.ui-first.confirm')
@endsection