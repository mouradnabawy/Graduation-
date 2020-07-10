<?php
session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>E-Learning System  - Result </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">
<style>


.imgg {
  /* The image used */
  background-image: url("assets/images/results.jpg");

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
include("header.php");
echo "<div class='imgg'></div>";
include("database.php");
extract($_SESSION);
$rs=mysqli_query($con,"select t.test_name,t.total_que ,r.score , r.test_time from mst_test t, mst_result r  where t.test_id=r.test_id and r.login='$login' ",$cn) or die(mysqli_error());

echo"<div class='hg'>Result</div>";

if(mysqli_num_rows($rs)<1)
{
	echo "<br><br><h1 class=head1> You have not given any quiz</h1>";
	exit;
}
echo "<table border=1 align=center><tr class=style2><td width=300>Test Name <td> Total Question <td align=center width=100> Score <td align=center> Test time";
while($row=mysqli_fetch_row($rs))
{
echo "<tr class=style8><td>$row[0] <td align=center> $row[1] <td align=center> $row[2] <td align=center> $row[3] ";
}
echo "</table>";
echo "</br>";
echo "</br>";
include "footer.php";
?>
</body>
</html>
