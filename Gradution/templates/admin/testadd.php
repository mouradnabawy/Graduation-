<?php
session_start();
error_reporting(1);
if (!isset($_SESSION['alogin']))
{
	echo "<br><h2>You are not Logged On Please Login to Access this Page</h2>";
	echo "<a href=index.php><h3 align=center>Click Here for Login</h3></a>";
	exit();
}
?>
<link href="../quiz.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<?php
require("../database.php");

include("nav.php");


echo "<h2 class='text-center bg-primary'>Add Test</h2>";
if($_POST[submit]=='Save' || strlen($_POST['subid'])>0 )
{
extract($_POST);
mysqli_query($con,"insert into mst_test(sub_id,test_name,total_que,test_duration) values ('$subid','$testname','$totque','$online_exam_duration')",$cn) or die(mysqli_error());
echo "<p align=center>Test <b>\"$testname\"</b> Added Successfully.</p>";
unset($_POST);
}
?>
<SCRIPT LANGUAGE="JavaScript">
function check() {
mt=document.form1.testname.value;
if (mt.length<1) {
alert("Please Enter Test Name");
document.form1.testname.focus();
return false;
}
tt=document.form1.totque.value;
if(tt.length<1) {
alert("Please Enter Total Question");
document.form1.totque.value;
return false;
}
return true;
}
</script>
<form name="form1" method="post" onSubmit="return check();">
  <table class="table table-striped">
    <tr>
      <td width="49%" height="32"><div align="left"><strong>Enter Level Name </strong></div></td>
      <td width="3%" height="5">  
      <td width="48%" height="32"><select class="form-control" name="subid">
<?php
$rs=mysqli_query($con,"Select * from mst_subject",$cn);
	  while($row=mysqli_fetch_array($rs))
{
if($row[0]==$subid)
{
echo "<option value='$row[0]' selected>$row[1]</option>";
}
else
{
echo "<option value='$row[0]'>$row[1]</option>";
}
}
?>
      </select>
        
    <tr>
        <td height="26"><div align="left"><strong> Enter Test Name </strong></div></td>
        <td>&nbsp;</td>
	  <td><input class="form-control" name="testname" type="text" id="testname"></td>
    </tr>
    <tr>
      <td height="26"><div align="left"><strong>Enter Total Question </strong></div></td>
      <td>&nbsp;</td>
      <td><input class="form-control" name="totque" type="text" id="totque"></td>
    </tr>
    <tr>
	
	<tr>
      <td height="26"><div align="left"><strong>Exam Duration </strong></div></td>
      <td>&nbsp;</td>
      <td><select name="online_exam_duration" id="online_exam_duration" class="form-control">
                          <option value="">Select</option>
                          <option value="5">5 Seconds</option>
                          <option value="30">30 Seconds</option>
                          <option value="60">60 Seconds</option>
                          <option value="120">120 Seconds</option>
                          <option value="180">180 Seconds</option>
                        </select>
	</td>
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