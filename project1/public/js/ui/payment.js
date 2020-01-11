(function (w, $) {
    'use strict';

    var baseUrl = $('base').attr('href') + '/api/payment';
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
                data: 'order.customer.name',
                name: 'customer'
            },
            {
                data: 'payment_method.name',
                name: 'payment_method'
            },
            {
                data: 'card_number',
                name: 'card_number'
            },
            {
                data: 'due_date',
                name: 'due_date',
                render: function (data, type, row) {
                    return moment(data).format('DD MMMM YYYY HH:mm');
                }
            },
            {
                data: 'total_amount',
                name: 'total_amount',
                render: function (data, type, row) {
                    return 'Rp ' + $.number(data, 2);
                }
            },
            {
                data: 'status',
                name: 'status'
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
                name: 'action',
                orderable: false,
                mRender: function (data, type, row) {
                    if (row.status == 'Submitted') {
                        return `
                            <div data-id="${row.id}" id="update"><i class="nav-icon far fa-edit"></i></div>
                            <div data-id="${row.id}" id="print"><i class="fas fa-print"></i></div>
                        `;
                    } else {
                        return `<div data-id="${row.id}" id="print"><i class="fas fa-print"></i></div>`;
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

    $('div.toolbar-hide').html(`<input type="number" class="form-control form-control-sm" id="hide-column" style="font-size:xx-small" min="0" max="${dataTableOptions.columns.length - 1}" size="4" placeholder="Hide column">`);
    
    $(toolbar + ' .toolbar-hide').on('change', '#hide-column', hideColumn);
    $('#detailedTable tbody').on('click', '#update', updateData);
    $('#detailedTable tbody').on('click', '#print', invoice);

    form.on('submit', saveData);

    function invoice(event) {
        event.preventDefault();
        var id = $(this).attr("data-id");
        $.ajax({
            method: 'GET',
            dataType: 'json',
            url: baseUrl + '/' + id,
            success: function (response) {
                var sub_total_price = 0;
                var sub_total_discount = 0;
                var res = response.payloads;
                var invoiceNumber = moment(res.updated_at).format('YYYYMMDDHHmmss')+'-'+res.id+'-'+res.order_id+'-'+res.payment_method_id;
                $('#print_invoice_number').html(': '+invoiceNumber);
                $('#print_payment_method').html(': '+res.payment_method.name);
                $('#print_card_number').html(': '+res.card_number);
                $('#print_cashier_name').html(': '+res.updated_by.name);
                $('#print_customer_name').html(': '+res.order.customer.name);
                $('#print_date').html(': '+moment(new Date()).format('DD MMMM YYYY HH:mm:ss'));
                $('#print_due_date').html(': '+moment(res.due_date).format('DD MMMM YYYY HH:mm:ss'));
                $('#print_payment_date').html(': '+moment(res.updated_at).format('DD MMMM YYYY HH:mm:ss'));
                $('#print_payment_status').html(': '+res.status);
                res.order.items.forEach((v, index) => {
                    sub_total_price += v.pivot.quantity * v.pivot.price;
                    sub_total_discount += v.pivot.quantity * v.pivot.price * v.pivot.discount;
                    $('#detailedTableSecond tbody').append(`
                        <tr>
                            <td>${res.order.updated_at}</td>
                            <td>${v.name}</td>
                            <td>${v.pivot.quantity}</td>
                            <td>Rp ${$.number(v.pivot.price, 2)}</td>
                            <td>${v.pivot.discount * 100}</td>
                            <td>Rp ${$.number(v.pivot.quantity * v.pivot.price, 2)}</td>
                            <td>Rp ${$.number(v.pivot.quantity * v.pivot.price * v.pivot.discount, 2)}</td>
                            <td>Rp ${$.number(v.pivot.amount, 2)}</td>
                        </tr>
                    `);
                });
                $('#print_total_price').html('Rp '+$.number(sub_total_price, 2));
                $('#print_total_discount').html('Rp '+$.number(sub_total_discount, 2));
                $('#print_total_amount').html('Rp '+$.number(res.total_amount, 2));
                print('invoice');
            },
            error: function (response) {}
        });
    }

    function updateData(event) {
        event.preventDefault();
        $('#form-header .modal-title').html(upperCaseFirst($(this).attr('id')));
        var id = $(this).attr("data-id");
        $.ajax({
            method: 'GET',
            dataType: 'json',
            url: baseUrl + '/' + id,
            success: function (response) {
                $('#modalForm').modal('show');
                $('#id').val(response.payloads.id);
                $('#order_id').val(response.payloads.order_id);
                selectPaymentMethod(response.payloads.payment_method_id);
                $('#card_number').val(response.payloads.card_number);
                selectStatusPayment(response.payloads.status);
                $('#due_date').val(moment(response.payloads.due_date).format('YYYY-MM-DD HH:mm:ss'));
                $('#total_amount').val($.number(response.payloads.total_amount, 2));
            },
            error: function (response) {}
        });
    }

    function saveData(event) {
        event.preventDefault();
        var formData = form.serializeArray();
        formData[formData.length] = {
            name: 'due_date',
            value: $('#due_date').val()
        };
        formData[formData.length] = {
            name: 'total_amount',
            value: $('#total_amount').val().replace(/,/g, '')
        };
        $.ajax({
            method: 'POST',
            dataType: 'json',
            url: baseUrl,
            data: formData,
            success: function (response) {
                $('#modalForm').modal('hide');
                table.ajax.url(dataUrl).load();
                toastr.success(response.payloads.message);
            },
            error: function (response) {}
        });
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
                        if (typeof val == 'undefined' || val == '') {
                            var index = paymentMethod.findIndex(x => x.text === response.payloads.default.method);
                            val = paymentMethod[index].id;
                            $('#card_number').parent().hide();
                        } else {
                            var index = paymentMethod.findIndex(x => x.id === val);
                            if (paymentMethod[index].text == response.payloads.default.method) {
                                $('#card_number').val('');
                                $('#card_number').parent().hide();
                            } else {
                                $('#card_number').parent().show();
                            }
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
                var status = response.payloads.status.map(function(data, i) {
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

    function print(elementId) {
        var printContent = document.getElementById(elementId).innerHTML;
        var printHead = document.head.innerHTML;
        var print = w.open("");
        print.document.write(printHead);
        print.document.write(printContent);
        print.focus();
        setTimeout(function() {
            print.print();
            // print.close();
        },2000);
    }
})(window, window.jQuery);
