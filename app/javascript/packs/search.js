import $ from "jquery";

document.addEventListener("turbolinks:load", function() {
    $('.loader').hide();
    $(".searchForm").submit(function( ) {
        $('.loader').show();

    });
    $('.page-item').click(function () {
        $('.loader').show();
    });
});
