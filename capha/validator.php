<?
session_start();
if($_POST['capcha'] != $_SESSION['capcha'])
{
	echo "No!";
}
else
{
	echo "Yes!";
}
?>