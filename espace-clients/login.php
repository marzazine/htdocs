<?php require ('../inc/header.php'); ?>
<?php 

if(!empty($_POST) && !empty($_POST['mail']) && !empty($_POST['password'])){
	require_once '../inc/functions.php';
	require_once '../inc/db.php';

	$req = $pdo->prepare('SELECT * FROM clients WHERE (mailCli = :mail) AND confirmed_at IS NOT NULL');
	$req->execute(['mail' => $_POST['mail']]);

	$user = $req->fetch();

	if(password_verify($_POST['password'], $user->mdpCli)) {

		session_start();
		$_SESSION['auth'] = $user;
		$_SESSION['flash']['succes'] = 'Vous êtes connecté';
		header('Location: account.php');
		exit();

	} else {
		
		$_SESSION['flash']['danger'] = 'Adresse mail ou mot de passe incorrect.';

	}
}

?>

<body>
<div id="sectionTitre"><span class="titreForm">Connexion à votre espace client</span></div>
<div id="section">

<form action="" method="POST">
	
    <div id="label1">
    <label for="email">Votre adresse e-mail<span class="champ-obligatoire">*</span> : </label>
    <input type="text" name="mail" placeholder="Adresse e-mail" maxlength="100" /><br /><br />
	</div>

	<div id="label0">
    <label for="mdp">Votre mot de passe<span class="champ-obligatoire">*</span> : </label>
    <input type="password" name="password" placeholder="Mot de passe" maxlength="256"/><br /><br />
	</div>

    <br /><button type="submit">Envoyer</button><br />
    <span class="champ-obligatoire-tip">* : Champs obligatoires</span>
</form>


<?php require '../inc/footer.php'; ?>