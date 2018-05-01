<?php
require_once '../inc/header.php';
require_once '../inc/db.php';
require_once '../inc/functions.php';

if(!empty($_GET) && !empty($_GET['id'])){

	$req = $pdo->prepare('SELECT * FROM mobiles WHERE (id = :id)');
	$req->execute(['id' => $_GET['id']]);

	if($req->rowCount() == 1){

		$mobile = $req->fetch();

	} else {

		$_SESSION['flash']['danger'] = "Ce mobile n'existe pas.";
	 	header ('Location: ../index.php');

	}

} else {

	 header ('Location: mobiles.php');
}

?>

<div class="section-bloc-general">
	
	<div class="section-titre">
		<span class="titre-section"><?= $mobile->marqueMo ?> | </span><span class="texte-normal"><?= $mobile->modeleMo ?> <?= $mobile->couleurMo ?> <?= $mobile->capaciteMo ?></span>
	</div>

<div class="section-bloc-contenu">

	
	<br /><br />
<div class="w3-content w3-display-container">
  		<img class="mySlides" src="/img/mobiles/<?= $mobile->url1Mo ?>" style="width:65%">
  		<img class="mySlides" src="/img/mobiles/<?= $mobile->url2Mo ?>" style="width:65%">
  		<img class="mySlides" src="/img/mobiles/<?= $mobile->url3Mo ?>" style="width:65%">
  		<img class="mySlides" src="/img/mobiles/<?= $mobile->url4Mo ?>" style="width:65%">

  		<button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
  		<button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</button>
	</div>

<br /><br />
	<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>

	<span class="texte-normal"><?= $mobile->descMo ?></span>
	<br /><br />

	<span class="texte-normal"><?= $mobile->optionsMo ?></span>
	<br />

	Marque : <span class="texte-normal"><?= $mobile->marqueMo ?></span><br /><br />
	Modèle : <span class="texte-normal"><?= $mobile->modeleMo ?></span><br /><br />
	Couleur : <span class="texte-normal"><?= $mobile->couleurMo ?></span><br /><br />
	Prix : <span class="texte-normal"><?= $mobile->prixbaseMo ?>€</span><br /><br />
	Année de sortie : <span class="texte-normal"><?= $mobile->anneeMo ?></span><br /><br />
	Capacité : <span class="texte-normal">Jusqu'à <?= $mobile->capaciteMo ?></span><br /><br />
	Garantie : <span class="texte-normal"><?= $mobile->garantieMo ?></span><br /><br />
	Poids : <span class="texte-normal"><?= $mobile->poidsMo ?></span><br /><br />
	Dimensions : <span class="texte-normal"><?= $mobile->dimenMo ?></span><br /><br />

</div>
</div>

<center><a href="/catalogue/mobiles.php"><< Retourner voir les autres mobiles</a></center>

</body>
</html>