<?php
require_once('../includes/dbConnect.php');

		$nomCli     = htmlspecialchars($_POST['nom']);
        $prenCli    = htmlspecialchars($_POST['prenom']);
        $mailCli    = htmlspecialchars($_POST['email']);
        $mdpCli     = password_hash($_POST['pass'], PASSWORD_DEFAULT);
		$passconfirm    = htmlspecialchars($_POST['passconfirm']);
        $telCli     = htmlspecialchars($_POST['tel']);
        $fixeCli    = htmlspecialchars($_POST['telFixe']);
        $villeCli   = htmlspecialchars($_POST['ville']);
        $adresseCli = htmlspecialchars($_POST['adresse']);
        $cpCli      = htmlspecialchars($_POST['codePostal']);
        $sexeCli    = htmlspecialchars($_POST['sexe']);
        
        // Attribution du pseudo du client en minuscule
        $nomCli    = mb_strtolower($nomCli);
        $prenCli   = mb_strtolower($prenCli);
        $random    = rand(1, 999999);
        $pseudoCli = ($prenCli . "." . $nomCli . $random);
        
        // Fonction permettant d'obtenir la date du jour
        $today = date("y-m-d");
        
        // Switch du sexe
        if (isset($_POST['sexe'])) {
            $sexe = $_POST['sexe'];
            switch ($sexe) {
                case 'homme':
                    $sexe = 'homme';
                    break;
                
                case 'femme':
                    $sexe = 'femme';
                    break;
                
                case 'autre':
                    $sexe = 'autre';
                    break;
            }
        }

if (isset($_POST['nouveauClient'])); {
    
    // Valeurs qui doivent être obligatoirement remplies
    if (!empty($_POST['prenom']) AND !empty($_POST['nom']) AND !empty($_POST['email']) AND !empty($_POST['pass']) AND !empty($_POST['passconfirm']) AND !empty($_POST['codePostal']) AND !empty($_POST['ville']) AND !empty($_POST['adresse'])); {
		
		if ($_POST['pass'] != $_POST['passconfirm']) {
                    echo "<script>alert('Les mots de passes saisis sont différents, veuillez réessayer.');</script>";
                }
				
				else {
    
        
        // Préparation requête SQL
        $req = $pdo->prepare('INSERT INTO clients(prenCli, nomCli, mailCli, mdpCli, telCli, fixeCli, villeCli, adresseCli, cpCli, sexeCli) VALUES (:prenom, :nom, :email, :pass, :tel, :telFixe, :ville, :adresse, :codePostal, :sexe)');
        
        // Exécution requête dans un tableau
        $req->execute(array(
			':prenom' => $prenCli,
			':nom' => $nomCli,
            ':email' => $mailCli,
            ':pass' => $mdpCli,
            ':tel' => $telCli,
            ':telFixe' => $fixeCli,
            ':ville' => $villeCli,
            ':adresse' => $adresseCli,
            ':codePostal' => $cpCli,
            ':sexe' => $sexeCli
        ));
        
        // Stockage valeurs
        $resultat = $req->fetch();
        
		session_start();
		echo "Bien enregistré !";
		exit();

	} 
  }
}

?>