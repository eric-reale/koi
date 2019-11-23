$(function() {
  var $activeSlide = $('#slides .slide:first-child');

  // $activeSlide.addClass("showing");

  $("#decline").on("click", function(){
      goToSlide('decline');
  });

  $("#approve").on("click", function(){
    var user_id = $activeSlide.data("id");

    $.ajaxSetup({
    headers: {
      'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
      }
    });

    $.ajax({
      url: "/approve/" + user_id,
      method: "post",
      dataType: "ajax",
      beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))}
      // data: { "authenticity_token": "<%= form_authenticity_token %>" }
    });

      goToSlide('approve');
  });

  function goToSlide(action){
    $activeSlide.removeClass("showing");
    $activeSlide = $activeSlide.next(".slide");

    if(action == "approve"){
      console.log(action);
    } else {
      console.log(action);
    }

    $activeSlide.addClass("showing");
  }
});
