<html>
<head>
  <meta charset="utf-8">
  <title>E-Learning System - Quiz List</title>
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
</head>
<?php
session_start();
require("../database.php");
include("nav.php");
error_reporting(1);
?>
<link href="../quiz.css" rel="stylesheet" type="text/css">

<?php

extract($_POST);

echo "<BR>";
if (!isset($_SESSION['alogin']))
{
	echo "<br><h2><div  class=head1>You are not Logged On Please Login to Access this Page</div></h2>";
	echo "<a href=index.php><h3 align=center>Click Here for Login</h3></a>";
	exit();
}
echo "<h1 class='text-center bg-primary'>Add Level</h1>";

echo "<table width=100%>";
echo "<tr><td align=center></table>";
if($submit=='submit' || strlen($subname)>0 )
{
$rs=mysqli_query($con,"select * from mst_subject where sub_name='$subname'");
if (mysqli_num_rows($rs)>0)
{
	echo "<br><br><br><div class=head1>Level is Already Exists</div>";
	exit;
}
mysqli_query($con,"insert into mst_subject(sub_name) values ('$subname')",$cn) or die(mysqli_error());
echo "<p align=center>Level <b> \"$subname \"</b> Added Successfully.</p>";

}
?>
<SCRIPT LANGUAGE="JavaScript">
function check() {
mt=document.form1.subname.value;
if (mt.length<1) {
alert("Please Enter Level Name");
document.form1.subname.focus();
return false;
}
return true;
}
</script>

<div style="margin:auto;width:90%;height:500px;box-shadow:2px 1px 2px 2px #CCCCCC;text-align:left">
<title>Add Level</title>
<form name="form1" method="post" onSubmit="return check();">
  <table class="table table-striped">
    <tr>
      <td width="45%" height="32"><div align="center"><strong>Enter Level Name </strong></div></td>
      <td width="2%" height="5">  
      <td width="53%" height="32">
        <input class="form-control" name="subname" placeholder="Enter Level" type="text" id="subname">
    <tr>
        <td height="26"> </td>
        <td>&nbsp;</td>
	  <td>&nbsp;</td>
    </tr>
    <tr>
      <td height="26"></td>
      <td>&nbsp;</td>
      <td><input class="btn btn-primary" type="submit" name="submit" value="Add" ></td>
    </tr>
  </table>
</form>
  <?php
    include "footer.php" ;
  ?>
</div>