
<html>
  <head>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
		<link type="text/css" rel="stylesheet" href="styles.css" />
  </head>
  <body>
	<script type="text/javascript">
	</script>
		
		<div class="middle_block">
			<div class="header">
				<br>
				<img src="jtwsrhubqjho (1).png">
				
			</div>
			
			<div class="center">
				<div class="left">
				<div class="left_v">
				
				<a href="index.html">Home</a><br>
				<a href="base.php">Library base</a><br>
				<a href="book.php">Book base</a><br>
				<a href="visitors.php">Visitors library</a><br>
				<a href="genre.php">Genres</a>

				</div>
				</div>
				<div class="content">
				<?php
				
					
				
				$mysql_host="localhost";
				$mysql_user="root";
				$mysql_password="";
				$mysql_database="library";
				$link = mysql_connect("$mysql_host", "$mysql_user", "$mysql_password")
				or die("Could not connect : " . mysql_error());
				mysql_select_db("$mysql_database") or die("Could not select database");
				$query = "SELECT * FROM genre order by number";
				$result = mysql_query($query) or die("Query failed : " . mysql_error());
				session_start();
if(!isset($_SESSION["session_username"]))
{
header("location:login.php");
}
else
{
				print "<table border=1 cellpadding=2 cellspacing=0 >\n";
				print "<tr>\n";
				print "<td bgcolor=#FFFFFF><b>ID</b></td>\n";
				print "<td bgcolor=#FFFFFF><b>Name</b></td>\n";
				print "</tr>\n";
				while ($line = mysql_fetch_array($result, MYSQL_ASSOC)) {
        print "\t<tr>\n";
        foreach ($line as $col_value) {
         print "\t\t<td bgcolor=#FFFFFF><font face=Courier>$col_value</font></td>\n";
        }
        print "\t</tr>\n";
    
    }
    print "</table>\n";

    /* Освобождаем память от результата */
    mysql_free_result($result);

    /* Закрываем соединение */
    mysql_close($link);
	
}	
?> 




<form action="genre.php" id="addform" method="post"name="addform">
				 <p><label for="user_login">Genre<br>
				 <input class="input" id="genre_name" name="genre_name"size="32"  type="text" value=""></label></p>
				<p class="submit"><input class="button" id="genre" name= "genre" type="submit" value="Add"></p>
					  
				 </form>
<script type="text/javascript" language="JavaScript"><!--
function hideContainer() {
document.getElementById("addform").style.display = "none";
}
function showConatainer() {
document.getElementById("addform").style.display = "";
}
</script>	
<?php
if($_SESSION["session_username"]=="admin")
{
?>
<script type="text/javascript">
showConatainer();
</script>
<?php
}
else
{
?>
<script type="text/javascript">
hideContainer();
</script>
<?php
}	
?>

		
	<?php

include("includes/conect_2.php");
if(isset($_POST["genre"]))
{
	if(!empty($_POST['genre_name'])) 
	{
		$genre= htmlspecialchars($_POST['genre_name']);
		$query=mysql_query("SELECT * FROM genre WHERE name='".$genre."'");
		$numrows=@mysql_num_rows($query);
		if($numrows==0)
   {
	$sql="INSERT INTO genre(Name)VALUES('$genre')";
	$result=mysql_query($sql);
   if($result){
	$message = "Account Successfully Created";
} else {
 $message = "Failed to insert data information!";
  }
	} else 
	{
	$message = "That username already exists! Please try another one!";
   }
	} else 
	{
	$message = "All fields are required!";
	}
	}	
	
else
{
}
	?>	
				</div>
				<div class="right">
				<div class="right_v">
				<a href="Search.php">Search</a><br>
				<a href="Register.php">Register</a><br>
				<a href="#">Clear</a>
				</div>
				</div>
			</div>
			
			<div class="footer">
				<a href='#'>Clear</a>
			<br>
			<br>
			<img src="sz.png">

				
			</div>
		</div>
		
	
  </body>
</html>