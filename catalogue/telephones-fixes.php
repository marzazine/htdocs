<?php
require '../inc/header.php';
require '../inc/_header.php';


$fixes = $DB->query('SELECT * FROM catalogue WHERE type = "Fixe"');

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
            		<span class="addToCart"><a id="noCSS" href="addpanier.php?id=<?= $fixe->id ?>"><img src="../img/cart-mini.png"></a></span>
            		<span class="TitreBlocFixes"><?= $fixe->marque ?></span>
            		<span class="blocTexteFixes"><?= $fixe->modele ?> <stronaccessoireg><?= $fixe->couleur ?></strong></span>
            		<div id="imgFixse"><img src="../img/products/<?= $fixe->id ?>.png"></div>
            		<button class="button-Fixes1" style="vertical-align:middle" onclick="javascript:location.href='viewproduct.php?id=<?= $fixe->id ?>'"><span><?= number_format($fixe->prixbase,2,',',' ')?>€ </span></button>
            	</div>
		<?php endforeach; ?>
	</div>