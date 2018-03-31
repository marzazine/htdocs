<?php 

try
{

    $pdo = new PDO('mysql:host=localhost;dbname=wolvenetdb', 'root', '');

}

catch(Exception $e)

{

    echo 'Erreur : '.$e->getMessage().'<br />';

    echo 'N° : '.$e->getCode();

}

?>