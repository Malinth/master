<?php
require("config.php");
session_start();

$user = $_POST['user'];
$pwd = $_POST['pwd'];

$sql = "SELECT * FROM `gastinlogg` WHERE epost = :user AND pwd = :pwd";
$statement = $pdo->prepare($sql);
$statement->execute(array(':user' => $user, ':pwd' => $pwd));
$row = $statement->fetch(PDO::FETCH_ASSOC);

	$result = [
		"user" => false,
		"pwd" => false
		];

if (!is_null($row['ID'])) {
	$_SESSION['ID'] = $row['ID'];
	$result = [
		"user" => true,
		"pwd" => true
	];
}


echo json_encode($result);
