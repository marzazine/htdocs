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

<ul>
	<?php foreach ($mobiles as $mobile): ?>

		<li><?= $mobile->marqueMo ?></li>
		<li><?= $mobile->modeleMo ?></li>
		<li><?= $mobile->prixbaseMo ?>€</li>
		<li><?= $mobile->anneeMo ?></li>
		<li><?= $mobile->descMo ?></li>
		<br />

	<?php endforeach; ?>
<ul>

