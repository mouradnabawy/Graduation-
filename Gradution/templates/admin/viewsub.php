<?php
session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>E-Learning System - Quiz List</title>
<link href="../quiz.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<style>
.imgg {
  /* The image used */
  background-image: url("assets/images/ee.jpg");

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

include("../database.php");
echo "<div class='imgg'></div>";
{
$sql=mysqli_query($con,"select * from mst_subject");	
	
	
	echo "<table align='center'><tr><th><a class='btn' href='subadd.php'>Add Level</a></th></tr></table>";
	echo "<table class='table table-striped'>";
	echo "<tr><th class='text-primary'>ID</th><th class='text-primary'>Name</th>
	<th class='text-primary'>Update</th>
	<th class='text-primary'>Delete</th></tr>";
	
	while($result=mysqli_fetch_assoc($sql))
	{
$id=$result['sub_id'];
	
	echo "<tr>";	
	echo "<td>".$result['sub_id']. "</td>";
	echo "<td>".$result['sub_name']."</td>";
	echo "<td><a href='subupdate.php?sub_id=$id'><span class='glyphicon glyphicon-edit'></span></a></td>";
	echo "<td><a href='subdelete.php?sub_id=$id'><span class='glyphicon glyphicon-trash'></span></a></td>";
	echo "</tr>";
	}
	echo "</table>";


}
?>
  <?php
    include "footer.php" ;
  ?>
</body>
</html>
