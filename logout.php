<?php
// Incia a sessão
session_start();
include 'config.php';
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
// Unset all of the session variables
$_SESSION = array();
// termina a sessão
session_destroy();
// redireciona para a pagina de login
header("location: login.php");
exit;
?>