$(function() {
  var $personInfoContainer = $(".person_info");
  var personTemplate = Handlebars.compile(
    "<h2>Персона №{{id}} <a href='#' class='close_btn'>[X]</a></h2>" +
    "<h3>{{first_name}} {{last_name}}</h3>" +
    "<span>Последний раз мы трогали эту персону в {{updated_at}}</span>"
  );

  $(".refresh_info").click(function(e) {
    e.preventDefault();

    $.getJSON(Routes.persons_path(), function(responseJSON) {
      var renderedPersonHTML = personTemplate(responseJSON);
      $personInfoContainer.html(renderedPersonHTML);
    });
  });

  $(".person_info").on('click', 'a.close_btn', function(e) {
    e.preventDefault();

    $(e.target).parent().remove();
  });
});