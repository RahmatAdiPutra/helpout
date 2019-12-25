@extends('layouts.ui-first.app')

@push('appTitle', 'Employee')

@section('cssSection')
@endsection

@section('jsSection')
<script src="{{ asset('js/ui/employee.js') }}"></script>
<script>
    window.dataPosition = {!! json_encode(\App\Models\Position::select('id','name')->get()) !!};
    window.dataReligion = {!! json_encode(\App\Models\Setting::get('religion')) !!};
    window.dataEmployee = {!! json_encode(\App\Models\Setting::get('employee')) !!};
</script>
@endsection

@section('content-wrapper')
@include('layouts.ui-first.content-wrapper')
@include('ui.employee.form')
@include('layouts.ui-first.confirm')
@endsection