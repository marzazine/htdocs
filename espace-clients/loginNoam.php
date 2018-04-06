<?php

$req = $bdd ->wolvenetdb('SELECT pseudoCli, mdpCli FROM clients WHERE pseudo = :pseudo');
$req ->execute(array(
	  'pseudo' => $pseudo));
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
