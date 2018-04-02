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
	<link rel="stylesheet" type="text/css" href="../styles/guest.css">
	<link rel="stylesheet" type="text/css" href="../styles/form.css">
	<link rel="stylesheet" type="text/css" href="../styles/index.css">
	<link rel="stylesheet" type="text/css" href="../e/e.css">
	<link rel="icon" type="image/png" href="../img/favicon.png" />
	<!--[if IE]><link rel="shortcut icon" type="image/x-icon" href="../img/favicon.ico" /><![endif]-->
</head>

<div id="menuHaut">

    <div class="element-logo"><a href="/"><img src="/img/wolf-mini.png"></a></div>
	<div class="element-logo2"><img src="/img/logoecrit-mini.png"></div>
	
	<div class="element-menuHaut"><a href="/catalogue/">Catalogue</a></div>

    <div class="element-menuHaut"><a href="/offres-aux-particuliers/">Offres aux particuliers</a></div>

    <div class="element-menuHaut"><a href="/offres-aux-entreprises/">Réseau d'entreprise</a></div>

    <div class="element-menuHaut"><a href="/assistance/">Assistance</a></div>
	<div class="element-sousMenuHaut"><button class="button" style="vertical-align:middle" onclick="javascript:location.href='/espace-clients/'"><span>Espace clients </span></button></div>

</div>

<?php if(isset($_SESSION['flash'])): ?>
    <?php foreach ($_SESSION['flash'] as $type => $message): ?>
        <div class="alert-<?= $type; ?>">
            <?= $message; ?>
        </div>
    <?php endforeach; ?>
    <?php unset($_SESSION['flash']); ?>
<?php endif; ?>
