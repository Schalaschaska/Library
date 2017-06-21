

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
				<?php
				
session_start();
if(!isset($_SESSION["session_username"]))
{
header("location:login.php");
}
else
{	
 $mysql_host="localhost";
 $mysql_user="root";
 $mysql_password="";
 $mysql_database="library";
 $link = mysql_connect("$mysql_host", "$mysql_user", "$mysql_password")
 or die("Could not connect : " . mysql_error());
 mysql_select_db("$mysql_database") or die("Could not select database");
 $query = "SELECT * FROM books";
 $result = mysql_query($query) or die("Query failed : " . mysql_error());
 

    print "<table border=1 cellpadding=2 cellspacing=0 >\n";
    print "<tr>\n";
    print "<td bgcolor=#FFFFFF><b>Code</b></td>\n";
    print "<td bgcolor=#FFFFFF><b>Autor</b></td>\n";
    print "<td bgcolor=#FFFFFF><b>Name</b></td>\n";
    print "<td bgcolor=#FFFFFF><b>Genre</b></td>\n";
    print "<td bgcolor=#FFFFFF><b>Available</b></td>\n";
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