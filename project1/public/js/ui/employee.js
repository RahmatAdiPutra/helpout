(function (w, $) {
    'use strict';

    var baseUrl = $('base').attr('href') + '/api/employee';

    var dataTableOptions = {
        ajax: {
            url: baseUrl + '/data'
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
                orderable: false,
                mRender: function (data, type, row) {
                    return `
                        <a href="#" data-id="${row.id}" id="update" data-target="#modalForm" data-toggle="modal">
                        Update
                        </a>
                        <a href="#" data-id="${row.id}" id="delete" data-target="#modalConfirm" data-toggle="modal">
                        Delete
                        </a>
                    `;
                }
            },
        ]
    };

    var table = $('#detailedTable').DataTable(
        $.extend(true, w.dataTableDefaultOptions, dataTableOptions)
    );
})(window, window.jQuery);
