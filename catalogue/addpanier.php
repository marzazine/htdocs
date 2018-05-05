<?php
require '../inc/_header.php';

if(isset($_GET['id'])){

	$product = $DB->query('SELECT id FROM catalogue WHERE id = :id', array('id' => $_GET['id']));

	if(empty($product)){

	$_SESSION['flash-bloc']['error'] = "Ce produit n'existe pas.";
	header ('Location: /catalogue/');
	exit();

	}

	$panier->add($product[0]->id);
	$_SESSION['flash-bloc']['success'] = "Votre produit a bien été ajouté à votre panier.";
	header("Location: /catalogue/");
	exit();

} else {

	 $_SESSION['flash-bloc']['error'] = "Paramètre vide";
	 header ('Location: /catalogue');
	 exit();

}