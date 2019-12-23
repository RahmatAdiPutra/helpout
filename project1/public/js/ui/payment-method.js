(function (w, $) {
    'use strict';

    var baseUrl = $('base').attr('href') + '/api/payment-method';

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
