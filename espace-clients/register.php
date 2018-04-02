<?php

require_once '../inc/functions.php';

session_start();

if(empty(!$_POST)){


    $errors = array();
    require_once '../inc/db.php';

    if(empty($_POST['nomdefamille']) || !preg_match('/^[a-zA-Z]+$/', $_POST['nomdefamille'])) {

        $errors['nomdefamille'] = "Erreur lors de la saisie de votre nom de famille.";
    }

    if(empty($_POST['prenom']) || !preg_match('/^[a-zA-Z]+$/', $_POST['prenom'])) {

        $errors['prenom'] = "Erreur lors de la saisie de votre prénom.";
    }

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


    if(empty($_POST['password'])){

        $errors['password'] = "Le mot de passe n'est pas valide";
    }

    if($_POST['password'] != $_POST['password_confirm']) {

        $errors['password'] = "Les deux mots de passes saisis sont différents.";
    }

    if(empty($_POST['adressepostale'])){

        $errors['adressepostale'] = "Vous n'avez pas saisi d'adresse postale ! ";
    } else {
        $req = $pdo->prepare('SELECT id FROM clients WHERE adresseCli = ?');
        $req->execute([$_POST['adressepostale']]);
        $adressefound = $req->fetch();

        if($adressefound){

            $errors['adressepostale'] = "Cette adresse postale a déjà été saisie par quelq'un auparavant.";
        }
    }

    if(empty($_POST['codepostal'])){

        $errors['codepostal'] = "Vous n'avez pas saisi de code postal ! ";
    }

    if(empty($_POST['ville'])){

        $errors['ville'] = "Vous n'avez pas saisi votre ville. ";
    }

    if(empty($_POST['datenaissance'])){

        $errors['datenaissance'] = "Vous n'avez pas saisi votre date de naissance. ";
    }

    if(empty($_POST['sexe'])){

        $errors['sexe'] = "Vous n'avez pas indiqué votre sexe. ";
    }

    if (empty($errors)){
        $req = $pdo->prepare("INSERT INTO clients SET prenCli = ?, nomCli = ?, mailCli = ?, dateinscriptionCli = NOW(), mdpCli = ?, confirmation_token = ?, ipCli = ?, telCli = ?, fixeCli = ?, villeCli = ?, adresseCli = ?, cpCli = ?, sexeCli = ?");

        $password = password_hash($_POST['password'], PASSWORD_BCRYPT);
        $token = token(60);

        $req->execute([$_POST['prenom'], $_POST['nomdefamille'], $_POST['mail'], $password, $token, $_SERVER['REMOTE_ADDR'], $_POST['numportable'], $_POST['numfixe'], $_POST['ville'], $_POST['adressepostale'], $_POST['codepostal'], $_POST['sexe']]);

        $client_id = $pdo->lastInsertId(); // Dernier ID généré par PDO

        echo("Votre compte a bien été créé. <br/> Voici votre lien : <br />  <a>http://localhost/espace_clients/confirm.php?id=$client_id&token=$token</a>");

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

<body>
<div id="sectionTitre"><span class="titreForm">S'inscrire</span></div>
<div id="section">

<form action="" method="POST">
	
	<div id="label1">
    <label for="nomdefamille">Votre nom de famille : </label>
    <input type="text" name="nomdefamille" placeholder="Nom de famille" maxlength="100" /><br /><br />
    </div>

    <div id="label0">
    <label for="prenom">Votre prénom : </label>
    <input type="text" name="prenom" placeholder="Prénom" maxlength="100" /><br /><br />
    </div>

    <div id="label1">
    <label for="email">Votre adresse e-mail : </label>
    <input type="text" name="mail" placeholder="Adresse e-mail" maxlength="100" /><br /><br />
	</div>
	
	<div id="label0">
    <label for="mdp">Votre mot de passe : </label>
    <input type="password" name="password" placeholder="Mot de passe" maxlength="256"/><br /><br />
	</div>
	
	<div id="label1">
    <label for="mdpconfirm">Confirmez votre mot de passe : </label>
    <input type="password" name="password_confirm"  placeholder="Retapez votre mot de passe" maxlength="256"/><br /><br />
	</div>

    <div id="label0">
    <label for="telephone">Votre numéro de téléphone : </label>
    <input type="text" name="numportable" placeholder="Numéro de téléphone" maxlength="10" /><br /><br />
    </div>

    <div id="label1">
    <label for="telephonefixe">Votre numéro de téléphone fixe : </label>
    <input type="text" name="numfixe" placeholder="Numéro de fixe" maxlength="10"/><br /><br />
    </div>

    <div id="label0">
    <label for="adresse">Votre adresse postale : </label>
    <input type="text" name="adressepostale" placeholder="Adresse postale"/><br /><br />
    </div>

    <div id="label1">
    <label for="cp">Votre code postal : </label>
    <input type="text" name="codepostal" placeholder="Code postal" maxlength="5"/><br /><br />
    </div>

    <div id="label0">
    <label for="ville">Votre ville : </label>
    <input type="text" name="ville" placeholder="Ville" maxlength="100"/><br /><br />
    </div>

    <div id="label1">
    <label for="datenaissance">Votre date de naissance : </label>
    <input type="date" name="datenaissance"/><br /><br />
    </div>

    <div id="label0">
    <label for="sexe">Vous êtes : </label>
    <select name="sexe">

           <option value="homme">Homme</option>

           <option value="femme">Femme</option>

           <option value="autre">Autre</option>
    </select>
    </div>


    <br /><button type="submit">Envoyer</button>
</form>


<?php require '../inc/footer.php'; ?>
