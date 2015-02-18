$(document).ready(function() {
  // 'get' ajax
  $('.upvote-arrow').on("click",function(event){
    event.preventDefault();
    console.log('works');

    var id = $(event.target).data("artist");

    $.ajax({
      type:"GET",
      url: "/upvote/" + id,
      success: function(){

      },
      error: function(){

      }
    })
  })
});
