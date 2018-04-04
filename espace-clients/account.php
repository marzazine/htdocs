<?php 
require ('../inc/header.php'); 
require ('../inc/functions.php');


logged_only();

?>

<h1>Votre espace client, <?= $_SESSION['auth']->prenCli; ?></h1>

<form action="" method="POST">
	<input type="password" name="password" placeholder="Changez votre mot de passe" /><br />

	<input type="password" name="password_confirm" placeholder="Confirmation du mot de passe" /><br />
	
	<button type="submit">Envoyer</button>
</form>


<?php require ('../inc/footer.php'); ?>