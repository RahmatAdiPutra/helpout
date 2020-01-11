(function (w, $) {
    'use strict';

    var baseUrl = $('base').attr('href');
    var menu = localStorage.getItem('menu');
    
    if (menu.length) {
        var menuList = [];
        $.map($.parseJSON(menu), function(value,index) {
            menuList.push(`
                <li class="nav-item">
                    <a href="${baseUrl}/${value}" class="nav-link">
                        <i class="far fa-circle nav-icon"></i>
                        <p>
                            ${value}
                        </p>
                    </a>
                </li>
            `);
        });
        $('#menu').html(menuList.join(' '));
    }

    $.ajaxSetup({
        beforeSend: function (xhr) {
           xhr.setRequestHeader('token', localStorage.getItem('token'));        
        }
    });

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
        responsive: true,
        searchDelay: 1000,
        pageLength: 10,
        language: {
            lengthMenu: "Show _MENU_"
        },
        dom: `
            <"row"
                <"col-sm-12 col-md-6"
                    <"row"
                        <"col-sm-12 col-md-4"l>
                        <"col-sm-12 col-md-4"<"toolbar-hide">>
                        <"col-sm-12 col-md-4"<"toolbar-create">>
                    >
                >
                <"col-sm-12 col-md-6"
                    <f>
                >
            >
            <"row"
                <"col-sm-12"
                    <rt>
                >
            >
            <"row"
                <"col-sm-12 col-md-5"
                    <i>
                >
                <"col-sm-12 col-md-7"
                    <p>
                >
            >
        `,
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
