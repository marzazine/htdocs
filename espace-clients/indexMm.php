<?php
include '../includes/topMathias.php';
?>

<body>
<div id="sectionTitre"><span class="titreForm">Espace client</span></div>
<div id="section">

<form method="post" action="login.php">
       <div id="label"><label for="email">Votre adresse e-mail : </label><input type="email" name="email" id="email" required /><br /><br /></div>
	   <div id="label"><label for="pass">Votre mot de passe : </label><input type="password" name="pass" id="pass" required /><br /></div>
	   
	   <div class="boutonEnvoyer"><input type="submit" value="Envoyer" /></div>
	   
	   <span class="noGuest">Pas encore client chez nous ? <a href="register.php">Inscrivez vous</a> !</span><br />
	   <span class="forgotPass"><a href="passwordrecup">Mot de passe oublié ?</a></span>
</form>

</div>

</body>