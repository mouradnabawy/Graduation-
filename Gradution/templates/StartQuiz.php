<?php
session_start();
?>	
<!DOCTYPE html>
<html>
  <head>

<title>E-Learning System - Start Quiz</title>


</head>
 <h1 id="h11">Start Quiz</h1>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">


function Redirect()
{
     document.location= "http://localhost:5000/begin";
     $.ajax({url:"quiz.php", success:function(result)
     {
       $("div").html(result);
       $("#h11").hide();

     }
});


}
</script>


<body>
</br>
    <button  onClick="Redirect(); this.style.visibility= 'hidden';">Start</button>
<div>

</div>


  </body>
</html>

