<?php 
require_once '../inc/header.php'; 
require_once '../inc/_header.php';
require_once '../inc/panier.class.php';
require_once '../inc/db.class.php';
?>


<div id="sousMenuHaut">

	<div class="element-sousMenuHaut"><a href="mobiles.php" id="basLien">Mobiles</a> </div>

    <div class="element-sousMenuHaut"><a href="telephones-fixes.php" id="basLien">Téléphones fixes</a> </div>

    <div class="element-sousMenuHaut"><a href="accessoires.php" id="basLien">Accessoires</a> </div>
	

</div>

<div class="conteneur-sous-sous-MenuHaut">
	<div id="sous-sousMenuHaut">
		<div class="element-sous-sousMenuHaut">Mon panier</div>
	</div>
</div>

<div class="section-bloc-general">
	
	<div class="section-titre">
		<span class="titre-section">Vos articles </span>
	</div>

	<div class="section-bloc-contenu">
		<center><?= array_sum($_SESSION['panier']); ?> article(s)</center><br />
		
		<?php if(array_sum($_SESSION['panier']) == 0): ?>
			<span class="texte-normal">Pas d'articles dans votre panier</span><br /><br />
		<?php endif; ?>

		<?php 
		$ids = array_keys($_SESSION['panier']);

		if(empty($ids)){

			$products = array();

		}else {

			$products = $DB->query('SELECT * FROM mobiles WHERE id IN ('.implode(',', $ids).')');
		}

		foreach ($products as $product):
		?>
			<img src="../img/products-mobile/<?= $product->id ?>.png" height="55">
			<span class="texte-normal"><?= $product->marqueMo ?> <?= $product->modeleMo ?> <?= $product->couleurMo ?> <?= $product->capaciteMo ?><br />Qté : <?= $_SESSION['panier'][$product->id]; ?> </span>

			<div id="delete"><a href="panier.php?delPanier=<?= $product->id ?>"><img src="../img/delete-icon.png"></a></div><br />

		<?php endforeach; ?>
		<span class="texte-normal">Total : <?= number_format($panier->total(), 2,',',' '); ?>€</span>


	</div>

</div>