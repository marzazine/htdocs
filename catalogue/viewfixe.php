<?php
require_once '../inc/header.php';
require_once '../inc/db.php';
require_once '../inc/functions.php';

if(!empty($_GET) && !empty($_GET['id'])){

	$req = $pdo->prepare('SELECT * FROM fixes WHERE (id = :id)');
	$req->execute(['id' => $_GET['id']]);

	if($req->rowCount() == 1){

		$fixe = $req->fetch();

	} else {

		$_SESSION['flash']['danger'] = "Ce téléphone fixe n'existe pas.";
	 	header ('Location: ../index.php');

	}

} else {

	 header ('Location: telephones-fixes.php');
}

?>

<div class="section-bloc-general">
	
	<div class="section-titre">
		<span class="titre-section"><?= $fixe->marqueFixe ?> | </span><span class="texte-normal"><?= $fixe->modeleFixe ?></span>
	</div>

<div class="section-bloc-contenu">

	
	<br /><br />
<div class="w3-content w3-display-container">
  		<img class="mySlides" src="/img/<?= $fixe->url1Fixe ?>" style="width:65%">
  		<img class="mySlides" src="/img/<?= $fixe->url2Fixe ?>" style="width:65%">

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

	<span class="texte-normal"><?= $fixe->descFixe ?></span>
	<br /><br />

	<br />

	<div class="caracteristiques-top">Marque : <span class="texte-normal"><?= $fixe->marqueFixe ?></span></div>
	<div class="caracteristiques2">Modèle : <span class="texte-normal"><?= $fixe->modeleFixe ?></span></div>
	<div class="caracteristiques2">Prix : <span class="texte-normal"><?= $fixe->prixbaseFixe ?>€</span></div>
	<div class="caracteristiques">Année de sortie : <span class="texte-normal"><?= $fixe->anneeFixe ?></span></div>
	<div class="caracteristiques">Garantie : <span class="texte-normal"><?= $fixe->garantieFixe ?></span></div>
	<div class="caracteristiques2">Poids : <span class="texte-normal"><?= $fixe->poidsFixe ?></span></div>

</div>
</div>

<center><a href="/catalogue/telephones-fixes.php"><< Retourner voir les autres téléphones fixes</a></center>

</body>
</html>