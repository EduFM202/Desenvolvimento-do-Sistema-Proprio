<?php
$servername = "localhost";
$username   = "root";
$password   = "Senai@118";
$dbname     = "sistema_animes";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}

$conn->set_charset("utf8mb4");

// cria a pasta img com todas as permissões
if (!file_exists("img")) {
    mkdir("img", 0777, true);
}