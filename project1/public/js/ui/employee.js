(function (w, $) {
    'use strict';

    var baseUrl = $('base').attr('href') + '/api/employee';
    var dataUrl = baseUrl + '/data';
    var form = $('#form');
    var columnList = [];
    var toolbar = '#detailedTable_wrapper .row .col-sm-12 .row .col-sm-12';

    var dataTableOptions = {
        ajax: {
            url: baseUrl + '/data'
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
                data: 'id_card_number',
                name: 'id_card_number'
            },
            {
                data: 'name',
                name: 'name'
            },
            {
                data: 'position.name',
                name: 'position.name'
            },
            {
                data: 'gender',
                name: 'gender'
            },
            {
                data: 'birthday',
                name: 'birthday'
            },
            {
                data: 'religion',
                name: 'religion'
            },
            {
                data: 'city',
                name: 'city'
            },
            {
                data: 'address',
                name: 'address'
            },
            {
                data: 'phone_number',
                name: 'phone_number'
            },
            {
                data: 'email',
                name: 'email'
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

    $('#birthday').datepicker({
        format: 'yyyy-mm-dd'
    });

    form.on('submit', saveData);

    function createData(event) {
        event.preventDefault();
        selectPosition();
        selectReligion();
        selectStatus();
        $('#form-header .modal-title').html(upperCaseFirst($(this).attr('id')));
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
                form.find('#id').val(response.payloads.id);
                form.find('#id_card_number').val(response.payloads.id_card_number);
                form.find('#name').val(response.payloads.name);
                selectPosition(response.payloads.position.id);
                form.find('#'+upperCaseFirst(response.payloads.gender)).prop('checked', true);
                form.find('#birthday').val(response.payloads.birthday);
                selectReligion(response.payloads.religion);
                form.find('#city').val(response.payloads.city);
                form.find('#address').val(response.payloads.address);
                form.find('#phone_number').val(response.payloads.phone_number);
                form.find('#email').val(response.payloads.email);
                $.ajax({
                    method: 'GET',
                    dataType: 'json',
                    cache: true,
                    url: $('base').attr('href') + '/api/setting/data/employee',
                    success: function (res) {
                        selectStatus($.inArray(response.payloads.status,res.payloads.status));
                    },
                    error: function (response) {}
                });
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
        form.find('#id_card_number').val('');
        form.find('#name').val('');
        form.find('#position_id').val('');
        form.find('#Male').prop('checked', false);
        form.find('#Female').prop('checked', false);
        form.find('#birthday').val('');
        form.find('#religion').val('');
        form.find('#city').val('');
        form.find('#address').val('');
        form.find('#phone_number').val('');
        form.find('#email').val('');
        form.find('#status').val('');
    }

    function selectPosition(val) {
        $.ajax({
            method: 'GET',
            dataType: 'json',
            cache: true,
            url: $('base').attr('href') + '/api/position/data',
            success: function (response) {
                var position = response.payloads.data.map(function(data, i) {
                    return {
                        id : data.id,
                        text : data.name
                    }
                });
                $('#position_id').select2({
                    placeholder: "Select a position",
                    data: position
                });
                $('#position_id').val(val).trigger('change');
            },
            error: function (response) {}
        });
    }

    function selectReligion(val) {
        $.ajax({
            method: 'GET',
            dataType: 'json',
            cache: true,
            url: $('base').attr('href') + '/api/setting/data/religion',
            success: function (response) {
                $('#religion').select2({
                    placeholder: "Select a religion",
                    data: response.payloads
                });
                $('#religion').val(val).trigger('change');
            },
            error: function (response) {}
        });
    }

    function selectStatus(val) {
        $.ajax({
            method: 'GET',
            dataType: 'json',
            cache: true,
            url: $('base').attr('href') + '/api/setting/data/employee',
            success: function (response) {
                var status = response.payloads.status.map(function(data, i) {
                    return {
                        id : i,
                        text : data
                    }
                });
                $('#status').select2({
                    placeholder: "Select a status",
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
})(window, window.jQuery);
