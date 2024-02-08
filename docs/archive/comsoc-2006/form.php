<?php include("web/header.php")?>

<h1>Registration Form</h1>

<p>
<i>COMSOC-2006 is now over. This registration form will not work any longer.</i>
</p>

<p>
<!-- <form name="registration" action="process.php" method="post"> -->

Please enter your name and affiliation as you would like them to appear on 
your conference name badge.

<table>
<tr><td>Name:</td><td><input type="text" name="name" size="30" /></td></tr>
<tr><td>Affiliation:</td><td><input type="text" name="affiliation" size="30" /></td></tr>
<tr><td>Email:</td><td><input type="text" name="email" size="30" /></td></tr>
<tr><td>Type:</td><td>
<input type="radio" name="type" value="standard" checked="checked" /> Standard (&euro;60)
<input type="radio" name="type" value="student" /> Student (&euro;30)
</td></tr>
<tr><td>Social Dinner:</td><td>
<input type="radio" name="dinner" value="yes" checked="checked" /> Yes
<input type="radio" name="dinner" value="no" /> No &nbsp; (<a href="dinner.php">more information</a>)
</td></tr>
<tr><td colspan=2>Comments (e.g. special dietary requirements, late arrivals):</td></tr>
<tr><td colspan=2><textarea rows="2" cols="45" name="comments"></textarea></td></tr>
<tr><td colspan=2><input type="submit" value="Submit" />
&nbsp;<input type="reset" value="Reset" /></td></tr>
</table>

</form>
</p>

<?php include("web/footer-1.php")?>
<?php echo date ("l, d-M-Y H:i:s T", getlastmod())?>
<?php include("web/footer-2.php")?>

