<?php
require_once('../inc/db.php');

$pseudo = $_POST['pseudoCli'];
$pass = $_POST['mdpCli'];

$req = $pdo->prepare('SELECT pseudoCli, mdpCli FROM clients WHERE pseudo = :pseudo');
$req->execute(array('pseudoCli' => $pseudo));
$resultat = $req ->fetch();


$mdpcorret = password_verify($_POST['mdpCli'], $resultat['mdpCli']);

if (!$resultat)
 {
 	echo "Identifiant ou mot de passe incorrect";
 }
 else
 {
 	if ($mdpcorret) {
 		session_start();
 		$_SESSION['pseudoCli'] = $pseudo;
 		echo "Vous etes actuellement connecté";
 	}
 	else {
 		echo "Identifiant ou mot de passe incorrect";
 	}
 }
?>

<html>
<body>
	<div align ="center">
		<h2>Connectez vous</h2>
		<br /><br />
		<form method="POST" action="">
			<table>
				<tr>
					<td align="center">
</body>
</html>