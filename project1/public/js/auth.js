(function (w, $) {
    'use strict';

    var baseUrl = $('base').attr('href');

    $('#login-form').on('submit', login);
    $('#logout-form').on('click', logout);

    function login(event) {
        event.preventDefault();
        var formData = $('#login-form').serializeArray();
        $.ajax({
            method: 'POST',
            dataType: 'json',
            url: baseUrl + '/employee-login',
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: formData,
            success: function (response) {
                localStorage.setItem('token', response.payloads.token);
                localStorage.setItem('menu', JSON.stringify(response.payloads.menu));
                localStorage.setItem('permission', JSON.stringify(response.payloads.permission));
                w.location.href = baseUrl;
            },
            error: function (response) {
                toastr.error('Email or Password invalid');
            }
        });
    }

    function logout(event) {
        event.preventDefault();
        $.ajax({
            method: 'POST',
            dataType: 'json',
            url: baseUrl + '/employee-logout',
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                'token': localStorage.getItem('token')
            },
            success: function (response) {
                localStorage.setItem('token', '');
                localStorage.setItem('menu', '');
                localStorage.setItem('permission', '');
                w.location.href = baseUrl + '/employee-login';
            },
            error: function (response) {}
        });
    }
})(window, window.jQuery);
