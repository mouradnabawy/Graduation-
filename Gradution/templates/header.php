

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="eLearning is a modern and fully responsive Template by WebThemez.">
  <meta name="author" content="webThemez.com">
  <title>E-Learning System</title>
  <link rel="favicon" href="assets/images/favicon.png">
  <link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
  <link rel="stylesheet" href="assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/font-awesome.min.css">
  <!-- Custom styles for our template -->
  <link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen">
  <link rel="stylesheet" type="text/css" href="assets/css/da-slider.css" />
  <link rel="stylesheet" href="assets/css/style.css">
  
</head>
<style type="text/css">
.dd {
	weight:50px;
	height:50px;
}


</style>
<div class=\"imgg\">
    <td width="10%">
     <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
        <a class="navbar-brand" href="index.php">
          <img class="dd" src="assets/images/elearn-logo-sm.png"></a></br></br>
    
  
  </tr>
</table>

  <Table width="100%">
  <tr>
  <td>
  <?php @$_SESSION['login']; 
  error_reporting(1);
  ?>
  </td>
    <td>
	<?php
	if(isset($_SESSION['login']))
	{
	 echo "<div type=\"button\" align=\"right\"><strong><a href=\"index.php\"> Home </a>|<a href=\"signout.php\">Signout</a></strong></div>";
	 }    
	 else
	 {
		 echo "&nbsp;";
	 }
	?>
	</td>
	
  </tr>
  
</table>
  </div>
<br>