<?php

require_once '../inc/functions.php';

session_start();

if(empty(!$_POST)){


    $errors = array();
    require_once '../inc/db.php';


    if(empty($_POST['mail']) || !filter_var($_POST['mail'], FILTER_VALIDATE_EMAIL)){

        $errors['mail'] = "L'adresse mail n'est pas valide.";
    } else {
        $req = $pdo->prepare('SELECT id FROM clients WHERE mailCli = ?');
        $req->execute([$_POST['mail']]);
        $mail = $req->fetch();

        if($mail){
            $errors['mail'] = "Cette adresse mail est déjà utilisée.";
        }
    }


    if(empty($_POST['password']) || $_POST['password'] != $_POST['password_confirm']){

        $errors['password'] = "Le mot de passe n'est pas valide";
    }


    if (empty($errors)){
        $req = $pdo->prepare("INSERT INTO clients SET mailCli = ?, mdpCli = ?, dateinscriptionCli = NOW(), confirmation_token = ?, adresse_ipCli = ?");
        $password = password_hash($_POST['password'], PASSWORD_BCRYPT);
        $token = token(60);
        $ip = $_SERVER['REMOTE_ADDR']; // On récupère l'adresse ip

        $req->execute([$_POST['mail'], $password, $token, $ip]);

        $client_id = $pdo->lastInsertId(); // Dernier ID généré par PDO

        echo("Votre compte a bien été créé. <br/> Voici votre lien : <br />  http://localhost/espace_clients/confirm.php?id=$client_id&token=$token");

        $_SESSION['flash']['succes'] = "Votre compte a bien été créé.";

        exit();
    }

}

?>
<?php require '../inc/header.php'; ?>

<?php if (!empty($errors)): ?>

    <p>Erreur dans le formulaire</p>
<ul>
    <?php foreach ($errors as $error): ?>
        <li><?= $error; ?></li>
    <?php endforeach; ?>
</ul>

<?php endif; ?>

<h1>S'inscrire</h1>

<form action="" method="POST">

    <label for="">Votre adresse mail : </label>
    <input type="text" name="mail" /><br /><br />

    <label for="">Votre mot de passe : </label>
    <input type="password" name="password" /><br /><br />

    <label for="">Confirmez votre mot de passe : </label>
    <input type="password" name="password_confirm" /><br /><br />


    <br /><button type="submit">Envoyer</button>
</form>


<?php require '../inc/footer.php'; ?>
