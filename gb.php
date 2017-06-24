<html>
  <head>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
		<link type="text/css" rel="stylesheet" href="styles.css" />
  </head>
  <body>
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
				<form action="gb.php" id="addform" method="post"name="addform">
				 <p><label for="user_login">Name<br>
				 <input class="input" id="Name" name="Name"size="32"  type="text" value=""></label></p>
				  <p><label for="user_login">email<br>
				   <input class="input" id="email" name="email"size="32"  type="email" value=""></label></p>
				   <p><label for="user_login">Mesage<br>
				   <input class="input" id="Mesage" name="Mesage"size="32"  type="text" value=""></label></p>
				<p class="submit"><input class="button" id="gb" name= "gb" type="submit" value="Add"></p>  
				 </form>
				<?php
include("includes/conect.php");
if(isset($_POST["gb"]))
{
	if(!empty($_POST['Name']) && !empty($_POST['email']) && !empty($_POST['Mesage']) )
	{	$date_today = date("d.m.y H:i:s");
		$Name= htmlspecialchars($_POST['Name']);
		$email=htmlspecialchars($_POST['email']);
		$Mesage= htmlspecialchars($_POST['Mesage']);
		$query=mysql_query("SELECT * FROM gb WHERE datetime='".$date_today."'AND name='".$Name	."' AND email='".$email."'AND message ='".$Mesage."'");
		$numrows=@mysql_num_rows($query);
		if($numrows==0)
   {
	
	$sql="INSERT INTO gb
  (datetime, name,email,message)
	VALUES('$date_today','$Name', '$email', '$Mesage')";
	$result=mysql_query($sql);
   if($result)
{
	$message = "Account Successfully Created";
} else {
 $message = "Failed to insert data information!";
  }
	}
	else 
	{
	$message = "That username already exists! Please try another one!";
   }
	} else 
	{
	$message = "All fields are required!";
	}
	$redirect = isset($_SERVER['HTTP_REFERER'])? $_SERVER['HTTP_REFERER']:'gb.php';
header("Location: $redirect");
exit();
	}	
	
else
{
}

//echo $date_today;
	?>	 
	
	<?php
	
	$query_r = "SELECT * FROM gb";
	$res = mysql_query($query_r);
	while ($row = mysql_fetch_assoc($res))
{
    
   
    echo $row['datetime'];
	?>
	&nbsp;
	<?php
    echo $row['name'];
	?>
	&nbsp;
	<?php
	echo $row['email'];
	?>
	<br>
	<?php
	echo $row['message'];
	?>
	<br><br>
	<?php
    
}
	
	?>
				</div>
				<div class="right">
				<div class="right_v">
				<a href="Search.php">Search</a><br>
				<a href="Register.php">Register</a><br>
				<a href="gb.php">Guest book</a>
				</div>
				</div>
			</div>
			
				<div class="footer">
				<a href="https://vk.com/schalaschaska"><img src="vk.png" width="50" >
				<a href="https://www.facebook.com/profile.php?id=100009377767154"><img src="facebook.png" width="50">
				<a href="https://twitter.com/Mihanhlystow"><img src="twitter.png" width="50">
				<a href="https://www.instagram.com/schalaschaska/"><img src="i.png" width="50" >
				
				
				
			<br>
			<br>
			

				
			</div>
		</div>
		
	
  </body>
</html>