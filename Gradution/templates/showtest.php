<?php
session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>E-Learning System - Test List</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">


function Redirect()
{
     document.location= "StartQuiz.php";
   


}
</script>
<style>
.imgg {
  /* The image used */
  background-image: url("assets/images/ee.jpg");

  /* Full height */
  height: 100px; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  padding-top: 250px;
}

/* Header/Logo Title */
.hg {
 
  
  text-align: center;
  background: #00bfff;
  color: white;
  width:550px;
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
extract($_GET);
$rs1=mysqli_query($con,"select * from mst_subject where sub_id=$subid");
$row1=mysqli_fetch_array($rs1);
echo "<h1 align=center><font color=blue> $row1[1]</font></h1>";
$rs=mysqli_query($con,"select * from mst_test where sub_id=$subid");
if(mysqli_num_rows($rs)<1)
{
	echo "<br><br><h2 class=head1> No Quiz for this Subject </h2>";
	exit;
}
echo"<div class='hg'>Select Quiz Name to Give Quiz</div>";
echo "<table align=center>";

while($row=mysqli_fetch_row($rs))
{
	echo "<tr><td align=center ><a window.document.href =quiz.php?testid=$row[0]&subid=$subid; onclick=document.location='StartQuiz.php';><font size=4>$row[2]</font></a></td></tr>";
	#echo "<tr><td align=center ><a window.document.href =quiz.php?testid=$row[0]&subid=$subid; onclick=javascript:Redirect();><font size=4>$row[2]</font></a></td></tr>";
}
echo "</table>";
echo"</br>";
include "footer.php";
?>
</body>
</html>
