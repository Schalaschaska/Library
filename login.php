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
				<div class="container mlogin">
<div id="login">
<h1>Вход</h1>
<form action="" id="loginform" method="post"name="loginform">
<p><label for="user_login">Имя пользователя<br>
<input class="input" id="username" name="username"size="20"
type="text" value=""></label></p>
<p><label for="user_pass">Пароль<br>
 <input class="input" id="password" name="password"size="20"
  type="password" value=""></label></p> 
	<p class="submit"><input class="button" name="login"type= "submit" value="Log In"></p>
	<p class="regtext">Еще не зарегистрированы? <a href= "register.php">Регистрация</a>!</p>
   </form>
 </div>
  </div>
<?php include("includes/conect.php"); ?>
	<?php
	session_start();
	?>
	<?php
	if(isset($_SESSION["session_username"]))
	{
	// вывод "Session is set"; // в целях проверки
	header("Location: intropage.php");
	}
	if(isset($_POST["login"]))
	{
	if(!empty($_POST['username']) && !empty($_POST['password'])) 
	{
	$username=htmlspecialchars($_POST['username']);
	$password=md5(($_POST['password']));
	$query =mysql_query("SELECT * FROM usertbl WHERE username='".$username."' AND password='".$password."'");
	$numrows=@mysql_num_rows($query);
	if($numrows!=0)
 {
while($row=mysql_fetch_assoc($query))
 {
$dbusername=$row['username'];
$dbpassword=$row['password'];
 }
  if($username==$dbusername&&$password==$dbpassword)
 {
	// старое место расположения
	//  session_start();
	 $_SESSION['session_username']=$username; 
	
 /* Перенаправление браузера */
   header("Location: intropage.php");
	}
	} else {
	//  $message = "Invalid username or password!";
	
	echo  "Invalid username or password!";
 }
	} else 
	{
    $message = "All fields are required!";
	}
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