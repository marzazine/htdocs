 <?php

if (session_status() == PHP_SESSION_NONE) {
    
    session_start();
    
}

if (!isset($_SESSION['auth'])) {
    
    header('Location: login.php');
    
    exit();
    
} else {
    
    header('Location: account.php');
    
}