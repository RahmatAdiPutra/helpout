(function (w, $) {
    'use strict';

    var baseUrl = $('base').attr('href') + '/api/payment';
    var dataUrl = baseUrl + '/data';
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
                    return `<div data-id="${row.id}" id="print"><i class="fas fa-print"></i></div>`;
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

    function upperCaseFirst(str) {
        str = str.toLowerCase().replace(/\b[a-z]/g, function(letter) {
            return letter.toUpperCase();
        });
        return str;
    }
})(window, window.jQuery);
