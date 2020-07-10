<?php
session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>E-Learning System - Learner Home Page</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">

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

<body>
<?php
include("header.php");
include("database.php");
extract($_POST);

if(isset($submit))
{
	$rs=mysqli_query($con,"select * from mst_user where email='$email' and pass='$pass'");
	if(mysqli_num_rows($rs)<1)
	{
		$found="N";
	}
	else
	{
		$_SESSION[login]=$email;
	}
}
if (isset($_SESSION[login]))
{
	
	echo"<div class=\"imgg\">
	<h1 class='hg'>Welcome to Learner Page</h1>
</br>

	<div id=\"courses\">
		<section class=\"container\">
			<div class=\"row\">
				<div class=\"col-md-4\">
					<div class=\"featured-box\">
						<a href=\"sublist.php\">
						<i class=\"fa fa-cogs fa-2x\"></i>
						<div class=\"text\">
							<h3>Quiz in Level</h3>
							
						</div>
						</a>
					</div>

				</div>
				<div class=\"row\">
				<div class=\"col-md-4\">
					<div class=\"featured-box\">
						<a href=\"result.php\">
						<i class=\"fa fa-cogs fa-2x\"></i>
						<div class=\"text\">
							<h3>Result</h3>
							
						</div>
						</a>
					</div>
					
				</div>
				</div>
		</section>
	</div>";
	
	echo"</br>";
	echo"</br>";
	echo"</br>";
	echo"</br>";

		include "footer.php";
	
		exit;
		

}


?>
	<header id="head">
		<div class="container">
			<div class="banner-content">
				<div id="da-slider" class="da-slider">
					<div class="da-slide">
						<h2>Online Education</h2>
						<p>The purpose is to teach</p>
						<img src="assets/images/banner1.jpg">
					</div>
					<div class="da-slide">
						<h2>Online Education</h2>
						<p>The purpose is to teach</p>
						<img src="assets/images/banner4.jpg">
					</div>
					
				</div>
			</div>
		</div>
	</header>
	<!-- /Header -->


    		<table align="center" border="0" WIDTH="50%" height="250">
			<div class='hg'>Student Page</div>
		<form method="post" action="">
	
				<tr>
					<th class="text-primary">Email</th>
					<th>
					<input class="form-control"type="TEXT" title="enter your regitered Email"  placeholder="Email"  maxlength="30" size="25"  id="email2" name="email"/></tD>
				</th>
				<tr>
					<th class="text-primary">Enter Password</th>
					<th><input class="form-control" type="password" name="pass" id="pass2" placeholder="Password"  /></th>
					</tr>
					       <?php
		  if(isset($found))
		  {
		  	echo "Invalid Username or Password";
		  }
		  ?>
          </span></td>
         <th></th>
				<th class="errors">
					<input class="btn btn-danger "type="submit" name="submit" style="border-radius: 25px;" id="submit" Value="Login"/>
				
        <a class="btn btn-success " style="border-radius: 25px;" href="signup.php">New user ? click here</a>
        <a class="btn btn-success " style="border-radius: 25px;" href="admin/index.php">Admin Page</a></th>
      </table>
     
    </form></td>
  </tr>
</table>
	<div id="courses">
		<div class="container">
			<h2>Available Levels</h2>
			<div class="row">
				<div class="col-md-4">
					<div class="featured-box">
					<a href="login.php">
						<i class="fa fa-cogs fa-2x"></i>
						<div class="text">
							<h3>Starter</h3>
							Starter level broadly refers to the point at which job seekers enter the job market with the minimum required training and education, although not yet having work experience in the chosen field. Thus, in the broadest sense, starter level is the starter point into a profession between education and experience.
						</div>
					</a>
					</div>
				</div>
				<div class="col-md-4">
					<div class="featured-box">
					<a href="login.php">
						<i class="fa fa-leaf fa-2x"></i>
						<div class="text">
							<h3>Advanced</h3>
							Advanced level qualifications (known as A levels) are subject-based qualifications that can lead to university, further study, training, or work. You can normally study three or more A levels over two years. They’re usually assessed by a series of examinations. 
						</div>
					</a>
					</div>
				</div>

		</div>
	</div>
<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="assets/js/modernizr-latest.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.cslider.js"></script>
	<script src="assets/js/custom.js"></script>
</body>
</html>
      
    </div></td>
</body>
</html>
<?php
		include "footer.php";
	?>