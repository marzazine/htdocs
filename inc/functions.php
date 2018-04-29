<?php

function debug($variable){
    echo '<li>' . print_r($variable, true) . '</li>';
}

function token($length) {
    $strcontent = "0123456789azertyuiopqsdfghjklmwxcvbnAZERTYUIOPQSDFGHJKLMWXCVBN";
    return substr(str_shuffle(str_repeat($strcontent, $length)), 0, $length);
}

function logged_only() {

		if (session_status() == PHP_SESSION_NONE) {

   		 session_start();

		}

		if(!isset($_SESSION['auth'])) {

		$_SESSION['flash']['danger'] = "Vous devez être connecté pour pouvoir accéder à cette page.";
		header('Location: ../index.php');
		exit();

	}

}
