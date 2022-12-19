<?php

$host = 'localhost';
$db = 'festival';
$user = 'root';
$password = '';
$charset = 'utf8mb4';
$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$pdo = new PDO($dsn, $user, $password);
$stmt = $pdo->query('SELECT * FROM fest');
while ($row = $stmt->fetch()) {
    $manage = null;
    $naam = 'fest ' . $row['id'];
    $manage[$naam][] = array(
    'spreker' => $row['spreker'],
    'begin tijd' => $row['begintijd'],
    'eind tijd' => $row['eindtijd'],
    'zaal' => $row['zaal'],
    'capaciteit' => $row['capaciteit']
    );
    $manage = json_encode($manage, true);
    print $manage . '<br>';
}

?>