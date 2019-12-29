(function (w, $) {
    'use strict';

    var baseUrl = $('base').attr('href');
    var form = $('#form');

    selectPosition();

    form.on('submit', saveData);

    function saveData(event) {
        event.preventDefault();
        var formData = form.serializeArray();
        $.ajax({
            method: 'POST',
            dataType: 'json',
            url: baseUrl + '/employee-register',
            data: formData,
            success: function (response) {
                clearForm();
                toastr.success(response.payloads.message);
            },
            error: function (response) {
                toastr.error(response.responseText);
            }
        });
    }

    function clearForm() {
        form.find('#name').val('');
        form.find('#position_id').val(0);
        form.find('#email').val('');
        form.find('#password').val('');
        form.find('#password-confirm').val('');
    }

    function selectPosition(val) {
        $.ajax({
            method: 'GET',
            dataType: 'json',
            cache: true,
            url: baseUrl + '/api/position/data',
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
})(window, window.jQuery);
