<?php
require_once '../inc/header.php';
require_once '../inc/db.php';
require_once '../inc/functions.php';

if(!empty($_GET) && !empty($_GET['id'])){

	$req = $pdo->prepare('SELECT * FROM mobiles WHERE (id = :id)');
	$req->execute(['id' => $_GET['id']]);

	if($req->rowCount() == 1){

		$mobile = $req->fetch();

	} else {

		$_SESSION['flash']['danger'] = "Ce mobile n'existe pas.";
	 	header ('Location: ../index.php');

	}

} else {

	 header ('Location: mobiles.php');
}

?>

<div class="section-bloc-general">
	
	<div class="section-titre">
		<span class="titre-section"><?= $mobile->marqueMo ?> | </span><span class="texte-normal"><?= $mobile->modeleMo ?> <?= $mobile->couleurMo ?> <?= $mobile->capaciteMo ?></span>
	</div>

<div class="section-bloc-contenu">

	<br />
	<center><img src="../img/mobiles/<?= $mobile->urlimgMo ?>"></center>
	<br />

	<span class="texte-normal"><?= $mobile->descMo ?></span>
	<br /><br />

	<span class="texte-normal"><?= $mobile->optionsMo ?></span>
	<br />

	Marque : <span class="texte-normal"><?= $mobile->marqueMo ?></span><br /><br />
	Modèle : <span class="texte-normal"><?= $mobile->modeleMo ?></span><br /><br />
	Couleur : <span class="texte-normal"><?= $mobile->couleurMo ?></span><br /><br />
	Prix : <span class="texte-normal"><?= $mobile->prixbaseMo ?>€</span><br /><br />
	Capacité : <span class="texte-normal">Jusqu'à <?= $mobile->capaciteMo ?></span><br /><br />
	Garantie : <span class="texte-normal"><?= $mobile->garantieMo ?></span><br /><br />
	Poids : <span class="texte-normal"><?= $mobile->poidsMo ?></span><br /><br />
	Dimensions : <span class="texte-normal"><?= $mobile->dimenMo ?></span><br /><br />

</div>
</div>

<center><a href="/catalogue/mobiles.php"><< Retourner voir les autres mobiles</a></center>
