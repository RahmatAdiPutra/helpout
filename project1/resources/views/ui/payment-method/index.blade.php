@extends('layouts.ui-first.app')

@push('appTitle', 'Payment Method')

@section('cssSection')
@endsection

@section('jsSection')
<script src="{{ asset('js/ui/payment-method.js') }}"></script>
@endsection

@section('content-wrapper')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark"></h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <button type="button" class="btn btn-default float-sm-right" data-toggle="modal" data-target="#modalForm" id="create">
                        Create
                    </button>
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
                    <thead>
                    <tr>
                        <th>No</th>
                        <th>Name</th>
                        <th>Created at</th>
                        <th>Updated at</th>
                        <th>Updated by</th>
                        <th></th>
                    </tr>
                    </thead>
                </table>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
@include('ui.payment-method.form')
@include('layouts.ui-first.confirm')
@endsection