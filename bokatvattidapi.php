<?php
session_start();
require("config.php");


$timeID = $_POST['idnr'];
$user = $_SESSION['ID'];
$bookingresult = [];
    $sql = " SELECT `tvattID` FROM `bokatvattid` WHERE tidID = :tidID";
    $statement = $pdo->prepare($sql);
    $statement->execute(['tidID' => $timeID]);
    if ($statement->rowCount() != 0 ) { 
        $bookingresult = [
            "idnr" => false
        ];
    }
    else {
        $sql = "INSERT INTO bokatvattid (`userID`, `tidID`) VALUES(:userID, :tidID)";
        $statement = $pdo->prepare($sql);
        $statement->execute(['userID' => $user, 'tidID' => $timeID]);
        $bookingresult = [
            "idnr" => true
        ];
    }
echo json_encode($bookingresult);
