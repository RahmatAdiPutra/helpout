(function (w, $) {
    'use strict';

    var baseUrl = $('base').attr('href') + '/api/order';
    var dataUrl = baseUrl + '/data';
    var form = $('#form');
    var columnList = [];
    var toolbar = '#detailedTable_wrapper .row .col-sm-12 .row .col-sm-12';

    var dataTableOptions = {
        ajax: {
            url: dataUrl
        },
        columns: [
            {
                name: 'no',
                orderable: false,
                'render': function ( data, type, full, meta ) {
                    return  meta.row + 1;
                }
            },
            {
                data: 'customer.name',
                name: 'name'
            },
            {
                data: 'created_at',
                name: 'created_at',
                render: function (data, type, row) {
                    return moment(data).format('DD MMMM YYYY HH:mm');
                }
            },
            {
                data: 'updated_at',
                name: 'updated_at',
                render: function (data, type, row) {
                  return moment(data).format('DD MMMM YYYY HH:mm');
                }
            },
            {
                data: 'updated_by.name',
                name: 'updated_by',
                render: function (data, type, row) {
                    return data ? data : '';
                }
            },
            {
                data: 'payment.total_amount',
                name: 'total_amount',
                orderable: false,
                render: function (data, type, row) {
                    return data ? 'Rp ' + $.number(data, 2) : '';
                }
            },
            {
                data: 'payment.status',
                name: 'status',
                orderable: false,
                render: function (data, type, row) {
                    return data ? data : '';
                }
            },
            {
                name: 'action',
                orderable: false,
                mRender: function (data, type, row) {
                   if (row.payment) {
                        return `<div data-id="${row.id}" id="print"><i class="fas fa-print"></i></div>`;
                    } else {
                        return `
                            <div data-id="${row.id}" id="update"><i class="nav-icon far fa-edit"></i></div>
                            <div data-id="${row.id}" id="delete"><i class="nav-icon far fa-trash-alt"></i></div>
                        `;
                    }
                }
            },
        ]
    };

    dataTableOptions.columns.forEach(function(item, index) {
        item.name = item.name.split('.')[0];
        item.name = item.name.split('_').join(' ');
        columnList.push(`<th style="font-size:xx-small">${upperCaseFirst(item.name)}</th>`);
    });
    $('#detailedTable thead').html('<tr>'+columnList.join(' ')+'</tr>');
    
    var table = $('#detailedTable').DataTable(
        $.extend(true, w.dataTableDefaultOptions, dataTableOptions)
    );

    $('.content-header .container-fluid').html('<button type="button" class="btn btn-default btn-sm" id="toggle-order">Order List</button>');
    $('.content .container-fluid').hide();
    $('.content .container-second').show();
    $('.content .container-second').html(`
        <div class="row pb-2">
            <input type="text" class="form-control" id="id" name="id" hidden>
            <input type="text" class="form-control" id="updated_by" name="updated_by" hidden>
            <div class="col-lg-12 col-sm-6">
                <button type="button" class="btn btn-default float-sm-left" id="add">Add Item</button>
            </div><!-- /.col -->
            <div class="col-lg-12 col-sm-6">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="float-sm-right label-custom">Customer :</div> 
                    </div>
                    <div class="col-sm-6">
                        <select class="form-control select-custom float-sm-right" id="customer_id" name="customer_id" required></select>
                    </div>
                </div>
            </div><!-- /.col -->
        </div><!-- /.row -->
        <div class="auto-scroll">
            <table id="detailedTableSecond" class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th></th>
                        <th>Item</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Discount %</th>
                        <th>Amount</th>
                    </tr>
                </thead>
                <tbody></tbody>
                <tfoot>
                    <tr>
                        <th colspan="5">Total Amount</th>
                        <th></th>
                    </tr>
                </tfoot>
            </table>
        </div>
        <div class="row">
            <div class="col-12">
                <button type="button" class="btn btn-primary float-sm-right m-1" id="pay" data-toggle="modal" data-target="#modalForm" disabled>Pay</button>
                <button type="button" class="btn btn-primary float-sm-right m-1" id="save-order" disabled>Save Order</button>
                <button type="button" class="btn btn-default float-sm-right m-1" id="clear">Clear</button>
            </div><!-- /.col -->
        </div><!-- /.row -->
    `);

    $('div.toolbar-hide').html(`<input type="number" class="form-control form-control-sm" id="hide-column" style="font-size:xx-small" min="0" max="${dataTableOptions.columns.length - 1}" size="4" placeholder="Hide column">`);
    
    $(toolbar + ' .toolbar-hide').on('change', '#hide-column', hideColumn);
    $('#add').on('click', createData);
    $('#detailedTable tbody').on('click', '#update', updateData);
    $('#detailedTable tbody').on('click', '#delete', dalateData);
    $('#confirm-footer button').on('click', confirm);
    $('#clear').on('click', clearForm);
    $('#pay').on('click', payment);
    $('#save-order').on('click', saveDataOrder);

    $('#due_date').datepicker({
        format: 'yyyy-mm-dd'
    });

    selectCustomer();

    $('#toggle-order').on('click', function (event) {
        event.preventDefault();
        if ($('.content .container-fluid').is(':visible')) {
            $('.content .container-fluid').toggle();
            $('.content .container-second').toggle();
            $('#toggle-order').html('Order');
        } else {
            clearForm(event);
            $('.content .container-fluid').toggle();
            $('.content .container-second').toggle();
            $('#toggle-order').html('Shopping cart');
        }
    });

    $('#detailedTableSecond tbody').on('click', '#remove', function (event) {
        event.preventDefault();
        $(this).parent().parent().remove();
        totalAmount();
    });

    $('#detailedTableSecond tbody').on('click', 'select', function (event) {
        event.preventDefault();
        var el = $(this);
        var index = $(this).attr('id');
        index = index.substr(index.length - 1);
        el.select2({
            minimumInputLength: 1,
            allowClear: true,
            placeholder: 'Search item',
            cache: true,
            ajax: {
                dataType: 'json',
                url: $('base').attr('href') + '/api/item/data',
                delay: 800,
                data: function(params) {
                    return {
                        search: params.term
                    };
                },
                processResults: function (data, page) {
                    var item = data.payloads.data.map(function(data, i) {
                        return {
                            id : data.id,
                            text : data.name
                        }
                    });
                    return {
                        results: item
                    };
                },
            }
        }).on('select2:select', function (event) {
            event.preventDefault();
            var id = el.val();
            $.ajax({
                method: 'GET',
                dataType: 'json',
                url: $('base').attr('href') + '/api/item' + '/' + id,
                success: function (response) {
                    $('#price_'+index).number(true, 2);
                    $('#discount_'+index).number(true, 2);
                    $('#amount_'+index).number(true, 2);

                    $('#price_'+index).val($.number(response.payloads.price, 2));
                    $('#discount_'+index).val(response.payloads.discount * 100);
                    $('#amount_'+index).val(0);

                    $('#quantity_'+index).prop('disabled', false);
                },
                error: function (response) {}
            });
        });
    });

    $('#detailedTableSecond tbody').on('click', 'input', function (event) {
        event.preventDefault();
        var index = $(this).attr('id').substr($(this).attr('id').length - 1);
        var quantity = $('#quantity_'+index).val();
        var price = $('#price_'+index).val();
        var discount = $('#discount_'+index).val() / 100;
        if (discount == 0) {
            var amount = quantity * price;
        } else {
            var amount = quantity * price * discount;
        }
        $('#amount_'+index).val(amount);
        totalAmount();
    });

    form.on('submit', saveDataPayment);

    function payment(event) {
        event.preventDefault();
        var date = new Date();
        date.setDate(date.getDate() + 1);
        selectPaymentMethod();
        selectStatusPayment();
        $('#due_date').datepicker('setDate', date);
        totalAmount()
    }

    function createData(event) {
        event.preventDefault();
        auth();
        var index = $('#detailedTableSecond tbody').children();
        $('#detailedTableSecond tbody').append(`
            <tr>
                <td><div id="remove"><i class="nav-icon far fa-trash-alt"></i></div></td>
                <td><select class="form-control select-custom" id="item_id_${index.length}" name="item_id[]" required></select></td>
                <td><input type="number" class="form-control" id="quantity_${index.length}" name="quantity[]" min="0" required></td>
                <td><input type="text" class="form-control" id="price_${index.length}" name="price[]" disabled></td>
                <td><input type="text" class="form-control" id="discount_${index.length}" name="discount[]" disabled></td>
                <td><input type="text" class="form-control" id="amount_${index.length}" name="amount[]" disabled></td>
            </tr>
        `);
        $('#item_id_'+index.length).trigger('click');
        $('#quantity_'+index.length).prop('disabled', true);
    }

    function updateData(event) {
        event.preventDefault();
        auth();
        $('#toggle-order').trigger('click');
        var id = $(this).attr("data-id");
        $.ajax({
            method: 'GET',
            dataType: 'json',
            url: baseUrl + '/' + id,
            success: function (response) {
                $('#id').val(response.payloads.id);
                $('#customer_id').append(new Option(response.payloads.customer.name, response.payloads.customer.id, true, true)).trigger('change');
                response.payloads.items.forEach((v, index) => {
                    $('#detailedTableSecond tbody').append(`
                        <tr>
                            <td><div id="remove"><i class="nav-icon far fa-trash-alt"></i></div></td>
                            <td><select class="form-control select-custom" id="item_id_${index}" name="item_id[]" required></select></td>
                            <td><input type="number" class="form-control" id="quantity_${index}" name="quantity[]" min="0" required></td>
                            <td><input type="text" class="form-control" id="price_${index}" name="price[]" disabled></td>
                            <td><input type="text" class="form-control" id="discount_${index}" name="discount[]" disabled></td>
                            <td><input type="text" class="form-control" id="amount_${index}" name="amount[]" disabled></td>
                        </tr>
                    `);
                    $('#price_'+index).number(true, 2);
                    $('#discount_'+index).number(true, 2);
                    $('#amount_'+index).number(true, 2);

                    $('#price_'+index).val($.number(v.pivot.price, 2));
                    $('#discount_'+index).val($.number(v.pivot.discount * 100, 2));
                    $('#amount_'+index).val($.number(v.pivot.amount, 2));

                    $('#quantity_'+index).val(v.pivot.quantity);
                    $('#item_id_'+index).append(new Option(v.name, v.id, true, true)).trigger('change');
                });
                totalAmount();
            },
            error: function (response) {}
        });
    }

    function dalateData(event) {
        event.preventDefault();
        $('#confirm-header .modal-title').html(upperCaseFirst($(this).attr('id')));
        $('#confirm-body').html('Are you sure want to delete ?');
        $('#modalConfirm').attr('data-id', $(this).attr('data-id'));
        $('#modalConfirm').modal('show');
    }

    function saveDataOrder(event) {
        event.preventDefault();
        var child = $('#detailedTableSecond tbody').children();
        var formData = new FormData();
        formData.append('id', $('#id').val());
        formData.append('customer_id', $('#customer_id').val());
        for (let index = 0; index < child.length; index++) {
            formData.append('item_id[]', $('#item_id_'+index).val());
            formData.append('quantity[]', $('#quantity_'+index).val());
            formData.append('price[]', $('#price_'+index).val());
            formData.append('discount[]', ($('#discount_'+index).val() / 100));
            formData.append('amount[]', $('#amount_'+index).val());
        }
        formData.append('updated_by', $('#updated_by').val());
        $.ajax({
            method: 'POST',
            dataType: 'json',
            url: baseUrl,
            data: formData,
            contentType: false,
            processData: false,
            success: function (response) {
                $('#toggle-order').trigger('click');
                table.ajax.url(dataUrl).load();
                toastr.success(response.payloads.message);
            },
            error: function (response) {}
        });
    }

    function saveDataPayment(event) {
        event.preventDefault();
        var child = $('#detailedTableSecond tbody').children();
        var formData = new FormData();
        formData.append('id', $('#id').val());
        formData.append('customer_id', $('#customer_id').val());
        for (let index = 0; index < child.length; index++) {
            formData.append('item_id[]', $('#item_id_'+index).val());
            formData.append('quantity[]', $('#quantity_'+index).val());
            formData.append('price[]', $('#price_'+index).val());
            formData.append('discount[]', ($('#discount_'+index).val() / 100));
            formData.append('amount[]', $('#amount_'+index).val());
        }
        formData.append('updated_by', $('#updated_by').val());
        formData.append('payment_method_id', $('#payment_method_id').val());
        formData.append('card_number', $('#card_number').val());
        formData.append('status', $('#status').val());
        formData.append('due_date', $('#due_date').val());
        formData.append('total_amount', $('#total_amount').val().replace(/,/g, ''));
        $.ajax({
            method: 'POST',
            dataType: 'json',
            url: baseUrl,
            data: formData,
            contentType: false,
            processData: false,
            success: function (response) {
                $('#modalForm').modal('hide');
                $('#toggle-order').trigger('click');
                table.ajax.url(dataUrl).load();
                toastr.success(response.payloads.message);
            },
            error: function (response) {}
        });
    }

    function confirm(event) {
        event.preventDefault();
        var id = $('#modalConfirm').attr('data-id');
        if ($(this).text() == 'Yes') {
            $.ajax({
                method: 'DELETE',
                dataType: 'json',
                url: baseUrl + '/' + id,
                success: function (response) {
                    $('#modalConfirm').attr('data-id', 'id');
                    $('#modalConfirm').modal('hide');
                    table.ajax.url(dataUrl).load();
                    toastr.success(response.payloads.message);
                },
                error: function (response) {}
            });
        }
    }

    function clearForm(event) {
        event.preventDefault();
        selectCustomer();
        $('#id').val('');
        $('#detailedTableSecond tbody').children().remove();
        $('#detailedTableSecond tfoot').children().children().last().html('');
        $('#pay').prop('disabled', true);
        $('#save-order').prop('disabled', true);
    }

    function selectCustomer() {
        $('#customer_id').select2({
            minimumInputLength: 1,
            allowClear: true,
            placeholder: 'Customer',
            cache: true,
            ajax: {
                dataType: 'json',
                url: $('base').attr('href') + '/api/customer/data',
                delay: 800,
                data: function(params) {
                    return {
                        search: params.term
                    };
                },
                processResults: function (data, page) {
                    var item = data.payloads.data.map(function(data, i) {
                        return {
                            id : data.id,
                            text : data.name
                        }
                    });
                    return {
                        results: item
                    };
                },
            },
            data: [{
                id : 1,
                text : 'Customer'
            }]
        });
        $('#customer_id').val(1).trigger('change');
    }

    function selectPaymentMethod(val) {
        $.ajax({
            method: 'GET',
            dataType: 'json',
            cache: true,
            url: $('base').attr('href') + '/api/payment-method/data',
            success: function (response) {
                var paymentMethod = response.payloads.data.map(function(data, i) {
                    return {
                        id : data.id,
                        text : data.name
                    }
                });

                $.ajax({
                    method: 'GET',
                    dataType: 'json',
                    cache: true,
                    url: $('base').attr('href') + '/api/setting/data/payment',
                    success: function (response) {
                        var index = paymentMethod.findIndex(x => x.text === response.payloads.default.method);

                        if (typeof val == 'undefined' || val == '') {
                            val = paymentMethod[index].id;
                            $('#card_number').parent().hide();
                        }

                        $('#payment_method_id').select2({
                            placeholder: 'Select payment method',
                            data: paymentMethod
                        }).on('select2:select', function (event) {
                            event.preventDefault();
                            var name = $(this).find("option:selected").text();
                            if (name == 'Cash') {
                                $('#card_number').parent().hide();
                            } else {
                                $('#card_number').parent().show();
                            }
                        });
                        $('#payment_method_id').val(val).trigger('change');
                    },
                    error: function (response) {}
                });
            },
            error: function (response) {}
        });
    }

    function selectStatusPayment(val) {
        $.ajax({
            method: 'GET',
            dataType: 'json',
            cache: true,
            url: $('base').attr('href') + '/api/setting/data/payment',
            success: function (response) {
                var status = response.payloads.allow.map(function(data, i) {
                    return {
                        id : data,
                        text : data
                    }
                });

                var index = status.findIndex(x => x.text === response.payloads.default.status);

                if (typeof val == 'undefined' || val == '') {
                    val = status[index].id;
                }

                $('#status').select2({
                    placeholder: 'Select payment status',
                    data: status
                });
                $('#status').val(val).trigger('change');
            },
            error: function (response) {}
        });
    }

    function totalAmount() {
        var child = $('#detailedTableSecond tbody').children();
        var amount = 0;
        for (let index = 0; index < child.length; index++) {
            amount += parseFloat($('#amount_'+index).val());
        }
        $('#detailedTableSecond tfoot').children().children().last().html($.number(amount, 2));
        $('#total_amount').val($.number(amount, 2));
        $('#pay').prop('disabled', false);
        $('#save-order').prop('disabled', false);
    }
    
    function auth() {
        $('#updated_by').val(dataAuth.id);
    }

    function hideColumn(event) {
        event.preventDefault();
        var val = $(this).val();
        if (val < dataTableOptions.columns.length) {
            // Get the column API object
            var column = table.column(val);
            // Toggle the visibility
            column.visible(!column.visible());
        }
    }

    function upperCaseFirst(str) {
        str = str.toLowerCase().replace(/\b[a-z]/g, function(letter) {
            return letter.toUpperCase();
        });
        return str;
    }
})(window, window.jQuery);
