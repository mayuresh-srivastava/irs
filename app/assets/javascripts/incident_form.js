$(document).ready(function(){
    $('#incident_location').change(function() {
      if(this.value == 'other') {
        $('.locationtext').show();
      } else{
        $('.locationtext').hide();
      }
    });
  });

$(document).ready(function(){
  $('#incident_reported_anonymously_false').change(function() {
    if(this.value == 'false') {
      $('.knownuser').show();
    }
  });

  $('#incident_reported_anonymously_true').change(function() {
    if(this.value == 'true') {
      $('.knownuser').hide();
    }
  });
});