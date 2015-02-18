$(document).ready(function() {
  // 'get' ajax
  $('.artist-upvote-arrow').on("click",function(event){
    event.preventDefault();
    var id = $(event.target).data("artist")

    $.ajax({
      type:"GET",
      url: "/upvote/" + id,
      dataType: "JSON",
      success:function(response){
        $('.upvote-num').text(response.upvote)
      },
      error:function(response){
        console.log(response);
      }
    })

  })




// ajax for adding comment
 $('.comment-box').on("submit",function(event){
  event.preventDefault();
  // console.log('test');

  var $target = $(event.target);
  $.ajax({
    url:$target.attr("action"),
    type:$target.attr("method"),
    data:$target.serialize(),
    success:function(response){
      $('ol.comment-area').prepend(response);
    },
    error:function(response){
      console.log(response);
    }
  })
 })
});
