<?php
require '../inc/_header.php';

if(isset($_GET['id'])){

	$product = $DB->query('SELECT id FROM mobiles WHERE id = :id', array('id' => $_GET['id']));

	if(empty($product)){

	$_SESSION['flash-bloc']['error'] = "Ce produit n'existe pas.";
	header ('Location: /catalogue/');
	exit();

	}

	$panier->add($product[0]->id);
	$_SESSION['flash-bloc']['success'] = "Produit ajouté au panier !";
	header("Location: /catalogue/");
	exit();

} else {

	 $_SESSION['flash-bloc']['error'] = "Paramètre vide";
	 header ('Location: /catalogue');
	 exit();

}