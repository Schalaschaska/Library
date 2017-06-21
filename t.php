
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
//Гостевая книга на ФЛЭШЕ:-)
//Dimension Art Group (C)
//FREE VERSION 1.0
//Может код чуть и корявый зато работает:-)
// а так лучше его и не трогать:-)
header("Cache-Control:no-cache,must-revalidate");
if(isset($action)){
	if($action=="write"){
	if(isset($message)&&isset($name)&&isset($email)&&isset($url)){
	$year=date(Y); 
	$month=date(F);
	if(@chdir("./$year")==false){
	mkdir("$year",0755);
	chdir("./$year");
	mkdir("$month",0755);
	chdir("./$month");
	$file = fopen("counter.php", "w");
	$filecontent="<?php "."\n"."$"."count=0;"."\n"." ?".">";
	fwrite($file, $filecontent);
	fclose($file);
	chdir("..");
	chdir("..");
chdir("./$year");
if(@chdir("./$month")==false){
mkdir("$month",0755);
chdir("./$month");
	$file = fopen("counter.php", "w");
	$filecontent="<?php "."\n"."$"."count=0;"."\n"." ?".">";
	fwrite($file, $filecontent);
	fclose($file);
include('counter.php');
$count=$count+1;
$filename = "#".$count.".log";
$filecontent ="&name$count=".$name."&url$count=".$url."&email$count=".$email."&message$count=".$message;
$f = fopen($filename, "w");
fwrite($f, $filecontent);
fclose($f);
$file1 = fopen("counter.php", "w");
$filecontent1="<?php "."\n"."$"."count=$count;"."\n"." ?".">";
fwrite($file1, $filecontent1);
fclose($file1);
chdir("..");
chdir("..");
}else{
include('counter.php');
$count=$count+1;
$filename = "#".$count.".log";
$filecontent ="&name$count=".$name."&url$count=".$url."&email$count=".$email."&message$count=".$message;
$f = fopen($filename, "w");
fwrite($f, $filecontent);
fclose($f);
$file1 = fopen("counter.php", "w");
$filecontent1="<?php "."\n"."$"."count=$count;"."\n"." ?".">";
fwrite($file1, $filecontent1);
fclose($file1);
chdir("..");
chdir("..");
}
	print("&okk=ok");
	}else{
	header("Cache-Control:no-cache,must-revalidate");
	chdir("..");
chdir("./$year");
if(@chdir("./$month")==false){
mkdir("$month",0755);
chdir("./$month");
	$file = fopen("counter.php", "w");
	$filecontent="<?php "."\n"."$"."count=0;"."\n"." ?".">";
	fwrite($file, $filecontent);
	fclose($file);
include('counter.php');
$count=$count+1;
$filename = "#".$count.".log";
$filecontent ="&name$count=".$name."&url$count=".$url."&email$count=".$email."&message$count=".$message;
$f = fopen($filename, "w");
fwrite($f, $filecontent);
fclose($f);
$file1 = fopen("counter.php", "w");
$filecontent1="<?php "."\n"."$"."count=$count;"."\n"." ?".">";
fwrite($file1, $filecontent1);
fclose($file1);
chdir("..");
chdir("..");
}else{
include('counter.php');
$count=$count+1;
$filename = "#".$count.".log";
$filecontent ="&name$count=".$name."&url$count=".$url."&email$count=".$email."&message$count=".$message;
$f = fopen($filename, "w");
fwrite($f, $filecontent);
fclose($f);
$file1 = fopen("counter.php", "w");
$filecontent1="<?php "."\n"."$"."count=$count;"."\n"." ?".">";
fwrite($file1, $filecontent1);
fclose($file1);
chdir("..");
chdir("..");
}
	print("&okk=ok");
	}
}else{
	print("<center><h1>!NO MESSAGE!</h1><center>");
}
	}
	elseif($action=="read"){
	if(isset($all)){
		header("Cache-Control:no-cache,must-revalidate");
		print('<center><h1>ALL MESSAGES</h1></center><br>');
}else{
if(isset($year)&&isset($month)&&isset($n1)&&isset($n2)){
	if(@chdir("./$year")==false){
		header("Cache-Control:no-cache,must-revalidate");
		print('&name1=Нет Сообщений&url1=Нет Сообщений&email1=Нет Сообщений&message1=За этот год нет сообщений&count=1&cool=ok');
	}elseif(@chdir("./$month")==false){
		header("Cache-Control:no-cache,must-revalidate");
		print('&name1=Нет Сообщений&url1=Нет Сообщений&email1=Нет Сообщений&message1=За этот месяц нет сообщений&count=1&cool=ok');
	}else{
		header("Cache-Control:no-cache,must-revalidate");
		include('counter.php');
		$flash="";
		for($number=1;$number<=$count;$number++){
		$filename="#".$number.".log";
		@$f=fopen($filename,"r");
		@$mes=fread($f,1000);
		$mes=chop($mes);
		$mes=trim($mes);
		$mes=ucfirst($mes);
		$flash=$flash.$mes;
		unset($mes);
		@fclose($f);
		}
		header("Cache-Control:no-cache,must-revalidate");
		print($flash."&count=".$count."&cool=ok");
		chdir("..");
		chdir("..");
	}
}
}
	}elseif($action=="delete"){
print("<center><h1>Удалить:-) Шутка:-) Эта функция тут не работает:-) Кстати рукой безопасней удалять и вообще если удалите что нить, эта версия может поглючить:-) Лучше просто рукой отредактировать</h1><br>Dimension Art Group(C)<center>");
	}else{
	print("<center><h1>НЕ ПРАВИЛЬНО УКАЗАН ПАРАМЕТР ACTION</h1><center>");
	}
}else{ 
header("Cache-Control:no-cache,must-revalidate");
?>
<HTML>
<HEAD>
<TITLE>GuestBook By Armen Khanoyants - = Dimension Art Group = -</TITLE>
</HEAD>
<BODY bgcolor="#FFFFFF">
<center>
<OBJECT classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
 codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0"
 WIDTH=550 HEIGHT=400>
 <PARAM NAME=movie VALUE="test.swf"> <PARAM NAME=quality VALUE=high> <PARAM NAME=menu VALUE=false><PARAM NAME=bgcolor VALUE=#FFFFFF> <EMBED src="test.swf" 

quality=high bgcolor=#FFFFFF  WIDTH=550 HEIGHT=400 TYPE="application/x-shockwave-flash" 

PLUGINSPAGE="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></EMBED>
</OBJECT>
</center>
</BODY>
</HTML>
 <?php }
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