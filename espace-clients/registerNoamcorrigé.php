<?php

$bdd = new PDO('mysql: host=127.0.0.1; dbname=wolvenetdb', 'root' , '');
if (isset($_POST['forminscription'])){

	if((!empty($_POST['id'])) AND (!empty($_POST['pseudoCli'])) AND (!empty($_POST['prenCli'])) AND (!empty($_POST['nomCli'])) AND (!empty($_POST['mailCli'])) AND (!empty($_POST['mdpCli'])) AND (!empty($_POST['telCli'])) AND (!empty($_POST['fixeCli'])) AND (!empty($_POST['villeCli'])) AND (!empty($_POST['adresseCli'])) AND (!empty($_POST['cpCli'])) AND (!empty($_POST['sexeCli']))) {

		$pseudo = htmlspecialchars($_POST['pseudoCli']);
		$pren = htmlspecialchars($_POST['prenCli']);
		$nom = htmlspecialchars($_POST['nomCli']);
		$mail = htmlspecialchars($_POST['mailCli']);
		$mdp = sha1($_POST['mdpCli']);
		$tel = htmlspecialchars($_POST['telCli']);
		$fixe = htmlspecialchars($_POST['fixeCli']);
		$ville = htmlspecialchars($_POST['villeCli']);
		$adrs = htmlspecialchars($_POST['adresseCli']);
		$cp = htmlspecialchars($_POST['cpCli']);
		$sexe = htmlspecialchars($_POST['sexeCli']);

		$pseudolength = strlen($pseudo);

		if($pseudolength <= 255){

			$erreur = "Le mot de passe est trop long";

		} else {
			$erreur = "Les champs ne sont pas tous complétés";
		}
		
	}
}

?>

<html>
	<head>
	<head/>
<body>
	<div align="center">
		<h2> Inscription </h2>
		<br /><br />
		<form method="POST" action="">
			<table>
				<tr>
					<td>
			<label for="pseudoCli">
				Identifiant :</label>
			        </td>
			        <td>
				<input type="text"
				placeholder="votre Identifiant" id="pseudoCli" name="pseudoCli" />
					</td>
				</tr>
			</table>
		</form>
	</div>



