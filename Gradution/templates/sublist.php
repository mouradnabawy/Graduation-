<?php
session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>E-Learning System - Quiz List</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<style>


.imgg {
  /* The image used */
  background-image: url("assets/images/bg4.jpg");

  /* Full height */
  height: 400px; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  padding-top: 70px;
}

/* Header/Logo Title */
.hg {
 
  
  text-align: center;
  background: #00bfff;
  color: white;
  width:450px;
  align:center;
  height:150px;
  font-size: 30px;
  border-radius:45px;
  padding: 50px;
  margin-left: 500px;
  margin: 50px;
   font-style: italic;
}
</style>
</head>
<body>
<?php

include("header.php");
echo "<div class='imgg'></div>";
include("database.php");
echo "<div class='hg'>Select Level to Take a Quiz</div>";
$rs=mysqli_query($con,"select * from mst_subject");
echo "<table class='table table-striped'>";
while($row=mysqli_fetch_row($rs))
{
	echo "<tr><td align=center ><a href=showtest.php?subid=$row[0]><font size=4>$row[1]</font></a>";
}
echo "</table>";
include "footer.php";
?>
</body>
</html>
