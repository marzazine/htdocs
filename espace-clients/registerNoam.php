<?php

$bdd = new PDO('mysql: host=127.0.0.1; dbname=wolvenetdb', 'root' , '');
if (isset($_POST['forminscription'])){

	if((!empty($_POST['id'])) AND (!empty($_POST['pseudoCli'])) AND (!empty($_POST['prenCli'])) AND (!empty($_POST['nomCli'])) AND (!empty($_POST['mailCli'])) AND (!empty($_POST['mdpCli'])) AND (!empty($_POST['telCli'])) AND (!empty($_POST['fixeCli'])) AND (!empty($_POST['villeCli'])) AND (!empty($_POST['adresseCli'])) AND (!empty($_POST['cpCli'])) AND (!empty($_POST['sexeCli']))) {

		$pseudo = htmlspecialchars($_POST['pseudoCli']);
		$pren = htmlspecialchars($_POST['prenCli']);
		$nom = htmlspecialchars($_POST['nomCli']);
		$mail = htmlspecialchars($_POST['mailCli']);
		$mdp = password_hash(($_POST['mdpCli']), PASSWORD_BCRYPT);
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
					<td align="right">
			 			<label for="pseudoCli"> Identifiant :</label>
			        </td>
			        <td>
						<input type="text" placeholder="votre Identifiant" id="pseudoCli" name="pseudoCli" />
					</td>
				</tr>
				<tr>
					<td align="right">
						<label for="prenCli"> Prénom :</label>
			        </td>

			        <td>

						<input type="text" placeholder="votre Prénom" id="prenCli" name="prenCli" />
					</td>
				</tr>
				<tr>
					<td align="right">
						<label for="nomCli"> Nom :</label>
			        </td>

			        <td>
			        
						<input type="text" placeholder="votre Nom" id="nomCli" name="nomCli" />
					</td>
				</tr>
				<tr>
					<td align="right">
						<label for="mailCli"> Adresse mail :</label>
			        </td>

			        <td>
			        
						<input type="text" placeholder="votre Adresse mail" id="mailCli" name="mailCli" />
					</td>
				</tr>
				<tr>
					<td align="right">
						<label for="mdpCli"> Mot de passe :</label>
			        </td>

			        <td>
			        
						<input type="text" placeholder="votre Mot de passe" id="mdpCli" name="mdpCli" />
					</td>
				</tr>
				<tr>
					<td align="right">
						<label for="telCli"> Telephone :</label>
			        </td>

			        <td>
			        
						<input type="text" placeholder="votre Telephone" id="telCli" name="telCli" />
					</td>
				</tr>
				<tr>
					<td align="right">
						<label for="fixeCli"> Telephone fixe :</label>
			        </td>

			        <td>
			        
						<input type="text" placeholder="votre Telephone fixe" id="fixeCli" name="fixeCli" />
					</td>
				</tr>
				<tr>
					<td align="right">
						<label for="villeCli"> Ville :</label>
			        </td>

			        <td>
			        
						<input type="text" placeholder="votre Ville" id="villeCli" name="villeCli" />
					</td>
				</tr>
				<tr>
					<td align="right">
						<label for="adrsCli"> Adresse Postale :</label>
			        </td>

			        <td>
			        
						<input type="text" placeholder="votre Adresse postale" id="adrsCli" name="adrsCli" />
					</td>
				</tr>
				<tr>
					<td align="right">
						<label for="cpCli"> Code postal :</label>
			        </td>

			        <td>
			        
						<input type="text" placeholder="votre Code postal" id="cpCli" name="cpCli" />
					</td>
				</tr>
				<tr>
					<td align="right">
						<label for="mdpCli"> Sexe :</label>
			        </td>

			        <td>
			        
						<SELECT name="sexe" size="1">
							<OPTION>Homme
							<OPTION>Femme
							<OPTION>Autre
						</SELECT>
					</td>
				</tr>
				
			</table>
						<input type="submit" value="Envoyer" />
		</form>
	</div>



