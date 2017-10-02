<?php 
require_once 'database_connections.php';
$data = json_decode(file_get_contents("php://input")); 
$id = mysqli_real_escape_string($con, $data->id);
$name = mysqli_real_escape_string($con, $data->name);
$query = "UPDATE tarefa SET tarefa_nome='$name' WHERE tarefa_id=$id";
mysqli_query($con, $query);
echo true;
?>