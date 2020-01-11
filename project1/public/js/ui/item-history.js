(function (w, $) {
    'use strict';

    var baseUrl = $('base').attr('href') + '/api/item-history';
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
                data: 'item.name',
                name: 'item.name'
            },
            {
                data: 'purchase',
                name: 'purchase',
                render: function (data, type, row) {
                    return 'Rp ' + $.number(data, 2);
                }
            },
            {
                data: 'price',
                name: 'price',
                render: function (data, type, row) {
                    return 'Rp ' + $.number(data, 2);
                }
            },
            {
                data: 'quantity',
                name: 'quantity'
            },
            {
                data: 'discount',
                name: 'discount',
                render: function (data, type, row) {
                    return (data == 0.00) ? '' : $.number((data * 100), 0) + '%';
                }
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
                    return `
                        <div data-id="${row.id}" id="update"><i class="nav-icon far fa-edit"></i></div>
                        <div data-id="${row.id}" id="delete"><i class="nav-icon far fa-trash-alt"></i></div>
                    `;
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
    $('div.toolbar-create').html('<button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#modalForm" id="create">Create</button>');
    
    $(toolbar + ' .toolbar-hide').on('change', '#hide-column', hideColumn);
    $(toolbar + ' .toolbar-create').on('click', '#create', createData);
    $('#detailedTable tbody').on('click', '#update', updateData);
    $('#detailedTable tbody').on('click', '#delete', dalateData);
    $('#confirm-footer button').on('click', confirm);
    $('#modalForm').on('hidden.bs.modal', clearForm);

    form.find('#purchase').number(true, 2);
    form.find('#price').number(true, 2);
    form.find('#discount').number(true, 2);

    $('input').on('input', function (event) {
        event.preventDefault();
        var name = $(this).attr('name');
        var value = $(this).val();
        if (name == 'discount') {
            $(this).val(Math.max(Math.min(value, 100), 0));
        }
        if ($(this).attr('name') == 'quantity') {
            var isDisabled = $('#item_id').prop('disabled');
            var current_stock = form.find('#current_stock').val();
            if (isDisabled) {
                if (current_stock == 0) {
                    $(this).val(Math.max(Math.min(value, 100), 0));
                } else {
                    $(this).val(Math.max(Math.min(value, 100), -current_stock));
                }
            } else {
                $(this).val(Math.max(Math.min(value, 100), 0));
            }
        }
    });

    $('#item_id').on('select2:select', function (event) {
        event.preventDefault();
        var id = $(this).val();
        $.ajax({
            method: 'GET',
            dataType: 'json',
            url: $('base').attr('href') + '/api/item' + '/' + id,
            success: function (response) {
                form.find('#purchase').val(response.payloads.purchase);
                form.find('#price').val(response.payloads.price);
                form.find('#current_stock').val(response.payloads.stock);
                form.find('#discount').val(response.payloads.discount * 100);
            },
            error: function (response) {}
        });
    });

    form.on('submit', saveData);

    function createData(event) {
        event.preventDefault();
        $('#item_id').prop('disabled', false);
        selectItem();
        form.find('#current_stock').val(0);
        form.find('#quantity').val(0);
        form.find('#discount').val(0);
        $('#form-header .modal-title').html(upperCaseFirst($(this).attr('id')));
    }

    function updateData(event) {
        event.preventDefault();
        $('#item_id').prop('disabled', 'disabled');
        $('#form-header .modal-title').html(upperCaseFirst($(this).attr('id')));
        var id = $(this).attr("data-id");
        $.ajax({
            method: 'GET',
            dataType: 'json',
            url: baseUrl + '/' + id,
            success: function (response) {
                $('#modalForm').modal('show');
                form.find('#id').val(response.payloads.id);
                selectItem(response.payloads.item.id);
                form.find('#purchase').val(response.payloads.purchase);
                form.find('#price').val(response.payloads.price);
                form.find('#current_stock').val(response.payloads.item.stock);
                form.find('#quantity').val(0);
                form.find('#discount').val(response.payloads.discount * 100);
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

    function saveData(event) {
        event.preventDefault();
        var formData = form.serializeArray();
        var isDisabled = $('#item_id').prop('disabled');
        if (isDisabled) {
            formData[4] = {
                name: 'discount',
                value: (formData[4].value / 100)
            };
            formData[6] = {
                name: 'item_id',
                value: form.find('#item_id').val()
            };
        } else {
            formData[5] = {
                name: 'discount',
                value: (formData[5].value / 100)
            };
        }
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
        form.find('#id').val('');
        form.find('#item_id').val('');
        form.find('#purchase').val('');
        form.find('#price').val('');
        form.find('#current_stock').val('');
        form.find('#quantity').val('');
        form.find('#discount').val('');
    }

    function selectItem(val) {
        var val = val ? val : 0;
        $.ajax({
            method: 'GET',
            dataType: 'json',
            cache: true,
            url: $('base').attr('href') + '/api/item/' + val,
            success: function (response) {
                var item = [];
                if (response.payloads) {
                    item.push({
                        id: response.payloads.id,
                        text: response.payloads.name
                    });
                }
                $('#item_id').select2({
                    minimumInputLength: 1,
                    allowClear: true,
                    placeholder: 'Select a item',
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
                    },
                    data: item
                });
                $('#item_id').val(val).trigger('change');
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
})(window, window.jQuery);
