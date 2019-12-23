(function (w, $) {
    'use strict';

    var baseUrl = $('base').attr('href') + '/api/customer';
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
                data: 'id_card_number',
                name: 'id_card_number'
            },
            {
                data: 'name',
                name: 'name'
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

    $('#birthday').datepicker({
        format: 'yyyy-mm-dd'
    });

    form.on('submit', saveData);

    function createData(event) {
        event.preventDefault();
        selectReligion();
        selectStatus();
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
                form.find('#id_card_number').val(response.payloads.id_card_number);
                form.find('#name').val(response.payloads.name);
                form.find('#'+upperCaseFirst(response.payloads.gender)).prop('checked', true);
                form.find('#birthday').val(response.payloads.birthday);
                // form.find('#religion').val(response.payloads.religion);
                selectReligion(response.payloads.religion);
                form.find('#city').val(response.payloads.city);
                form.find('#address').val(response.payloads.address);
                form.find('#phone_number').val(response.payloads.phone_number);
                form.find('#email').val(response.payloads.email);
                selectStatus(response.payloads.status);
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
        console.log(formData);
        return 'a';
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
        form.find('#id_card_number').val('');
        form.find('#name').val('');
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

    function selectReligion(val) {
        $('#religion').select2({
            placeholder: "Select a religion",
            data: ['Islam', 'Kristen', 'Hindu', 'Budha', 'Konghucu']
        });
        $('#religion').val(val).trigger('change');
    }

    function selectStatus(val) {
        $('#status').select2({
            placeholder: "Select a status",
            data: ['Non Member', 'Besic', 'Premium']
        });
        $('#status').val(val).trigger('change');
    }

    function upperCaseFirst(str) {
        str = str.toLowerCase().replace(/\b[a-z]/g, function(letter) {
            return letter.toUpperCase();
        });
        return str;
    }
})(window, window.jQuery);
