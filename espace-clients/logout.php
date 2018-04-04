<?php

session_start();
unset($_SESSION['auth']);

$_SESSION['flash']['succes'] = "Vous êtes à présent déconnecté(e) !";

header('Location: ../index.php');
?>