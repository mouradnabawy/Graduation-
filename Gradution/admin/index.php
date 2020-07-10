<?php
session_start();
?>
<html>
<head>
  <meta charset="utf-8">
  <title>eLearning</title>
  <link rel="favicon" href="assets/images/favicon.png">
  <link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
  <link rel="stylesheet" href="assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/font-awesome.min.css">
  <!-- Custom styles for our template -->
  <link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen">
  <link rel="stylesheet" type="text/css" href="assets/css/da-slider.css" />
  <link rel="stylesheet" href="assets/css/style.css">
  <link href="../quiz.css" rel="stylesheet" type="text/css">
</head>

<?php
include("nav.php");
?>

<h1 class="text-center bg-danger">Admin Login</h1>
<form name="form1" method="post" action="login.php">
<table  align="center">
 
    <td width="163" class="style2">Login ID </td>
    <td width="149"><input class="form-control" name="loginid" type="text" id="loginid"></td>
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
    <td><input class="btn btn-primary" name="submit" type="submit" id="submit" value="Login"></td>
  </tr>
</table></td>
  </tr>
</table>

</form>

</body>
</html>
  <?php
    include "footer.php" ;
  ?>