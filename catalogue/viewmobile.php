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

	<center><img src="../img/mobiles/<?= $mobile->urlimgMo ?>"></center>
	<br />
	<br />
	<?= $mobile->descMo ?>
	<br /><br />

	Marque : <?= $mobile->marqueMo ?> <br /><br />
	Modèle : <?= $mobile->modeleMo ?><br /><br />
	Couleur : <?= $mobile->couleurMo ?><br /><br />
	Prix : <?= $mobile->prixbaseMo ?>€<br /><br />
	Capacité : Jusqu'à <?= $mobile->capaciteMo ?><br /><br />
	Garantie : <?= $mobile->garantieMo ?> <br /><br />
	Poids : <?= $mobile->poidsMo ?><br /><br />
	Dimensions : <?= $mobile->dimenMo ?><br /><br />

</div>
</div>

<center><a href="mobiles.php"><< Retourner voir les autres mobiles</a></center>
