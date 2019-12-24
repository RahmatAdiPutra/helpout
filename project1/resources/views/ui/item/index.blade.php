@extends('layouts.ui-first.app')

@push('appTitle', 'Item')

@section('cssSection')
@endsection

@section('jsSection')
<script src="{{ asset('js/ui/item.js') }}"></script>
<script>
    window.dataItemType = {!! json_encode(\App\Models\ItemType::select('id','name')->get()) !!};
</script>
@endsection

@section('content-wrapper')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <div class="row mb-2">
                        <div class="col-sm-5">
                            <div id="toggle-hide-column"></div>
                        </div>
                    </div>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <button type="button" class="btn btn-default float-sm-right" data-toggle="modal" data-target="#modalForm" id="create">Create</button>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="auto-scroll">
                <table id="detailedTable" class="table table-bordered table-hover">
                    <thead></thead>
                </table>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
@include('ui.item.form')
@include('layouts.ui-first.confirm')
@endsection