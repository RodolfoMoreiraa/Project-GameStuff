<?php

@include 'config.php';

session_start();

if(!isset($_SESSION['admin_name'])){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Administrador</title>
   <link rel="stylesheet" href="css/style_login.css">

</head>
<body>
   
<div class="container">

   <div class="content">
      <h3>Bem-vindo, <span>Administrador</span></h3>
      <h1>welcome <span><?php echo $_SESSION['admin_name'] ?></span></h1>
      <p>this is an admin page</p>
      <a href="cart.html" class="btn">Login</a>
      <a href="site.html" class="btn">Logout</a>
   </div>

</div>

</body>
</html>