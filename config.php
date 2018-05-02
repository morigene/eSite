<?PHP
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', 'morigene@123');
define('DB_NAME', 'esite_db');

try{
$con = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME.";charset=utf8", DB_USER, DB_PASS);
$con->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
	if($con ==TRUE){
 /*echo ' successful opened';*/

}else{
	echo 'not successful opened';
}


}catch(PDOException $e){
  
   echo $e->getMessage();
}

?>