
jQuery(function ($) {
//full screen btn
    $('.layout-btns .layout-full').click(function (e) {
        if ($(this).hasClass('active')) {
// reset
            $('#left-side, ul.breadcrumb').show('fast').removeProp('style');
            $('#content-block').removeClass('col-sm-12 col-md-12  col-lg-12 full-content').addClass('col-sm-11 col-md-10 col-lg-10');
        } else {
// full screen
            $('#left-side, ul.breadcrumb').hide('fast', function () {
                $('#content-block').removeClass('col-sm-11 col-md-10 col-lg-10').addClass('col-sm-12 col-md-12 col-lg-12 full-content');
            });
        }
    });
    $('.layout-btns .layout-normal').click(function (e) {
        $('.results table').removeClass('table-condensed');
    });
    $('.layout-btns .layout-condensed').click(function (e) {
        $('.results table').addClass('table-condensed');
    });
});