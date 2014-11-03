$(function() {

  $('#message').delay(1000).slideDown('slow');
  $('#message').on('click', function(e) {
    $(this).hide();
  $('#message-wrapper').on('mouseenter', function(e) {
    $('#message').show()
    });
  $('#message-wrapper').on('mouseleave', function(e) {
    $('#message').hide()
    });
  });
});