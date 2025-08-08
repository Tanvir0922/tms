<?php 
// DB credentials.
define('DB_HOST','localhost');
define('DB_USER','root');
define('DB_PASS','');
define('DB_NAME','tms');
// Establish database connection.
try
{
$db = new PDO('mysql:host=mysql;dbname=tmsdb', 'tmsuser', 'tmspass');

}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}
?>
