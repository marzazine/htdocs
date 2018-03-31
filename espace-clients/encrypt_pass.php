<?php
echo '<form method="GET">';
echo '	<label for="pass">Mot de passe à encrypter : </label><input type="text" name="pass" id="pass" required autofocus /><br /><br />';
echo '</form>';

if(isset($_GET) and !empty($_GET['pass']) and !empty($_GET['pass'])){

$mdp = ($_GET['pass']);

$pass_encrypted = password_hash('"'.$mdp.'"', PASSWORD_DEFAULT);

echo ("Mot de passe à encrypter : '".$mdp."' <br />");
echo ("Mot de passe encrypté :  '".$pass_encrypted."'<br />");

}

else {
	echo "Mot de passe non renseigné<br /><br />";
}

$nom = "Ayed";
$prenom = "Merwann";

$nom = mb_strtolower($nom);
$prenom = mb_strtolower($prenom);

$random = rand(1, 999999);
$pseudoCli = ($prenom.".".$nom.$random);

echo ($pseudoCli);

?>