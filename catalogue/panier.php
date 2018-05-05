<?php 
require_once '../inc/header.php'; 
require_once '../inc/_header.php';
require_once '../inc/panier.class.php';
require_once '../inc/db.class.php';
?>


<div id="sousMenuHaut">

	<div class="element-sousMenuHaut">Votre panier</div>	

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

			$products = $DB->query('SELECT * FROM catalogue WHERE id IN ('.implode(',', $ids).')');
		}

		foreach ($products as $product):
		?>
			<img src="../img/products/<?= $product->id ?>.png" height="55">
			<span class="texte-normal"><?= $product->marque ?> <?= $product->modele ?> <?= $product->couleur ?> <?= $product->capacite ?><br />Qté : <?= $_SESSION['panier'][$product->id]; ?><br>
				Prix unitaire : <?= number_format($product->prixbase, 2,',', ' '); ?>€</span>

			<div id="delete"><a id="noCSS" href="panier.php?delPanier=<?= $product->id ?>"><img src="../img/delete-icon.png"></a></div><br />

		<?php endforeach; ?>
		<span class="texte-normal">Total : <?= number_format($panier->total(), 2,',',' '); ?>€</span>

		<?php if(array_sum($_SESSION['panier']) > 0): ?>
			<br /><br /><center><button>Paiement</button></center>
		<?php endif; ?>


	</div>

</div>