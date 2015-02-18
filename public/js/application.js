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
});
