$(document).ready(function(){
    $("input").focus(function(){
    $(this).css("background-color","#EAEA6A");
    });
    $("input").blur(function(){
    $(this).css("background-color","#F8F8F1");
    });
});

$(document).ready(function(){
    $("#reset").click(function(){;
        $("input").replaceWith("");
    });
});
