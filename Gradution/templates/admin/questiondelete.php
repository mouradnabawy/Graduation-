<?php
session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>E-Learning System - Question List</title>
<link href="../quiz.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<style>
.imgg {
  /* The image used */
  background-image: url("assets/images/que.jpg");

  /* Full height */
  height: 100px; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  padding-top: 250px;
}


</style>
</head>
<body>
<?php
include("nav.php");
echo "<div class='imgg'></div>";
include("../database.php");
{
$sql=mysqli_query($con,"select * from mst_question");	
	
	echo "<table align='center'><tr><th><a  class='btn 'href=\"questionadd.php\">Add Question </a></th></tr></table>";
	echo "<table class='table table-striped'>";
	echo "<tr><th class='text-primary'>Test ID</th>
	<th class='text-primary'>Question</th>
	<th class='text-primary'>Update</th>
	<th class='text-primary'>Delete</th></tR>";
	
	while($result=mysqli_fetch_assoc($sql))
	{
$id=$result['que_id'];
	
	echo "<tr>";	
	echo "<td>".$result['test_id']. "</td>";
	echo "<td>".$result['que_desc']."</td>";
	echo "<td><a href='queupdate.php?que_id=$id'><span class='glyphicon glyphicon-edit'></span></a></td>";
	echo "<td><a href='quedelete.php?que_id=$id'><span class='glyphicon glyphicon-trash'></span></a></td>";
	echo "</tr>";
	}
	echo "</table>";
}
include "footer.php";
?>
</body>
</html>
