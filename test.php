<?php
include 'config.php';
session_start();
echo uniqid('');
echo '<br>';
echo $_SESSION['name'];
define('murego','origee hello');
echo '<br>'.murego;

 

    $to = "morigene52@outlook.com";
         $subject = "This is subject";
         
         $message = "<b>This is HTML message.</b>";
         $message .= "<h1>This is headline.</h1>";
         
         $header = "From:abc@somedomain.com \r\n";
         $header .= "Cc:afgh@somedomain.com \r\n";
         $header .= "MIME-Version: 1.0\r\n";
         $header .= "Content-type: text/html\r\n";
         
         $retval = mail ($to,$subject,$message,$header) or die("noooo");
         
         if( $retval == true ) {
            echo "Message sent successfully..." .$retval;
         }else {
            echo "Message could not be sent...";
         }

         echo '<br>';
           try{
    $con->beginTransaction();
     $stmt =$con->prepare("SELECT * FROM employees");
     while($rows = $stmt->fetch(PDO::FETCH_ASSOC)){

     echo $rows['lastname'];
     }
     $stmt->execute();
     $numberOfRows=$stmt->rowCount();
     $con->commit();
   } catch (PDOException $e){
      
      $message = " Error".$e->getMessage()."<br>";
     echo 'Error is always error';
   }
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<form  method = "post" >

  
  <textarea rows = "20" cols = "20" name = "Message">
  	

  </textarea>
  <BUTTON type=" button" name="submit" value ="send">

</form>
</body>
</html>
