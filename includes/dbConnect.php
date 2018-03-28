<?php
$serveur = "127.0.0.1";
$base = "wolvenetdb";
$user = "root";
$pass = "";


$mysqli = new mysqli($serveur, $user, $pass, $base);

$mysqli->set_charset("utf8");

if ($mysqli->connect_error) {
    die('Erreur de connexion ('.$mysqli->connect_errno.')'. $mysqli->connect_error);
}

?> 