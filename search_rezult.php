<html>
  <head>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
		<link type="text/css" rel="stylesheet" href="styles.css" />
  </head>
  <body>

		
		<div class="middle_block">
			<div class="header">
				<<br>
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
			$query_2 = "SELECT * FROM genre order by number";
			$result_2 = mysql_query($query_2) or die("Query failed : " . mysql_error());
				function search ($query)
				{
$text = ''; 
$query = trim($query);//пробелы
$query = strip_tags($query);//теги
$query = mysql_real_escape_string($query);//экранирование спец символов
if(!empty($query))
{
  if(strlen($query) <2 )
  {
    $text = '<p>короткий поисковый запрос.</p>';}
  else if(strlen($query) > 128){
    $text = '<p>длинный поисковый запрос.</p>';}
  else{ 
    $sql = "SELECT * FROM genre WHERE Name LIKE '%$query%'";//имя таблицы и полей
    $result = mysql_query($sql); 
    $num = @mysql_num_rows($result); 
    if($num > 0)
	{ 
      $row = mysql_fetch_assoc($result); 
      $text .= '<p>По вашему запросу  <strong>'.$query.'</strong>'; 
      $text .= ' найдено '.$num.' совпадений</p>' ; 
      
      do{ 
        $text .= '<h3>'.$row['Number'].'</h3>';//столбцы для вывода
        $text .= '<p>'.nl2br($row['Name']).'</p>';
		}
      while($row = mysql_fetch_assoc($result));
	  } 
    else{ 
      $text = '<p>Nothing found.</p>';}}} 
  else
  { 
    $text = '<p>Задан пустой поисковый запрос.</p>';
	} 
return $text;} 
if(isset($_POST['query']))
	
{ 
  $search_result = search($_POST['query']);
  echo $search_result;
    mysql_free_result($result_2);
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