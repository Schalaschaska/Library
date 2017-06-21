<?php 
 $mysql_host="localhost";
 $mysql_user="root";
 $mysql_password="";
 $mysql_database="library";
 $link = mysql_connect("$mysql_host", "$mysql_user", "$mysql_password")
 or die("Could not connect : " . mysql_error());
 mysql_select_db("$mysql_database") or die("Could not select database");
 $query = "SELECT * FROM base";
 $result = mysql_query($query) or die("Query failed : " . mysql_error());

    /* Выводим результаты в html */
    print "<table border=1 cellpadding=2 cellspacing=0>\n";
    print "<tr>\n";
    print "<td bgcolor=#FFFFFF><b>ID</b></td>\n";
    print "<td bgcolor=#FFFFFF><b>Initials</b></td>\n";
    print "<td bgcolor=#FFFFFF><b>Autor</b></td>\n";
    print "<td bgcolor=#FFFFFF><b>Name</b></td>\n";
    print "<td bgcolor=#FFFFFF><b>date_of_receipt</b></td>\n";
    print "<td bgcolor=#FFFFFF><b>date_of_delivery</b></td>\n";
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
?> 
