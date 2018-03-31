<?php
require_once('../includes/top.php');
require_once('../includes/dbConnect.php');

session_start();
session_destroy();

echo 'Vous êtes déconnecté';

?>