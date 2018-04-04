<?php require ('../inc/functions.php'); ?>
<?php require ('../inc/header.php'); ?>
<?php debug($_SESSION); ?>

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