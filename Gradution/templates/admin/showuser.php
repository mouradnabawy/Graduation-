<?php
session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>E-Learning System - User List</title>
<link href="../quiz.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css"/>

<style>


.imgg {
  /* The image used */
  background-image: url("assets/images/user.png");

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
include("nav.php");
echo "<div class='imgg'></div>";
include("../database.php");
{

		$sql=mysqli_query($con,"Select * From mst_user");	
		echo "<table class='table table-striped'>";
		echo"<div class='hg'>Registered User Detailse</div>";
		
		echo "<tr>
		<th class='text-primary'>UserID</th>
				<th class='text-primary'>Name</th>
	<th class='text-primary'>Email</th>
	<th class='text-primary'>Delete User</th></tR>";
	
	while($result=mysqli_fetch_assoc($sql))
	{
	$id=$result['username'];
	
	echo "<tr>";	
	echo "<td>".$result['login']. "</td>";
	echo "<td>".$result['username']."</td>";
	echo "<td>".$result['email']."</td>";
	
	echo "<td><a href='userdelete.php?username=$id'><span class='glyphicon glyphicon-trash'></span></a></td>";
	echo "</tr>";
	echo"</div>";
	}
	echo "</table>";
	include "footer.php";
		
}

?>