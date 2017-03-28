<?php
require("config.php");

$weeknumber = $_POST;

$time = array("06:00", "12:00", "18:00");

$week_start = new DateTime();
$week_start->setISODate(2017,6);
$startmonday = $week_start->format('Y-m-d');
$week_start->modify('- 1 day');

$resultat = array();

for ($i = 0; $i < 7; $i ++) {
  $week_start->modify('+ 1 day');
  $datum = $week_start->format('Y-m-d');
  for ($x = 0; $x < 3; $x++){

    $fasttid = $time[$x];
    $sql = " SELECT * FROM bokatvattid WHERE tvattDatum = :firstdayofweek AND tvattTid = :fastaTider";
    $statement = $pdo->prepare($sql);
    $statement->execute(['firstdayofweek' => $datum, 'fastaTider' => $fasttid]);
 
    $statement->fetchAll() 

   }
}

  echo json_encode($resultat);