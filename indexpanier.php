<?php require 'inc/header.php'; ?>

<?php
var_dump();
?>
    <body>

            <div id="bandeau-bloc-general">
                <?php $products = $DB->query('SELECT * FROM accessoires, box, fixes, forfaits, mobiles, offres');

                <div class="bandeau-bloc">
                    <span class="TitreBlocBandeau">Profitez de nos offres exceptionnelles.</span>
                    <button class="button2" style="vertical-align:middle" onclick="javascript:location.href='#'"><span>Découvrir </span></button>
                </div>

                <div class="bandeau-bloc-invisible">
                    <span class="iphoneXtexte">iPhone</span> <img src="/img/X.png">
                    <div id="iphoneXimage"><img src="/img/iphonex.png"></div>
                    <button class="button3" style="vertical-align:middle" onclick="javascript:location.href='#'"><span>à partir de 1€  </span></button>
                </div>

            </div>

        <div id="TitreAvConteneur">Nos offres</div>

        <div id="conteneur">

            <div class="bloc">
                <span class="TitreBloc">Mobiles</span>
                <span class="blocTexte">Trouvez le mobile qui vous ressemble le plus et adoptez-le.</span>
                <div id="imgMobile"><img src="/img/mobile-mini.png"></div>
                <button class="button-Mobiles" style="vertical-align:middle" onclick="javascript:location.href='#'"><span>Voir les mobiles </span></button>
            </div>

            <div class="bloc">
                <span class="TitreBloc">Forfaits avec mobiles</span>
                <span class="blocTexte">Un forfait <strong>complet</strong> adapté à vos besoins et un mobile à prix bon marché.</span>
                <div id="imgMobileForfait"><img src="/img/mobile-simcard-mini.png"></div>
                <button class="button-ForfaitMobile" style="vertical-align:middle" onclick="javascript:location.href='#'"><span>Forfaits avec mobile </span></button>
            </div>

            <div class="bloc">
                <span class="TitreBloc">Forfaits sans mobile</span>
                <span class="blocTexte">La liberté du <strong>sans engagement</strong> avec la <strong>qualité</strong> de service de Wolvenet.</span>
                <div id="imgSimcard"><img src="/img/simcard-mini.png"></div>
				<button class="button-Forfait" style="vertical-align:middle" onclick="javascript:location.href='#'"><span>Forfaits sans mobile </span></button>
            </div>

            <div class="bloc">
                <span class="TitreBloc">Offres internet</span>
                <span class="blocTexte">Box internet, Wi-Fi, Fibre optique, ADSL, 4G...</span>
                <div id="imgInternet"><img src="/img/internet-mini.png"></div>
				<button class="button-Internet" style="vertical-align:middle" onclick="javascript:location.href='#'"><span>Nos solutions </span></button>
            </div>

        </div>
		
		<div id="TitreAvConteneur">Bons plans du moment</div>
		
		<div id="conteneur">
		
            <div class="blocPromo">
                <span class="TitreBlocPromo">Spotify Premium</span>
                <span class="blocTexte">Écoutez votre titres favoris, découvrez les nouveautés et composez la playlist de vos rêves. </span>
                <div id="imgSpotify"><img src="/img/spotify-mini.png"></div>
                <button class="button-BonsPlans" style="vertical-align:middle" onclick="javascript:location.href='#'"><span>J'en profite </span></button>
            </div>
			
			<div class="blocPromo">
                <span class="TitreBlocPromo">Netflix</span>
                <span class="blocTexte">Regardez des films et des séries TV Netflix en ligne sur tous vos écrans. </span>
                <div id="imgNetflix"><img src="/img/netflix-mini.png"></div>
                <button class="button-BonsPlans" style="vertical-align:middle" onclick="javascript:location.href='#'"><span>J'en profite </span></button>
            </div>
			
			<div class="blocPromo">
                <span class="TitreBlocPromo">Cartes cadeaux Apple</span>
                <span class="blocTexte">Offrez des apps, des livres, de la musique, des séries et bien plus avec la Carte Cadeau App Store & iTunes. </span>
                <div id="imgItunes"><img src="/img/carteitunes.png"></div>
                <button class="button-BonsPlans" style="vertical-align:middle" onclick="javascript:location.href='#'"><span>J'en profite </span></button>
            </div>
			
		</div>

<?php require 'inc/footer.php'; ?>