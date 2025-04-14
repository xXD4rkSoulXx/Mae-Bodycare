<?php
  include "connection.php";
  
  if(isset($_POST["name"])) {
	$name = $_POST["name"];
    $email = $_POST["email"];
    $phoneNumber = $_POST["phoneNumber"];
    $mensage = $_POST["mensage"];
    
    $query = $connection->prepare("INSERT INTO contacts VALUES (NULL, ?, ?, ?, ?);");
    $query->bind_param("ssis", $name, $email, $phoneNumber, $mensage);
    $query->execute();
  }
  
  $query = "SELECT * FROM contacts;";
  $result = $connection->query($query);
  
  if($result->num_rows > 0) {
    while($data = $result->fetch_assoc()) {
      echo "id: " . htmlspecialchars($data["idcontact"]) .
	       "<br> Nome: " . htmlspecialchars($data["name"]) .
		   "<br> Email: " . htmlspecialchars($data["email"]) .
		   "<br> Telefone: " . htmlspecialchars($data["phoneNumber"]) .
		   "<br> Mensagem: " . htmlspecialchars($data["mensage"]) .
		   "<br><br>";
    }
  } else {
    echo "Não existem mensagens!";
  }
  
  $connection->close();
?>