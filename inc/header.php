<?php

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Wolvenet France || Internet, Téléphonie, Mobiles, Forfaits</title>
	<link rel="stylesheet" type="text/css" href="../styles/styleMerwann.css">
	<link rel="stylesheet" type="text/css" href="../styles/slideshow.css">
	<link rel="stylesheet" type="text/css" href="../e/e.css">
	
	<link rel="shortcut icon" type="image/x-png" href="../img/favicon.png" />
	<!--[if IE]><link rel="shortcut icon" type="image/x-icon" href="../img/favicon.ico" /><![endif]-->
</head>

<div id="menuHaut">

    <div class="element-logo"><a href="/"><img src="/img/wolf-mini.png"></a></div>
	<div class="element-logo2"><img src="/img/logoecrit-mini.png"></div>
	
	<div class="element-menuHaut"><a id="styled" href="/catalogue/">Catalogue</a></div>

    <div class="element-menuHaut"><a id="styled" href="/offres-aux-particuliers/">Offres aux particuliers</a></div>

    <div class="element-menuHaut"><a id="styled" href="/offres-aux-entreprises/">Réseau d'entreprise</a></div>

    <div class="element-menuHaut"><a id="styled" href="/assistance/">Assistance</a></div>

    <div class="element-menuHaut"><a id="styled" href="/about.html">À propos</a></div>

    <div class="element-menuHaut"><a id="styled" href="/catalogue/panier.php">Panier</a></div>
	

	<?php if(isset($_SESSION['auth'])): ?>

		<div class="element-sousMenuHaut"><button class="button" style="vertical-align:middle" onclick="javascript:location.href='/espace-clients/account.php'"><span>Mon espace </span></button></div>

		<div class="element-sousMenuHaut"><button class="button-deco" style="vertical-align:middle" onclick="javascript:location.href='/espace-clients/logout.php'"><span>Déconnexion </span></button></div>

	<?php else: ?>
		<div class="element-sousMenuHaut"><button class="button" style="vertical-align:middle" onclick="javascript:location.href='/espace-clients/login.php'"><span>Connexion espace clients </span></button></div>

		<div class="element-sousMenuHaut"><button class="button-deco" style="vertical-align:middle" onclick="javascript:location.href='/espace-clients/register.php'"><span>Inscription </span></button></div>

	<?php endif; ?>
</div>

<?php if(isset($_SESSION['flash'])): ?>
    <?php foreach ($_SESSION['flash'] as $type => $message): ?>
        <div class="alert-<?= $type; ?>">
            <?= $message; ?>
        </div>
    <?php endforeach; ?>
    <?php unset($_SESSION['flash']); ?>
<?php endif; ?>
