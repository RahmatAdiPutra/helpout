(function ($) {

    const data = {};

    $.getVariable = function() {
        data.var = {};
        data.var.baseUrl = $('base').attr('href');
        data.var.dataUrl = data.var.baseUrl + '/data';
        data.var.form = $('#form');
        data.var.columnList = [];
        data.var.toolbar = '#detailedTable_wrapper .row .col-sm-12 .row .col-sm-12';
        return data.var;
    };

    $.auth = function(token) {
        // var result = null;
        // $.get($('base').attr('href') + '/api/employee/' + token).done(function (data){
        //     result = data;
        //     console.log(result);
        // });
        // return result;

        var xhttp = new XMLHttpRequest();
        xhttp.open('GET', $('base').attr('href') + '/api/employee/' + token, false);
        xhttp.send();
        var a = xhttp;
        return a;

        // var test = function (token) {
        //     var tmp = null;
        //     $.ajax({
        //         async: false,
        //         method: 'GET',
        //         dataType: 'json',
        //         url:  $('base').attr('href') + '/api/employee/' + token,
        //         success: function (response) {
        //             tmp = response;
        //         },
        //         error: function (response) {}
        //     });
        //     return tmp;
        // }();
        // return test;
    };

    $.fn.greenify = function() {
        this.css( "color", "green" );
        return this;
    };

    $.testUpper = function(str) {
        str = str.toLowerCase().replace(/\b[a-z]/g, function(letter) {
            return letter.toUpperCase();
        });
        return str;
    };

    $.cobaja = function(str) {
        var show = function(str) {
            str = str.toLowerCase().replace(/\b[a-z]/g, function(letter) {
                return letter.toUpperCase();
            });
            return str;
        }
        return show;
    };
}(jQuery));
