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

    $("div.toolbar-hide").html(`<input type="number" class="form-control form-control-sm" id="hide-column" style="font-size:xx-small" min="0" max="${dataTableOptions.columns.length - 1}" size="4" placeholder="Hide column">`);
    $(toolbar + ' .toolbar-hide').on('change', '#hide-column', hideColumn);

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
