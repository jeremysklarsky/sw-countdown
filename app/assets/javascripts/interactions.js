$( document ).ready(function() {

  clickListener();

});

function clickListener() {
  $(document).on("click", function(){
    location.reload();
  });
}