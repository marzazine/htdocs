<?php
require '../inc/header.php';
require '../inc/_header.php';


$accessoires = $DB->query('SELECT * FROM catalogue WHERE type = "Accessoire"');

?>

<div id="sousMenuHaut">

	<div class="element-sousMenuHaut"><a href="mobiles.php" id="basLien">Mobiles</a> </div>

    <div class="element-sousMenuHaut"><a href="telephones-fixes.php" id="basLien">Téléphones fixes</a> </div>

    <div class="element-sousMenuHaut"><a href="accessoires.php" id="basLien">Accessoires</a> </div>
	

</div>

<div class="conteneur-sous-sous-MenuHaut">
	<div id="sous-sousMenuHaut">
		<div class="element-sous-sousMenuHaut">Accessoires</div>
	</div>
</div>

<div id="conteneurMobiles">
		<?php foreach ($accessoires as $accessoire): ?>
            	<div class="blocAccessoires">
            		<span class="addToCart"><a id="noCSS" href="addpanier.php?id=<?= $accessoire->id ?>"><img src="../img/cart-mini.png"></a></span>
            		<span class="TitreBlocAccessoires"><?= $accessoire->marque ?></span>
            		<span class="blocTexteAccessoires"><?= $accessoire->modele ?> <stronaccessoireg><?= $accessoire->couleur ?></strong></span>
            		<div id="imgAccessoires"><img src="../img/products/<?= $accessoire->id ?>.png"></div>
            		<button class="button-Accessoires" style="vertical-align:middle" onclick="javascript:location.href='viewproduct.php?id=<?= $accessoire->id ?>'"><span><?= number_format($accessoire->prixbase,2,',',' ')?>€ </span></button>
            	</div>
		<?php endforeach; ?>
	</div>