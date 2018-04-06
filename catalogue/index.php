<?php require '../inc/header.php'; ?>

<div id="sousMenuHaut">

	<div class="element-sousMenuHaut"><a href="mobiles.php" id="basLien">Mobiles</a> </div>

    <div class="element-sousMenuHaut"><a href="telephones-fixes.php" id="basLien">Téléphones fixes</a> </div>

    <div class="element-sousMenuHaut"><a href="accessoires.php" id="basLien">Accessoires</a> </div>
	

</div>

<div class="section-bloc-general">
<div class="section-titre"><span class="titre-section">Catalogue | </span><span class="texte-normal">Index</span></div>
<div class="section-bloc-contenu">
	<span class="texte-petit">
	Sur cette page retrouvez l'intégralité de notre catalogue spécialement élaboré pour vous.<br />
	Vous y trouverez des mobiles, des téléphones fixes et des accessoires pour vos appareils.
	</span>
</div>
</div>

<div id="conteneur">

            <div class="bloc2">
                <span class="TitreBloc2">Mobiles</span>
                <span class="blocTexte">Trouvez le mobile qui vous ressemble le plus et adoptez-le.</span>
                <div id="imgMobile"><img src="/img/mobile-mini.png"></div>
                <button class="button-catalogue" style="vertical-align:middle" onclick="javascript:location.href='mobiles.php'"><span>Voir les mobiles </span></button>
            </div>

            <div id="conteneur">

            <div class="bloc2">
                <span class="TitreBloc2">Téléphones fixes</span>
                <span class="blocTexte">Des téléphones sans fil simples, fonctionnels, légers et compacts.</span>
                <div id="imgFixe"><img src="/img/fixe-mini.png"></div>
                <button class="button-catalogue" style="vertical-align:middle" onclick="javascript:location.href='telephones-fixes.php'"><span>Voir les fixes </span></button>
            </div>

            <div class="bloc2">
                <span class="TitreBloc2">Accessoires</span>
                <span class="blocTexte">Personnalisez vos appareils avec une multitude d'accessoires adaptés.</span>
                <div id="imgFixe"><img src="/img/airpods-mini.png"></div>
                <button class="button-catalogue" style="vertical-align:middle" onclick="javascript:location.href='accessoires.php'"><span>Voir les accessoires </span></button>
            </div>

</div>




<?php require '../inc/footer.php'; ?>