<?php 

try
{

    $pdo = new PDO("mysql:host=localhost;dbname=wolvenetdb;charset=UTF8", 'root', '');

}

catch(Exception $e)

{

    echo 'Erreur : '.$e->getMessage().'<br />';

    echo 'N° : '.$e->getCode();

}

?>