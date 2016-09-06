<?php
if(!empty($_POST)) {
  mysql_connect("localhost","root","");
  mysql_select_db("php_school")
  or die( "Unable to select database");

$sql="INSERT INTO student (studentroll,studentname,fathername,mothername,address,registationno,image,dateofbrith)
VALUES
('$_POST[studentroll]','$_POST[studentname]','$_POST[fathername]','$_POST[mothername]','$_POST[address]','$_POST[registationno]','$_POST[image]','$_POST[dateofbrith]')";

if (!mysql_query($sql))
  {
 		 die('Error: ' . mysql_error());
  }
$student_id = mysql_insert_id();

$sql="INSERT INTO admission (student_id,remarks)
VALUES
('$student_id','$_POST[remarks]')";

if (!mysql_query($sql))
 {
 		 die('Error: ' . mysql_error());
 }

$class = mysql_insert_id();

$sql="INSERT INTO class (classid,classname)
VALUES
('$classid','$_POST[classname]')";

  mysql_close();
}



?> 

<?php include "header.php" ?>
   <div  style="width:80%;margin:auto;display:block;background-color:#CCC" class="center">
   	 	<h1>Admissions Form</h1>
        
       <form  name="student" id="student" action="admission.php" method="post" enctype="multipart/form-data">
      
<table style="margin:auto; display:block;" width="50%" border="0">
      
      <tr>
            <td style="font-size: 15px;padding-top: 8px;">Student Name :</td>
            <td><label for="studentname" ></label><input type="text"name="studentname" id="studentname"/></td>
      </tr>
      <tr>
           <td style="font-size: 15px;padding-top: 8px;">Student Roll :</td>
           <td><label for="studentroll" ></label><input type="text"  name="studentroll" id="studentroll"/></td>
      </tr>
      <tr>
           <td style="font-size: 15px;padding-top: 8px;" >Registation No :</td>
           <td><label for="registationno"></label><input type="text" name="registationno" id="registationno"/></td>
      </tr>
       <tr>
           <td style="font-size: 15px;padding-top: 8px;" >Class :</td>
           <td><label for="class" ></label><input type="text" name="class" id="class"/></td>
      </tr>
      
      <tr>
            <td style="font-size: 15px;padding-top: 8px;" >Date of Brith :</td>
            <td><label for="dateofbrith"></label><input type="text" name="dateofbrith" id="dateofbrith" /></td>
      </tr>
      <tr>
            <td style="font-size: 15px;padding-top: 8px;" >Image :</td>
            <td><label for="image"></label><input type="text" name="image" id="image" /></td>
     </tr>
     <tr>
            <td style="font-size: 15px;padding-top: 8px;">Father Name :</td>
            <td><label for="fathername" ></label><input type="text"  name="fathername" id="fathername"  /></td>
     </tr>
     <tr>
            <td style="font-size: 15px;padding-top: 8px;">Mother Name :</td>
            <td><label for="mothername" ></label><input type="text"  name="mothername" id="mothername"  /></td>
    </tr>
    <tr>
     		<td style="font-size: 15px;padding-top: 8px;" >Address :</td>
    		<td><label for="address"></label><input type="text" name="address" id="address" /></td>
    </tr>
    <tr>
     		<td style="font-size: 15px;padding-top: 8px;" >Remarks :</td>
    		<td><label for="remarks"></label><input type="text" name="remarks" id="remarks" /></td>
    </tr>
</table>
<br />
     <h1 style="font-size:24px; ">  
       <input type="submit" name="save" id="save" value="Submit" />
     </h1>  
       </form> 	
</div>
<?php include "footer.php" ?>

 