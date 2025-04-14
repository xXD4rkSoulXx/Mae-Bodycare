<?php  
  $server = "localhost";
  $user = "root";
  $pass = "";
  $database = "mae_bodycare";
  
  $connection = new mysqli($server, $user, $pass, $database);
  
  if($connection->connect_error) {
    die("Erro na conexão: " . $connection->connect_error);
  }
?>