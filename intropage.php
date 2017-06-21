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
				
					<div id="welcome">
				
				
				<?php

session_start();
if(!isset($_SESSION["session_username"])):
header("location:login.php");
else:
?>
	

<div id="welcome">
<h2>Добро пожаловать, <span><?php echo $_SESSION['session_username'];?>! </span></h2>
  <p><a href="logout.php">Выйти</a> из системы</p>
</div>
	
<?php endif; ?>
				</div>
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