<?php
require '../inc/header.php';
require '../inc/db.php';

$pdoStat = $pdo->prepare('SELECT * from fixes ORDER BY prixbaseFixe DESC');

$executeIsOk = $pdoStat->execute();

$fixes = $pdoStat->fetchAll();

?>

<div id="sousMenuHaut">

	<div class="element-sousMenuHaut"><a href="mobiles.php" id="basLien">Mobiles</a> </div>

    <div class="element-sousMenuHaut"><a href="telephones-fixes.php" id="basLien">Téléphones fixes</a> </div>

    <div class="element-sousMenuHaut"><a href="accessoires.php" id="basLien">Accessoires</a> </div>
	

</div>

<div class="conteneur-sous-sous-MenuHaut">
	<div id="sous-sousMenuHaut">
		<div class="element-sous-sousMenuHaut">Téléphones fixes</div>
	</div>
</div>

	<div id="conteneurMobiles">
		<?php foreach ($fixes as $fixe): ?>
            	<div class="blocFixes">
            		<span class="TitreBlocFixes"><?= $fixe->marqueFixe ?></span>
            		<span class="blocTexteFixes"><?= $fixe->modeleFixe ?></span>
            		<div id="imgMobile1"><img src="../<?= $fixe->urlimgminiFixe ?>"></div>
            		<button class="button-Fixes1" style="vertical-align:middle" onclick="javascript:location.href='telephones-fixes/<?= $fixe->id ?>'"><span><?= $fixe->prixbaseFixe ?>€ </span></button>
            	</div>
		<?php endforeach; ?>
	</div>