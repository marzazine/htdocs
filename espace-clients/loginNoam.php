<?php
require_once('../inc/db.php');

if(!empty($_POST) && !empty($_POST['pseudo']) && !empty($_POST['password'])){

	$req = $pdo->prepare('SELECT * FROM clients WHERE (pseudoCli = :pseudo)');
	$req->execute(['pseudoCli' => $_POST['pseudo']]);

	$user = $req->fetch();


	if(password_verify($_POST['password'], $user->mdpCli)) {

		session_start();
		$_SESSION['auth'] = $user;
		echo "Vous êtes connecté.";
		exit();

	} else {

		echo "Erreur dans la saisie de l'identifiant et du mot de passe.";

	}
}

?>

<html>
<body>
	<div align ="center">
		<h2>Connectez vous</h2>
		<br /><br />
		<form method="POST" action="">
			<label for="pseudo">Votre pseudo : </label>
    		<input type="text" name="pseudo" placeholder="Pseudo" maxlength="256"/><br /><br />

    		<label for="password">Votre mot de passe : </label>
    		<input type="password" name="password" placeholder="Mot de passe" maxlength="256"/><br /><br />

    		<button type="submit">Envoyer</button>

    	</form>


</body>
</html>