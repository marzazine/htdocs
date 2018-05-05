<?php
require '../inc/header.php';
require '../inc/_header.php';


$mobiles = $DB->query('SELECT * FROM catalogue WHERE type = "Mobile"');

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
            		<span class="addToCart"><a id="noCSS" href="addpanier.php?id=<?= $mobile->id ?>"><img src="../img/cart-mini.png"></a></span>
            		<span class="TitreBlocMobiles"><?= $mobile->marque ?></span>
            		<span class="blocTexteMobiles"><?= $mobile->modele ?> <strong><?= $mobile->couleur ?> <?= $mobile->capacite ?></strong></span>
            		<div id="imgMobile1"><img src="../img/products/<?= $mobile->id ?>.png"></div>
            		<button class="button-Mobiles1" style="vertical-align:middle" onclick="javascript:location.href='viewproduct.php?id=<?= $mobile->id ?>'"><span><?= number_format($mobile->prixbase,2,',',' ')?>€ </span></button>
            	</div>
		<?php endforeach; ?>
	</div>
