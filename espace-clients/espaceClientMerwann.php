<?php
require_once('../includes/top.php');
require_once('../includes/dbConnect.php');

header('Content-type: text/html; charset=UTF-8');
 
if(isset($_POST) and !empty($_POST['pass']) and !empty($_POST['email'])){
 
 
$email = ($_POST['email']);
$pass = ($_POST['pass']);
 
// Vérification des identifiants
$req = $pdo->prepare('SELECT * FROM clients WHERE mailCli = :email AND mdpCli = :mdp');
$req->execute(array(
    ':email' => $email,
    ':mdp' => $pass));
 
$resultat = $req->fetch();
 
if (!$resultat)
{
    echo '<body onLoad="alert(\'Membre non reconnu...\')">';
}
else
{
    session_start();
    $_SESSION['email'] = $email;
    echo 'Vous êtes connecté !';
 
}
}
else {
echo '<body onLoad="alert(\'Les champs email et Mot de passe doivent être remplis\')">';
}
 
?>