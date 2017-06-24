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
				<div class="container mregister">
				<div id="login">
				<h1>Register</h1>
				<form action="register.php" id="registerform" method="post"name="registerform">
				 <p><label for="user_login">Full name<br>
				 <input class="input" id="full_name" name="full_name"size="32"  type="text" value=""></label></p>
				<p><label for="user_pass">E-mail<br>
				<input class="input" id="email" name="email" size="32"type="email" value=""></label></p>
				<p><label for="user_pass">User name<br>
				<input class="input" id="username" name="username"size="20" type="text" value=""></label></p>
				<p><label for="user_pass">Password<br>
				<input class="input" id="password" name="password"size="32"   type="password" value=""></label></p>
				<p class="submit"><input class="button" id="register" name= "register" type="submit" value="Register"></p>
					  <p class="regtext"><a href= "login.php">Sing up</a></p>
				 </form>
				</div>
				</div>
				<?php include("includes/conect.php"); ?>
				<?php
	
	if(isset($_POST["register"]))
{
	if(!empty($_POST['full_name']) && !empty($_POST['email']) && !empty($_POST['username']) && !empty($_POST['password'])) 
	{
  $full_name= htmlspecialchars($_POST['full_name']);
$email=htmlspecialchars($_POST['email']);
 $username=htmlspecialchars($_POST['username']);
 $password=htmlspecialchars($_POST['password']);
 $password = md5($password);//шифруем пароль          
 $PR=0;
 $query=mysql_query("SELECT * FROM usertbl WHERE username='".$username."'");
  $numrows=@mysql_num_rows($query);
if($numrows==0)
   {
	$sql="INSERT INTO usertbl
  (full_name, email, username,password)
	VALUES('$full_name','$email', '$username', '$password')";
  $result=mysql_query($sql);
 if($result){
	$message = "Account Successfully Created";
} else {
 $message = "Failed to insert data information!";
  }
	} else {
	$message = "That username already exists! Please try another one!";
   }
	} else {
	$message = "All fields are required!";
	}
	}
	
	?>

	<?php if (!empty($message)) {echo "<p class=\"error\">" . "MESSAGE: ". $message . "</p>";} ?>
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