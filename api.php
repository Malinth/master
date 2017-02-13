<?php
session_start();
header('Access-Control-Allow-Origin: *');

//if(isset($_POST['user'])) {

$host = 'localhost';
$db = 'hyresvarlden';
$user = 'root';
$password = 'root';
$charset = 'utf8';
$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$options = [ PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
			  PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
			  PDO::ATTR_EMULATE_PREPARES   => false  ];
$pdo = new PDO($dsn, $user, $password, $options);

$user = $_POST['epost'];
$pwd = $_POST['pwd'];

$sql = "SELECT * FROM `gastinlogg` WHERE epost = :user AND pwd = :pwd";
$statement = $pdo->prepare($sql);
//$statement->execute([':user' => $_POST['epost'], ':pwd' => $_POST['pwd']]);
$statement->execute(array(':user' => $user, ':pwd' => $pwd));

$row = $statement->fetch(PDO::FETCH_ASSOC);

echo $row['epost'];
echo "hej";

$resultat = [];

if (!is_null($row['ID'])) {
	$_SESSION['ID'] = $row['ID'];
	//echo "Du är inloggad";
	$resultat = [
		"user" => true,
		"pwd" => true
	];
}

else {

	$resultat = [
		"user" => false,
		"pwd" => false
	];

}

echo json_encode($resultat);

/*}

else {
	$error = [
		"error" => "login funkar inte"
	];
	echo json_encode($error);
}*/

?>
