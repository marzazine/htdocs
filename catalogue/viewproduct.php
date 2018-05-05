<?php
require_once '../inc/header.php';
require_once '../inc/db.php';
require_once '../inc/functions.php';

if(!empty($_GET) && !empty($_GET['id'])){

	$req = $pdo->prepare('SELECT * FROM catalogue WHERE (id = :id)');
	$req->execute(['id' => $_GET['id']]);

	if($req->rowCount() == 1){

		$product = $req->fetch();

	} else {

		$_SESSION['flash']['danger'] = "Ce produit n'existe pas.";
	 	header ('Location: ../index.php');

	}

} else {

	 header ('Location: ../index.php');
}

?>

<div class="section-bloc-general">
	
	<div class="section-titre">
		<span class="titre-section"><?= $product->marque ?> | </span><span class="texte-normal"><?= $product->modele ?></span>
	</div>

<div class="section-bloc-contenu">

	
	<br /><br />
<div class="w3-content w3-display-container">
  		<img class="mySlides" src="/img/<?= $product->url1slider ?>" style="width:65%">
  		<img class="mySlides" src="/img/<?= $product->url2slider ?>" style="width:65%">

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

	<br /><br />

	<?php if($product->type == "Fixe"): ?>
		<span class="texte-normal">C'est un téléphone fixe</span>
	<?php endif; ?>

	<?php if($product->type == "Accessoire"): ?>
		<span class="texte-normal">C'est un accessoire</span>
	<?php endif; ?>

	<?php if($product->type == "Mobile"): ?>
		<span class="texte-normal">C'est un mobile</span>
	<?php endif; ?>


</div>
</div>

<center><a href="/catalogue/telephones-fixes.php"><< Retourner voir les autres produits</a></center>

</body>
</html>