<?php
session_start();
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
  <link href="../quiz.css" rel="stylesheet" type="text/css">
  
  
<style>


.imgg {
  /* The image used */
  background-image: url("assets/images/bg4.jpg");

  /* Full height */
  height: 100%; 

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
?>

<header id="head">
		<div class="container">
			<div class="banner-content">
				<div id="da-slider" class="da-slider">
				<div class="da-slide">
						<h2>Online Education</h2>
						<p>The purpose is to teach</p>
						<img src="assets/images/banner2.jpg">
					</div>
					<div class="da-slide">
						<h2>Online Education</h2>
						<p>The purpose is to teach</p>
						<img src="assets/images/Team-scaled.jpg">
					</div>
					
					
				</div>
			</div>
		</div>
	</header>
	<!-- /Header -->




<div class='hg'>Admin Page</div>
<form name="form1" method="post" action="login.php">
<table  align="center">
 
    <td width="163" class="style2">Email</td>
    <td width="149"><input class="form-control" name="email" type="text" id="email"></td>
  </tr>
  <tr>
    <td class="style2">Password</td>
    <td><input class="form-control" name="pass" type="password" id="pass"></td>
  </tr>
  <tr>
    <td class="style2">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td class="style2">&nbsp;</td>
    <td><input class="btn btn-primary" name="submit" type="submit" id="submit" value="Login">
      <a class="btn btn-success " href="../index.php">User Page</a></td>
  </tr>

</td>
  </tr>
</table>

</form>

<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="assets/js/modernizr-latest.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.cslider.js"></script>
	<script src="assets/js/custom.js"></script>

</body>
</html>
  <?php
    include "footer.php" ;
  ?>