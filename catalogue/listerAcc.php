<?php 
require_once '../inc/db.php';

$pdoStat = $pdo->prepare('SELECT * from accessoires');

$executeIsOk = $pdoStat->execute();

$Acc = $pdoStat->fetchAll();

?>

<ul>
	<?php foreach ($Acc as $Acc): ?>

		<li><?= $Acc->MarqueAcc ?></li>
		<li><?= $Acc->modeleAcc ?></li>
		<li><?= $Acc->prixbaseAcc ?></li>
		<br />

	<?php endforeach; ?>
<ul>

