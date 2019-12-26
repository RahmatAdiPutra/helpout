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