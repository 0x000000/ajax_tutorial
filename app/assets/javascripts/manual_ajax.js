$(function() {
  $(".touch_me_baby").click(function(e) {
    e.preventDefault();

    $(e.target).parent().load(
      Routes.manual_ajax_content_for_link_path()
    );
  });




































  $(".smth_special").click(function(e) {
    e.preventDefault();

    var $container = $(e.target).parent();

    $.get(gon.special_url, function(responseHTML) {
      $container.html(responseHTML);
    });
  })
});