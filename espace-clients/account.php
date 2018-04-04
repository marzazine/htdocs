<?php 
require ('../inc/header.php'); 
require ('../inc/functions.php');


logged_only();

?>

<h1>Votre espace client, <?= $_SESSION['auth']->prenCli; ?></h1>




<?php require ('../inc/footer.php'); ?>