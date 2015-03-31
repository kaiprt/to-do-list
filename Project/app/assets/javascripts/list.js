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
    }).fail(function(response){
      alert("List was not created!");
    });
  });

  $("#submit").click(function(e){
    e.preventDefault();

  });
});
