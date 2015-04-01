$(document).ready(function(){
  $("#create-task").hide();

  $("#listSubmit").click(function(e){
    e.preventDefault();
    var listData = $("#create-list").serialize();
    $.ajax({
      type: "POST",
      url: "/save_list",
      data: listData,
      dataType: "json"
    }).success(function(response){
      $("#create-task").slideDown();
      console.log(response)
      var newList = response.new_list;
      alertify.success("Success notification");
      $('<li class="list-group-item">'+ newList.name +'</li>').appendTo($("#my-lists")).slideDown("slow");
    }).fail(function(response){
      alertify.error("List was not created!");
    });
  });

  $("#submit").click(function(e){
    e.preventDefault();

  });
});
