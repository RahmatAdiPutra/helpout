(function (w, $) {
    'use strict';

    var baseUrl = $('base').attr('href') + '/api/role';
    var dataUrl = baseUrl + '/data';
    var form = $('#form');

    var dataTableOptions = {
        ajax: {
            url: dataUrl
        },
        columns: [
            {
                orderable: false,
                'render': function ( data, type, full, meta ) {
                    return  meta.row + 1;
                }
            },
            {
                data: 'name',
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
                orderable: false,
                mRender: function (data, type, row) {
                    return `
                        <div data-id="${row.id}" id="update"><i class="nav-icon far fa-edit"></i></div>
                        <div data-id="${row.id}" id="delete"><i class="nav-icon far fa-trash"></i></div>
                    `;
                }
            },
        ]
    };

    var table = $('#detailedTable').DataTable(
        $.extend(true, w.dataTableDefaultOptions, dataTableOptions)
    );

    $('.container-fluid #create').on('click', createData);
    $('#detailedTable tbody').on('click', '#update', updateData);
    $('#detailedTable tbody').on('click', '#delete', dalateData);
    $('#confirm-footer button').on('click', confirm);

    $('#modalForm').on('hidden.bs.modal', function (event) {
        event.preventDefault();
        clearForm();
    });

    form.on('submit', saveData);

    function createData(event) {
        event.preventDefault();
        $('#form-header .modal-title').html(upperCaseFirst($(this).attr('id')));
    }

    function updateData(event) {
        event.preventDefault();
        $('#form-header .modal-title').html(upperCaseFirst($(this).attr('id')));
        var id = $(this).attr("data-id");
        $.ajax({
            method: "GET",
            dataType: "json",
            url: baseUrl + "/" + id,
            success: function (response) {
                $('#modalForm').modal('show');
                form.find('#id').val(response.payloads.id);
                form.find('#name').val(response.payloads.name);
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
                clearForm();
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

    function clearForm() {
        form.find('#id').val('');
        form.find('#name').val('');
    }

    function upperCaseFirst(str) {
        str = str.toLowerCase().replace(/\b[a-z]/g, function(letter) {
            return letter.toUpperCase();
        });
        return str;
    }
})(window, window.jQuery);
