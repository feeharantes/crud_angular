<?php 
require_once 'database_connections.php';
$data = json_decode(file_get_contents("php://input")); 
$name = mysqli_real_escape_string($con, $data->name);
$query = "INSERT into tarefa (tarefa_nome) VALUES ('$name')";
mysqli_query($con, $query);
echo true;
?>