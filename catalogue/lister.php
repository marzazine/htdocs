<?php 
require_once '../inc/db.php';
require_once 'indexNoam.php'

$pdoStat = $pdo->prepare('SELECT * from mobiles');

$executeIsOk = $pdoStat->execute();

$mobiles = $pdoStat->fetchAll();

?>

<ul>
	<?php foreach ($mobiles as $mobile): ?>

		<li><?= $mobile->marqueMo ?></li>
		<li><?= $mobile->modeleMo ?></li>
		<li><?= $mobile->prixbaseMo ?></li>
		<li><?= $mobile->anneeMo ?></li>
		<li><?= $mobile->descMo ?></li>
		<br />

	<?php endforeach; ?>
<ul>
