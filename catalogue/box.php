<?php
require '../inc/header.php';
require '../inc/db.php';

$pdoStat = $pdo->prepare('SELECT * from box ORDER BY prixBox DESC');

$executeIsOk = $pdoStat->execute();

$box = $pdoStat->fetchAll();

?>

<div class="conteneur-sous-sous-MenuHaut">
	<div id="sous-sousMenuHaut">
		<div class="element-sous-sousMenuHaut">Mobiles</div>
	</div>
</div>

	<div id="conteneurMobiles">
		<?php foreach ($box as $box): ?>
            	<div class="blocMobiles">
            		<span class="TitreBlocMobiles"><?= $box->nomBox ?></span>
            		<span class="blocTexteMobiles"><?= $box->descBox ?></span>
            		<div id="imgMobile1"><img src="../img/mobiles/<?= $box->urlimgminiMo ?>"></div>
            		<button class="button-Mobiles1" style="vertical-align:middle" onclick="javascript:location.href='box/<?= $box->id ?>'"><span><?= $box->prixBox ?>€ </span></button>
            	</div>
		<?php endforeach; ?>
	</div>