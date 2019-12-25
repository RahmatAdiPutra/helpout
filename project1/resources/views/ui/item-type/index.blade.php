@extends('layouts.ui-first.app')

@push('appTitle', 'Item Type')

@section('cssSection')
@endsection

@section('jsSection')
<script src="{{ asset('js/ui/item-type.js') }}"></script>
@endsection

@section('content-wrapper')
@include('layouts.ui-first.content-wrapper')
@include('ui.item-type.form')
@include('layouts.ui-first.confirm')
@endsection