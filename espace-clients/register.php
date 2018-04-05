<?php

require_once '../inc/functions.php';

session_start();

if(empty(!$_POST)){


    $errors = array();
    require_once '../inc/db.php';

    if(empty($_POST['nomdefamille']) || !preg_match('/^[a-zA-Z]+$/', $_POST['nomdefamille'])) {

        $errors['nomdefamille'] = "Le nom de famille saisi n'est pas valide.";
    }

    if(empty($_POST['prenom']) || !preg_match('/^[a-zA-Z]+$/', $_POST['prenom'])) {

        $errors['prenom'] = "Le prénom saisi n'est pas valide.";
    }

    if(empty($_POST['mail']) || !filter_var($_POST['mail'], FILTER_VALIDATE_EMAIL)){

        $errors['mail'] = "L'adresse e-mail saisie n'est pas valide.";

    } else {
        $req = $pdo->prepare('SELECT id FROM clients WHERE mailCli = ?');
        $req->execute([$_POST['mail']]);
        $mail = $req->fetch();

        if($mail){

            $errors['mail'] = "Cette adresse mail est déjà utilisée.";
        }
    }


    if(empty($_POST['password'])){

        $errors['password'] = "Le mot de passe saisi n'est pas valide";
    }

    if($_POST['password'] != $_POST['password_confirm']) {

        $errors['password'] = "Les deux mots de passes saisis sont différents.";
    }

    if(empty($_POST['adressepostale'])){

        $errors['adressepostale'] = "L'adresse postale saisie n'est pas valide. ";
    } else {
        $req = $pdo->prepare('SELECT id FROM clients WHERE adresseCli = ?');
        $req->execute([$_POST['adressepostale']]);
        $adressefound = $req->fetch();

        if($adressefound){

            $errors['adressepostale'] = "Cette adresse postale existe déjà.";
        }
    }

    $codepostal_length = strlen($_POST['codepostal']);

    if(empty($_POST['codepostal']) || !preg_match('/^[0-9]+$/', $_POST['codepostal']) || $codepostal_length != 5) {

        $errors['codepostal'] = "Le code postal saisi n'est pas valide.";
    }

    if(empty($_POST['ville'])){

        $errors['ville'] = "La ville saisie n'est pas valide. ";
    }

    $numportable_length = strlen($_POST['numportable']);

    if (preg_match('/^[a-zA-Z]+$/', $_POST['numportable']) || $numportable_length > 10) {

        $errors['numportable'] = "Le numéro de portable saisi n'est pas valide.";
    }

    $numfixe_length = strlen($_POST['numfixe']);

    if (preg_match('/^[a-zA-Z]+$/', $_POST['numfixe']) || $numfixe_length > 10) {

        $errors['numfixe'] = "Le numéro de téléphone fixe saisi n'est pas valide.";
    }

    if(empty($_POST['datenaissance'])){

        $errors['datenaissance'] = "Veuillez saisir une date de naissance complète.";
    }

    if(empty($_POST['sexe'])){

        $errors['sexe'] = "Le sexe saisi n'est pas valide.";
    }

    if (empty($errors)){
        $req = $pdo->prepare("INSERT INTO clients SET pseudoCli = ?, prenCli = ?, nomCli = ?, mailCli = ?, dateinscriptionCli = NOW(), mdpCli = ?, confirmation_token = ?, ipCli = ?, telCli = ?, fixeCli = ?, villeCli = ?, adresseCli = ?, cpCli = ?, sexeCli = ?");

        $prenom = ucfirst($_POST['prenom']);
        $nom = ucfirst($_POST['nomdefamille']);
        $password = password_hash($_POST['password'], PASSWORD_BCRYPT);
        $token = token(60);
        $pseudo = strtolower($_POST['nomdefamille']).".".strtolower($_POST['prenom']);

        $client_id = $pdo->lastInsertId(); // Dernier ID généré par PDO
        $req->execute([$pseudo, $prenom, $nom, $_POST['mail'], $password, $token, $_SERVER['REMOTE_ADDR'], $_POST['numportable'], $_POST['numfixe'], $_POST['ville'], $_POST['adressepostale'], $_POST['codepostal'], $_POST['sexe']]);

        

        echo("Votre compte a bien été créé. <br/> Voici votre lien : <br />  <a>http://localhost/espace_clients/confirm.php?id=$client_id&token=$token</a>");

        $_SESSION['flash']['succes'] = "Votre compte a bien été créé. Un mail de confirmation vous a été envoyé.";

        header('Location: login.php');

        exit();
    }

}

