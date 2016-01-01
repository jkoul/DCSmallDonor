$(document).ready(function() {
  $(document).on('can_embed_loaded', function(){
    $('#new_answer').css('visibility', 'visible');
    $('#form-zip_code').attr('placeholder', 'Zip Code *');
    $('.nav-signup #form_col2').css('visibility', 'visible');
    $('.nav-signup #form_col2 input[type=submit]').addClass('submit');
    if($.trim($('#form-first_name').val() === "") && $('#form-first_name').is(":hidden")) {
      $('.submit').show();
    } else {
      $('.submit').hide();
    }
    $('.fb-page').show();
  })

  $("#showPetition").on("click", function(){
    $('#action').toggle();
    if($.trim($('#action').val()) === "" && $('#action').is(":hidden")) {
      $('#showPetition').html('Show Petition Text');
    } else {
      $('#showPetition').html('Hide Petition Text');
    }
  });

  $('.datepicker').datepicker();
})
