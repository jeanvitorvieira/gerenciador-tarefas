<?php
$host = 'localhost';
$db   = 'gerenciador_tarefas';
$user = 'root';
$pass = 'test';

$pdo = new PDO("mysql:host=$host;dbname=$db;charset=utf8mb4", $user, $pass);

$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

return $pdo;