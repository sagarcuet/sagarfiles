<?php
  mysql_connect("localhost","root","");
  mysql_select_db("php_school")
  or die( "Unable to select database");

  $result = mysql_query("SELECT * FROM student");
  mysql_close();
?> 

<?php include "header.php"?>

<div class="" style="text-align:justify;">
   	 	<h1>Student List</h1>
 <?php      
      echo "<table width='100%'>
		<tr id='cell'>
		<th id='tab'>Student-Name </th>
		<th id='tab' >Roll No</th>
		<th id='tab' >Registation No</th>
		<th id='tab' >fathername</th>
		<th id='tab' >mothername</th>
		<th id='tab' >Address</th>
		<th id='tab'>Date-Of-Brith</th>
		<th id='tab'>View</th>
		</tr>";

while($row = mysql_fetch_array($result))
  {
  echo "<tr id='cell' >";
  echo "<td id='row'>" . $row['studentname'] . "</td>";
  echo "<td id='row'>" . $row['studentroll'] . "</td>";
  echo "<td id='row'>" . $row['registationno'] . "</td>";
  echo "<td id='row'>" . $row['fathername'] . "</td>";
  echo "<td id='row'>" . $row['mothername'] . "</td>";
  echo "<td id='row'>" . $row['address'] . "</td>";
  echo "<td id='row'>" . $row['dateofbrith'] . "</td>";
  echo "<td id='row'><a href='view.php'>View</a> </td>";
  echo "</tr>";
  }
echo "</table>";
?>
        
</div>
<?php include "footer.php"?>