<?php 
session_destroy();
unset($_SESSION["id"]);
unset($_SESSION["nom"]);
unset($_SESSION["role"]);
header('Location:index.php');
 ?>