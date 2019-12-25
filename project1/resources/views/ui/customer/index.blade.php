@extends('layouts.ui-first.app')

@push('appTitle', 'Customer')

@section('cssSection')
@endsection

@section('jsSection')
<script src="{{ asset('js/ui/customer.js') }}"></script>
<script>
    window.dataStatusCustomer = {!! json_encode(\App\Models\Setting::get('customer')) !!};
    window.dataReligion = {!! json_encode(\App\Models\Setting::get('religion')) !!};
</script>
@endsection

@section('content-wrapper')
@include('layouts.ui-first.content-wrapper')
@include('ui.customer.form')
@include('layouts.ui-first.confirm')
@endsection