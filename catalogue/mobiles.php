<?php
require '../inc/header.php';
require '../inc/db.php';

$pdoStat = $pdo->prepare('SELECT * from mobiles');

$executeIsOk = $pdoStat->execute();

$mobiles = $pdoStat->fetchAll();

?>

<div id="sousMenuHaut">

	<div class="element-sousMenuHaut"><a href="mobiles.php" id="basLien">Mobiles</a> </div>

    <div class="element-sousMenuHaut"><a href="telephones-fixes.php" id="basLien">Téléphones fixes</a> </div>

    <div class="element-sousMenuHaut"><a href="accessoires.php" id="basLien">Accessoires</a> </div>
	

</div>

<div class="conteneur-sous-sous-MenuHaut">
	<div id="sous-sousMenuHaut">
		<div class="element-sous-sousMenuHaut">Mobiles</div>
	</div>
</div>

	<div id="conteneurMobiles">
		<?php foreach ($mobiles as $mobile): ?>
            	<div class="blocMobiles">
            		<span class="TitreBlocMobiles"><?= $mobile->marqueMo ?></span>
            		<span class="blocTexteMobiles"><?= $mobile->modeleMo ?></span>
            		<button class="button-Mobiles1" style="vertical-align:middle" onclick="javascript:location.href='#'"><span><?= $mobile->prixbaseMo ?>€ </span></button>
            	</div>
		<?php endforeach; ?>
	</div>
