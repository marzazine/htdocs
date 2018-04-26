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
	<h2>Numéro de ligne : <?= $_SESSION['auth']->id; ?></h2>

<div class="section-bloc-general">
	
	<div class="section-titre">
		<span class="titre-section">Vos informations générales | </span><span class="texte-normal">Mes infos</span>
	</div>

<div class="section-bloc-contenu">
	Votre prénom : <?= $_SESSION['auth']->prenCli; ?><br />
	Votre nom : <?= $_SESSION['auth']->nomCli; ?><br />
	Votre adresse e-mail : <a href="mailto:<?= $_SESSION['auth']->mailCli; ?>"><?= $_SESSION['auth']->mailCli; ?></a><br />
	Vous êtes : Un <?= $_SESSION['auth']->sexeCli; ?><br />
	Votre n° de téléphone mobile : <?= $_SESSION['auth']->telCli; ?><br />
	Votre n° de téléphone fixe : <?= $_SESSION['auth']->fixeCli; ?><br />
	Votre ville : <?= $_SESSION['auth']->villeCli; ?><br />
	Votre adresse postale : <?= $_SESSION['auth']->adresseCli; ?><br />
	Votre code postal : <?= $_SESSION['auth']->cpCli; ?><br /><br />

	Vous êtes client depuis le <?= $_SESSION['auth']->dateinscriptionCli; ?><br />
</div>
</div>



<div class="section-bloc-general">

	<div class="section-titre">
		<span class="titre-section">Modifier mes informations | </span><span class="texte-normal">Changer mon mot de passe</span>
	</div>

<div class="section-bloc-contenu">
	<form action="" method="POST">
		<input type="password" name="password" placeholder="Changez votre mot de passe" /><br />
		<input type="password" name="password_confirm" placeholder="Confirmation du mot de passe" /><br />
	
		<br /><button class="button-submit" type="submit"><span>Envoyer </span></button>
	</form>

</div>
</div>

<div class="section-bloc-general">
	
	<div class="section-titre">
		<span class="titre-section">Vos abonnements actifs | </span><span class="texte-normal">Mes lignes, forfaits et autres souscriptions</span>
	</div>

<div class="section-bloc-contenu">
	Vous n'avez aucun abonnement en cours chez Wolvenet !<br />
	Pourquoi pas <a href="/offres-aux-particuliers/">commencer ici</a> ?

</div>
</div>

<div class="section-bloc-general">
	
	<div class="section-titre">
		<span class="titre-section">Vos derniers achats | </span><span class="texte-normal">Mobiles, accessoires, offres...</span>
	</div>

<div class="section-bloc-contenu">
	Aucun achat pour le moment.<br />
	Découvrez <a href="/catalogue/">notre catalogue</a> !

</div>
</div>


<?php require ('../inc/footer.php'); ?>