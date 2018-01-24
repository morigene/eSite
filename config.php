<?PHP
define('db_host' , 'mysql:host=localhost;dbname=esite_db');
define('db_user', 'root');
define('db_pwd','');

$con  = new PDO(db_host, db_user, db_pwd);
$con->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
try{
	if($con == TRUE){
	//echo ' successful opened';
}else{
	echo 'not successful opened';
}


}catch(PDOException $e){
  
   echo $e->getMessage();
}

?>