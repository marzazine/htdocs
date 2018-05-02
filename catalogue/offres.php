<?php
require '../inc/header.php';
require '../inc/db.php';

$pdoStat = $pdo->prepare('SELECT * from offres ORDER BY prixbaseOffre DESC');

$executeIsOk = $pdoStat->execute();

$offres = $pdoStat->fetchAll();

?>

<div class="conteneur-sous-sous-MenuHaut">
	<div id="sous-sousMenuHaut">
		<div class="element-sous-sousMenuHaut">Mobiles</div>
	</div>
</div>

	<div id="conteneurMobiles">
		<?php foreach ($offres as $offres): ?>
            	<div class="blocMobiles">
            		<span class="TitreBlocMobiles"><?= $offres->nomOffre ?></span>
            		<span class="blocTexteMobiles"><?= $offres->descOffre ?> <strong><?= $offres->dureeOffre ?></strong></span>
            		<div id="imgMobile1"><img src="../img/mobiles/<?= $offres->urlimgminiMo ?>"></div>
            		<button class="button-Mobiles1" style="vertical-align:middle" onclick="javascript:location.href='offres/<?= $offres->id ?>'"><span><?= $offres->prixbaseOffre ?>€ </span></button>
            	</div>
		<?php endforeach; ?>
	</div>