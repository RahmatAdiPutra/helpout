(function (w, $) {
    'use strict';

    var baseUrl = $('base').attr('href');

    selectPosition();

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
