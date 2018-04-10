<?php 
require ('../inc/header.php'); 
require ('../inc/functions.php');

logged_only();

if(!empty($_POST)){

	if(empty($_POST['password']) || $_POST['password'] != $_POST['password_confirm']) {

		$_SESSION['flash']['danger'] = 'Les mots de passes saisis sont différents.';
		header("Location: account.php");

	} else {

		$user_id = $_SESSION['auth']->id;

		$password = password_hash($_POST['password'], PASSWORD_BCRYPT);

		require_once '../inc/db.php';

		$pdo->prepare('UPDATE clients SET mdpCli = ?')->execute([$password]);

		$_SESSION['flash']['succes'] = 'Votre mot de passe a été modifié.';

		header("Location: account.php");

	}

}

?>

<h1>Votre espace client, <?= $_SESSION['auth']->prenCli; ?></h1>

<div class="section-bloc-general">
	<div class="section-titre"><span class="titre-section">Mon espace client | </span><span class="texte-normal">Changer mon mot de passe</span></div>
<div class="section-bloc-contenu">
	<form action="" method="POST">
	<input type="password" name="password" placeholder="Changez votre mot de passe" /><br />

	<input type="password" name="password_confirm" placeholder="Confirmation du mot de passe" /><br />
	
	<br /><button class="button-submit" type="submit"><span>Envoyer </span></button>
</div>
</form>
</div>


<?php require ('../inc/footer.php'); ?>