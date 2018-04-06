<?php
session_start();

session_destroy();
header('location: indexNoam.php');
exit;
?>