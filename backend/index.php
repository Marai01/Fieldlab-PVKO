<?php

// Allow from any origin
if (isset($_SERVER['HTTP_ORIGIN'])) {
    // should do a check here to match $_SERVER['HTTP_ORIGIN'] to a
    // whitelist of safe domains
    header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Max-Age: 86400');    // cache for 1 day
}
// Access-Control headers are received during OPTIONS requests
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {

    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))
        header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");         

    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
        header("Access-Control-Allow-Headers: {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");

}

$json = null;
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
    // $manage = json_encode($manage, true);
    $json[] = $manage;
}
print json_encode($json, true);
?>