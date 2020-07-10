<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="eLearning is a modern and fully responsive Template by WebThemez.">
	<meta name="author" content="webThemez.com">
	<title>eLearning</title>
	<link rel="favicon" href="assets/images/favicon.png">
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<!-- Custom styles for our template -->
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen">
	<link rel="stylesheet" type="text/css" href="assets/css/da-slider.css" />
	<link rel="stylesheet" href="assets/css/style.css">
	
</head>
<body>
	  <?php @$_SESSION['login']; 
  error_reporting(1);
  ?>
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				
				<?php
	if(isset($_SESSION['alogin']))
	{
				echo "<button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\"><span class=\"icon-bar\"></span><span class=\"icon-bar\"></span><span class=\"icon-bar\"></span></button>
				<a class=\"navbar-brand\" href=\"login.php\">
					<img src=\"assets/images/logo.png\" alt=\"Techro HTML5 template\"></a>
			</div>
			<div class=\"navbar-collapse collapse\">
				<ul class=\"nav navbar-nav pull-right mainNav\">
					<li class=\"active\"><a href=\"login.php\">Home</a></li>
					<li class=\"active\"><a href=\"signout.php\">Logout</a></li>
		
				</ul>
			</div>";
		} ?>
			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- /.navbar -->
	 <Table width="100%">
  <tr>
  <td>
  <?php @$_SESSION['login']; 
  error_reporting(1);
  ?>
  </td>
    <td>
	
<?php
	if(isset($_SESSION['alogin']))
	{
	
	 echo "<table border='0' align=\"center\" ><tr>
	 <td><a class='btn' href=\"viewsub.php\">View Levels</a></td>
		<td><a class='btn' href=\"testview.php\"> View Test</a></td>  
	 <td><a class='btn' href=\"questiondelete.php\">View Question</a></td>
	 <td><a class='btn' href=\"showuser.php\"> View User</a></td></tr></table>";
	 }
	 else
	 {
	 	echo "&nbsp;";
	 }
	?>
		</td>
	
  </tr>
  
</table>

</body>
</html>