<?php
include '../includes/top.php';
?>

<body>
<div id="sectionTitre"><span class="titreForm">Nouveau client Wolvenet !</span></div>
<div id="section">

<form method="post" action="nouveauClientDoneMerwann.php">

       <div id="labelForm"><label for="nom">Votre nom de famille : </label><input type="text" name="nom" id="nom" required /><br /><br /></div>
	   <div id="labelForm"><label for="prenom">Votre prénom : </label><input type="text" name="prenom" id="prenom" required /><br /><br /></div>
	   <div id="labelForm"><label for="email">Votre adresse e-mail : </label><input type="email" name="email" id="email" required /><br /><br /></div>
	   <div id="labelForm"><label for="pass">Créer un mot de passe : </label><input type="password" name="pass" id="pass" required /><br /><br /></div>
	   <div id="labelForm"><label for="codePostal">Votre code postal : </label><input type="text" name="codePostal" id="codePostal" maxlength="6" required /><br /><br /></div>
	   <div id="labelForm"><label for="ville">Votre ville :</label><input type="text" name="ville" id="ville" required /><br /><br /></div>
	   <div id="labelForm"><label for="adresse">Votre adresse postale :</label><input type="text" name="adresse" id="adresse" required /><br /><br /></div>
	   <div id="labelForm"><label for="tel">Votre numéro de téléphone :</label><input type="tel" name="tel" id="tel" maxlength="10" /><br /><br /></div>
	   <div id="labelForm"><label for="tel">Votre numéro de fixe :</label><input type="tel" name="telFixe" id="telFixe" maxlength="10" /><br /><br /></div>
	   
	   Vous êtes :
	   <input type="radio" name="sexe" value="homme" id="homme" /> <label for="homme">Un homme</label><br />
	   <input type="radio" name="sexe" value="femme" id="femme" /> <label for="femme">Une femme</label><br />
	   <input type="radio" name="sexe" value="autre" id="autre" /> <label for="autre">Autre</label><br />
	   
	   <div id="boutonEnvoyer"><input type="submit" value="Envoyer" name="nouveauClient"/></div>
	   
</form>

</div>

</body>