<?php 
require ('../inc/header.php'); 
require ('../inc/functions.php');


logged_only();

?>

<h1>Votre espace client, <?= $_SESSION['auth']->prenCli; ?></h1>

<div class="section-bloc-general">
	<div class="section-titre"><span class="titre-section">Mon espace client | </span><span class="texte-normal">Changer mon mot de passe</span></div>
<div class="section-bloc-contenu">
	<form action="" method="POST">
	<input type="password" name="password" placeholder="Changez votre mot de passe" /><br />

	<input type="password" name="password_confirm" placeholder="Confirmation du mot de passe" /><br />
	
	<button type="submit">Envoyer</button>
</div>
</form>
</div>


<?php require ('../inc/footer.php'); ?>