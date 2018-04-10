<?php

if(isset($_GET['id']) && isset($_GET['token'])){

	require_once ('../inc/db.php');
	require_once ('../inc/functions.php');

	$req = $pdo->prepare('SELECT * FROM clients WHERE id = ? AND reset_token IS NOT NULL AND reset_token = ? AND reset_at > DATE_SUB(NOW(), INTERVAL 30 MINUTE)');
	$req->execute([$_GET['id'], $_GET['token']]);

	$user = $req->fetch();

	if($user){

		if(!empty($_POST)){

			if(!empty($_POST['password']) && $_POST['password'] == $_POST['password_confirm']){

				$password = password_hash($_POST['password'], PASSWORD_BCRYPT);

				$pdo->prepare('UPDATE clients SET mdpCli = ?, reset_at = NULL, reset_token = NULL')->execute([$password]);

				$_SESSION['flash']['succes'] = 'Votre mot de passe a été modifié';
				header('Location: login.php');
				exit();

			}

		}

	} else{

	session_start();

	$_SESSION['flash']['danger'] = "Ce token n'est pas ou plus valide.";

	header("Location: login.php");

	exit();

	}

}else {

	header('Location: login.php');
	exit();
}

?>


<?php require_once ('../inc/header.php'); ?>

<body>


<div id="sectionTitre"><span class="titreForm">Votre nouveau mot de passe</span></div>
<div id="section">

<form action="" method="POST">
	
    <div id="label1">
    <label for="mdp">Votre nouveau mot de passe<span class="champ-obligatoire">*</span> : </label>
    <input type="password" name="password" placeholder="Mot de passe" maxlength="256"/><br /><br />
	</div>

	<div id="label0">
    <label for="mdp">Confirmation de votre nouveau mot de passe<span class="champ-obligatoire">*</span> : </label>
    <input type="password" name="password_confirm" placeholder="Mot de passe" maxlength="256"/><br /><br />
	</div>

    <br /><button class="button-submit" type="submit"><span>Envoyer </span></button><br /><br />

    <a href="forget.php">>> Mot de passe oublié</a>
    <span class="champ-obligatoire-tip">* : Champs obligatoires</span>
</form>


<?php require '../inc/footer.php'; ?>