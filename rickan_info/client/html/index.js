$(function() {
  window.addEventListener('message', function(event) {
    if (event.data.type === "gudeopen"){
              $("#backlol").hide();
              $("#buylol").hide();
              $('#log').show(100);
              $('#log2').show(100);
              $('#log3').show(100);



    } else if(event.data.type === "balanceHUD") {
        $('.curbalance').html(event.data.balance);
    } else if (event.data.type === "closeAll"){
              $('#log, #log2, #log3, #log4, #log5, #log6, #log7, #log8, #backlol,').hide();
              $('body').removeClass("active");
    }
    else if (event.data.type === "result") {
      if (event.data.t == "success")
        $("#result").attr('class', 'alert-green');
      else
        $("#result").attr('class', 'alert-orange');
      $("#result").html(event.data.m).show().delay(5000).fadeOut();
    }
  });
});
  


$("#log2").click(function(){
  $('#log').fadeOut(400);
  $('#log2').fadeOut(400);
  $('#log3').fadeOut(400);

  



 
  setTimeout(function(){
    $('#log4').fadeIn(400);
    $('#logok').fadeIn(400);
    $('#logok2').fadeIn(400);
  }, 500)

})

$("#log3").click(function(){
  $('#log').fadeOut(600);
  $('#log2').fadeOut(600);
  $('#log3').fadeOut(600);
  $.post('https://rickan_info/NUIFocusOff', JSON.stringify({}));
})

$("#logok").click(function(){
  $('#log4').fadeOut(400);
  $('#logok').fadeOut(400);
  $('#logok2').fadeOut(400);

  



 
  setTimeout(function(){
    $('#log').fadeIn(400);
    $('#log2').fadeIn(400);
    $('#log3').fadeIn(400);
  }, 500)

})

$("#logok2").click(function(){
  $('#log4').fadeOut(600);
  $('#logok').fadeOut(600);
  $('#logok2').fadeOut(600);
  $.post('https://rickan_info/NUIFocusOff', JSON.stringify({}));



})







document.onkeyup = function(data){
      if (data.which == 27){
          $('#log, #log2, #log3, #log4, #log5, #log6, #log7, #log8, #backlol, #buylol, #back2lol, #buy2lol, #back3lol, #buy3lol, #back4lol, #buy4lol, #back5lol, #buy5lol, #back6lol, #buy6lol, #back7lol, #buy7lol, #back8lol, #buy8lol').hide();
          $.post('https://rickan_info/NUIFocusOff', JSON.stringify({}));
      }
}