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
$stmt = $pdo->query('SELECT * FROM blokkenschema');
while ($row = $stmt->fetch()) {
    $manage = null;
    $starttijd = null;
    $eindtijd = null;
    $starttijden = explode(":", $row['Start_tijd']);
    $eindtijden = explode(":", $row['Eind_tijd']);
    $startu = $starttijden[0];
    $startm = $starttijden[1];
    $eindu = $eindtijden[0];
    $eindm = $eindtijden[1];
    $naam = 'room' . $row['id'];
    $starttijd['start'] = array(
        'u' => $startu,
        'm' => $startm
    );
    $eindtijd['eind'] = array(
        'u' => $eindu,
        'm' => $eindm
    );
    $tijden['time'] = array(
        $starttijden,
        $eindtijden
    );
    $manage[$naam][] = array(
    'title' => $row['Workshop_naam'],
    'spreaker' => $row['Spreker'],
    'time' => $starttijd + $eindtijd,
    'room' => $row['Ruimte'],
    'capacity' => $row['Capaciteit']
    );
    $manage = json_encode($manage, true);
    print $manage . '<br>';
}

?>
