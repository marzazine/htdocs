<?php 
require_once '../inc/db.php';

$pdoStat = $pdo->prepare('SELECT * from mobiles LIMIT 2');

$executeIsOk = $pdoStat->execute();

$mobiles = $pdoStat->fetchAll();

var_dump($mobiles);
