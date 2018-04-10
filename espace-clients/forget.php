<?php 
require_once ('../inc/header.php');
require_once ('../inc/functions.php');
require_once ('../inc/db.php');

if(!empty($_POST) && !empty($_POST['mail'])){

	$req = $pdo->prepare('SELECT * FROM clients WHERE (mailCli = :mail) AND confirmed_at IS NOT NULL');
	$req->execute(['mail' => $_POST['mail']]);

	$user = $req->fetch();


	if($user) {

		session_start();

		$reset_token = token(60);

		$pdo->prepare('UPDATE clients SET reset_token = ?, reset_at = NOW() WHERE id = ?')->execute([$reset_token, $user->id]);

		$_SESSION['flash']['succes'] = 'Votre nouveau mot de passe vous attend dans votre boîte mail !';
		header('Location: login.php');
		exit();

	} else {

		$_SESSION['flash']['danger'] = 'Aucun compte ne correspond à cette adresse e-mail';
		header("Location: forget.php");

	}
}

?>

<body>


<div id="sectionTitre"><span class="titreForm">Mot de passe oublié</span></div>
<div id="section">

<form action="" method="POST">
	
    <div id="label1">
    <label for="email">Votre adresse e-mail<span class="champ-obligatoire">*</span> : </label>
    <input type="email" name="mail" placeholder="Adresse e-mail" maxlength="100" /><br /><br />
	</div>

    <br /><button class="button-submit" type="submit"><span>Envoyer </span></button><br /><br />
    <span class="champ-obligatoire-tip">* : Champs obligatoires</span>
</form>


<?php require '../inc/footer.php'; ?>