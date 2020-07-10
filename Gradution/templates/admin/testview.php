<?php
session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>E-Learning System - Test List</title>
<link href="../quiz.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<style>
.imgg {
  /* The image used */
  background-image: url("assets/images/test.jpg");

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
$sql=mysqli_query($con,"select * from mst_test");	
	
	
	echo"<table align='center'><tr><th><a class='btn' href=\"testadd.php\">Add Test</a></th></tr></table>";
	echo "<table class='table table-striped'>";
	echo "<tr><th class='text-primary'>Level ID</th>
	<th class='text-primary'>Test Name</th>
	<th class='text-primary'>Total Question</th>
	<th class='text-primary'>Total Duration</th>
	<th class='text-primary'>Update</th>
	<th class='text-primary'>Delete</th></tR>";
	
	while($result=mysqli_fetch_assoc($sql))
	{
$id=$result['test_id'];
	
	echo "<tr>";	
	echo "<td>".$result['sub_id']. "</td>";
	echo "<td>".$result['test_name']."</td>";
	echo "<td>".$result['total_que']."</td>";
	echo "<td>".$result['test_duration']."</td>";
	echo "<td><a href='testupdate.php?test_id=$id'><span class='glyphicon glyphicon-edit'></span></a></td>";
	echo "<td><a href='testdelete.php?test_id=$id'><span class='glyphicon glyphicon-trash'></span></a></td>";
	echo "</tr>";
	}
	echo "</table>";


}
?>
</body>
</html>
  <?php
    include "footer.php" ;
  ?>
