(function (w, $) {
    'use strict';

    toastr.options = {
        closeButton: true,
        debug: false,
        newestOnTop: false,
        progressBar: false,
        positionClass: 'toast-top-right',
        preventDuplicates: false,
        onclick: null,
        showDuration: 300,
        hideDuration: 1000,
        timeOut: 5000,
        extendedTimeOut: 1000,
        showEasing: 'swing',
        hideEasing: 'linear',
        showMethod: 'fadeIn',
        hideMethod: 'fadeOut'
    }

    w.dataTableDefaultOptions = {
        processing: false,
        serverSide: true,
        stateSave: true,
        searchDelay: 1000,
        pageLength: 10,
        // dom: '<"d-flex align-items-center"<"toolbar flex-grow-1">f>t<"d-flex align-items-center pt-3"l<"border-left pl-2 ml-2 flex-grow-1"i>p>r',
        ajax: {
            data: function (d) {
                // buang columns, tidak dipakai di server
                delete(d.columns);

                // kalo search tidak di isi, ga usah dikirim ke server
                if (d.search.value === '') {
                    delete(d.search);
                }
            },
            dataFilter: function (response) {
                var json = jQuery.parseJSON(response);
                var data = {
                    draw: json.payloads.draw,
                    recordsTotal: json.payloads.total,
                    recordsFiltered: json.payloads.total,
                    data: json.payloads.data
                };

                // somehow loading is not auto hide, so hide manually
                $('.dataTables_processing').hide();

                // return JSON string
                return JSON.stringify(data);
            }
        },
        order: [
            [1, 'asc']
        ]
    };
})(window, window.jQuery)