?>
<?php require '../inc/header.php'; ?>

<?php if (!empty($errors)): ?>

    <div class="form-error">
        <span class="form-error-title">Erreur dans le formulaire</span><br />
<ul>
    <?php foreach ($errors as $error): ?>
       <li><?= $error; ?></li>
    <?php endforeach; ?>
</ul>
</div>
<?php endif; ?>

<body>
<div id="sectionTitre"><span class="titreForm">Formulaire nouveau client Wolvenet</span></div>
<div id="section">

<form action="" method="POST">
	
	<div id="label1">
    <label for="nomdefamille">Votre nom de famille<span class="champ-obligatoire">*</span> : </label>
    <input type="text" name="nomdefamille" placeholder="Nom de famille" maxlength="100" /><br /><br />
    </div>

    <div id="label0">
    <label for="prenom">Votre prénom<span class="champ-obligatoire">*</span> : </label>
    <input type="text" name="prenom" placeholder="Prénom" maxlength="100" /><br /><br />
    </div>

    <div id="label1">
    <label for="email">Votre adresse e-mail<span class="champ-obligatoire">*</span> : </label>
    <input type="text" name="mail" placeholder="Adresse e-mail" maxlength="100" /><br /><br />
	</div>
	
	<div id="label0">
    <label for="mdp">Votre mot de passe<span class="champ-obligatoire">*</span> : </label>
    <input type="password" name="password" placeholder="Mot de passe" maxlength="256"/><br /><br />
	</div>
	
	<div id="label1">
    <label for="mdpconfirm">Confirmez votre mot de passe<span class="champ-obligatoire">*</span> : </label>
    <input type="password" name="password_confirm"  placeholder="Retapez votre mot de passe" maxlength="256"/><br /><br />
	</div>

    <div id="label0">
    <label for="telephone">Votre numéro de téléphone : </label>
    <input type="tel" name="numportable" placeholder="Numéro de téléphone" maxlength="10" /><br /><br />
    </div>

    <div id="label1">
    <label for="telephonefixe">Votre numéro de téléphone fixe : </label>
    <input type="tel" name="numfixe" placeholder="Numéro de fixe" maxlength="10"/><br /><br />
    </div>

    <div id="label0">
    <label for="adresse">Votre adresse postale<span class="champ-obligatoire">*</span> : </label>
    <input type="text" name="adressepostale" placeholder="Adresse postale"/><br /><br />
    </div>

    <div id="label1">
    <label for="cp">Votre code postal<span class="champ-obligatoire">*</span> : </label>
    <input type="text" name="codepostal" placeholder="Code postal" maxlength="5"/><br /><br />
    </div>

    <div id="label0">
    <label for="ville">Votre ville<span class="champ-obligatoire">*</span> : </label>
    <input type="text" name="ville" placeholder="Ville" maxlength="100"/><br /><br />
    </div>

    <div id="label1">
    <label for="datenaissance">Votre date de naissance<span class="champ-obligatoire">*</span> : </label>
    <input type="date" name="datenaissance"/><br /><br />
    </div>

    <div id="label0">
    <label for="sexe">Vous êtes<span class="champ-obligatoire">*</span> : </label>
    <select name="sexe">

           <option value="homme">Un homme</option>

           <option value="femme">Une femme</option>

           <option value="autre">Autre</option>
    </select>
    </div>


    <br /><button class="button-submit" type="submit"><span>Envoyer </span></button><br />
    <span class="champ-obligatoire-tip">* : Champs obligatoires</span>
</form>


<?php require '../inc/footer.php'; ?>
