<?php
session_start();
require("config.php");


$timeID = $_POST['idnr'];
$user = $_SESSION['ID'];
$bookingresult = [];
    $sql = " SELECT `tvattID` FROM `bokatvattid` WHERE tidID = :tidID";
    $statement = $pdo->prepare($sql);
    $statement->execute(['tidID' => $timeID]);
    if ($statement->rowCount() == 0 ) { //om det inte finns en rad, skrivs if satsen ut. om det finns en rad hoppar den till else och tar bort en rad
        $bookingresult = [
            "idnr" => false
        ];
    }
    else {
        $sql = "DELETE FROM bokatvattid WHERE userID = :userID AND tidID = :tidID";
        $statement = $pdo->prepare($sql);
        $statement->execute(['userID' => $user, 'tidID' => $timeID]);
        $bookingresult = [
            "idnr" => true
        ];
    }
echo json_encode($resultatboka);