<html>
  <head>
    <title>E-Learning System - Start Quiz</title>

<script language="javascript">

function Redirect() 
{
  document.location= "http://localhost:5000/finish";

}
</script>


	

  </body>
</html>

<?php
session_start();
error_reporting(1);
include("database.php");
extract($_POST);
extract($_GET);
extract($_SESSION);
$sid=$_SESSION[sid];

if(isset($subid) && isset($testid))
{
$_SESSION[sid]=$subid;
$_SESSION[tid]=$testid;

header("location:quiz.php");
}
if(!isset($_SESSION[sid]) || !isset($_SESSION[tid]))
{
	echo"error";
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>E-Learning System - Start Quiz</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">
</head>

<body>
<?php
include("header.php");


?>
<?php
    session_start();
    if( empty( $_SESSION['tid'] ) )$_SESSION['qid']=date('Y-m-d H:i:s');


session_start();

//Check to see if our countdown session
//variable has been initialized.
if(!isset($_SESSION['countdown'])){
	$rss=mysqli_query($con,"select * from mst_test where test_id=$testid ",$cn);
	  while($row=mysqli_fetch_array($rss))
{echo $timee=$row['test_duration'];
    //Set the countdown to 120 seconds.
    $_SESSION['countdown'] = $timee ;
    //Store the timestamp of when the countdown began.
    $_SESSION['time_started'] = time();
}
 }
//Get the current timestamp.
$now = time();
 
//Calculate how many seconds have passed since
//the countdown began.
$timeSince = $now - $_SESSION['time_started'];
 
//How many seconds are remaining?
$remainingSeconds = abs($_SESSION['countdown'] - $timeSince);
 
//Print out the countdown.
echo "There are $countdown seconds remaining.";


//Check if the countdown has finished.
if($remainingSeconds < 1){
   //Finished! Do something.
}

$t=$timeSince/$countdown; 

$query="select * from mst_question where test_id=$tid ";

$rs=mysqli_query($con,"select * from mst_question where test_id=$tid",$cn) or die(mysqli_error());
if(!isset($_SESSION[qn]))
{
	$_SESSION[qn]=0;
	mysqli_query("delete from mst_useranswer where sess_id='" . session_id() ."'") or die(mysqli_error());
	$_SESSION[trueans]=0;
	
}
else
{	
		if($submit=='Next Question' && isset($ans))
		{
			
				mysqli_data_seek($rs,$_SESSION[qn]);
				$row= mysqli_fetch_row($rs);	
				mysqli_query($con,"insert into mst_useranswer(sess_id, test_id, que_des, ans1,ans2,ans3,ans4,true_ans,your_ans,test_elapsedtime, test_ratio ) values ('".session_id()."', $tid,'$row[2]','$row[3]','$row[4]','$row[5]', '$row[6]','$row[7]','$ans','$t','0.333')") or die(mysqli_error());
				if($ans==$row[7])
				{
				 $_SESSION[trueans]=$_SESSION[trueans]+1;
				}
				
				$_SESSION[qn]=$_SESSION[qn]+1;
		}
		else if($submit=='Get Result' && isset($ans))
		{
			

		   
				mysqli_data_seek($rs,$_SESSION[qn]);
				$row= mysqli_fetch_row($rs);	
				mysqli_query($con,"insert into mst_useranswer(sess_id, test_id, que_des, ans1,ans2,ans3,ans4,true_ans,your_ans, test_elapsedtime , test_ratio)
				 values ('".session_id()."', $tid,'$row[2]','$row[3]','$row[4]','$row[5]', '$row[6]','$row[7]','$ans','$t','0.333')") or die(mysqli_error());
				if($ans==$row[7])
				{
							$_SESSION[trueans]=$_SESSION[trueans]+1;
				}
				echo "<h1 class=head1> Result</h1>";
				$_SESSION[qn]=$_SESSION[qn]+1;
				echo "<Table align=center><tr class=tot><td>Total Question<td> $_SESSION[qn]";
				echo "<tr class=tans><td>True Answer<td>".$_SESSION[trueans];
				$w=$_SESSION[qn]-$_SESSION[trueans];
				echo "<tr class=fans><td>Wrong Answer<td> ". $w;
				echo " <tr class=tans> <td> You have Finished in $timeSince Seconds <td> " ;
				echo"<tr><td><input type=button name=btn value='End' onClick='Redirect();'></tr></td>";
				echo "</table>";
				$r=$_SESSION[trueans]/$_SESSION[qn];
				echo "<h1 align=center><a href=review.php> Review Question</a> </h1>";

				 $rsss=mysqli_query($con,"SELECT * FROM `mst_subject` where sub_id='$sid' ",$cn);
	    while($row=mysqli_fetch_array($rsss))
          {  $lvalue=$row['value']; 

				 mysqli_query($con,"insert into mst_result(`login`, `test_id`, `test_time`, `score`, `level`) values 
					('$login','$tid','$t','$r', '$lvalue')") or die(mysqli_error());
				}
				unset($_SESSION[qn]);
				unset($_SESSION[sid]);
				unset($_SESSION[tid]);
				unset($_SESSION[trueans]);
				unset($_SESSION[countdown]);
				
				exit;
		}
}
$rs=mysqli_query($con,"select * from mst_question where test_id=$tid",$cn) or die(mysqli_error());
if($_SESSION[qn]>mysqli_num_rows($rs)-1)
{
unset($_SESSION[qn]);
echo "<h1 class=head1>Some Error Occured</h1>";
session_destroy();
echo "Please <a href=index.php> Start Again</a>";

exit;
}
mysqli_data_seek($rs,$_SESSION[qn]);
$row= mysqli_fetch_row($rs);
echo "<form name=myfm method=post action=quiz.php>";
echo "<table width=100%> <tr> <td width=30>&nbsp;<td> <table border=0>";
$n=$_SESSION[qn]+1;
echo "<tR><td><span class=style2>Que ". $n .": $row[2]</style>";
echo "<tr><td class=style8><input type=radio name=ans value=1>$row[3]";
echo "<tr><td class=style8> <input type=radio name=ans value=2>$row[4]";
echo "<tr><td class=style8><input type=radio name=ans value=3>$row[5]";
echo "<tr><td class=style8><input type=radio name=ans value=4>$row[6]";

if($_SESSION[qn]<mysqli_num_rows($rs)-1)
echo "<tr><td><input type=submit name=submit value='Next Question'></form>";
else
echo "<tr><td><input type=submit name=submit value='Get Result'></form>";
echo "</table></table>";

?>