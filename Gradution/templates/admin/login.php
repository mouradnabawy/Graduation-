<?php
session_start();
error_reporting(1);
?>
<html>
<head>
  <meta charset="utf-8">
  <title>E-Learning System - Admin Home Page</title>
  <link rel="favicon" href="assets/images/favicon.png">
  <link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
  <link rel="stylesheet" href="assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/font-awesome.min.css">
  <!-- Custom styles for our template -->
  <link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen">
  <link rel="stylesheet" type="text/css" href="assets/css/da-slider.css" />
  <link rel="stylesheet" href="assets/css/style.css">
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="assets/js/html5shiv.js"></script>
  <script src="assets/js/respond.min.js"></script>
  <![endif]-->
  
  <style>


.imgg {
  /* The image used */
  background-image: url("assets/images/ss.jpg");

  /* Full height */
  height: 50%; 

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

<?php
include("nav.php");

include("../database.php");
echo "<div class='imgg'></div>";
extract($_POST);
if(isset($submit))
{
	$rs=mysqli_query($con,"select * from mst_admin where email='$email' and pass='$pass'",$cn) or die(mysqli_error());
	if(mysqli_num_rows($rs)<1)
	{
		echo "<BR><BR><BR><BR><div class=head1> Invalid User Name or Password<br>
		<a href='index.php'>Click here to login again </a>
		<div>";
	//exit;
		echo "<script>window.location='index.php'</script>";		
	}
	else
	{
	echo "<script>window.location='login.php'</script>";			
	$_SESSION['alogin']="true";
	}
}
else if(!isset($_SESSION[alogin]))
{
	echo "<BR><BR><BR><BR><div class=head1> Your are not logged in<br> Please <a href=index.php>Login</a><div>";
		exit;
}

		echo"<div class='hg'>Welcome to Admin Page</div>";	





?>

  <?php
    include "footer.php" ;
  ?>

</body>
</html>
