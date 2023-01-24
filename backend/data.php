<?php

// Allow from any origin
if (isset($_SERVER['HTTP_ORIGIN'])) {
    // should do a check here to match $_SERVER['HTTP_ORIGIN'] to a
    // whitelist of safe domains
    header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Max-Age: 86400'); // cache for 1 day
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
$db = 'deb77629n3_pvko';
$user = 'root';
$password = '';
$charset = 'utf8mb4';
$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$pdo = new PDO($dsn, $user, $password);
$stmt = $pdo->query('SELECT * FROM blokkenschema');
$firstLoop = true;
while ($row = $stmt->fetch()) {
    // print_r($row['Workshop_naam']);
    // echo "<br/>";
    $manage = null;
    $starttijd = null;
    $eindtijd = null;
    $starttijden = explode(":", $row['Start_tijd']);
    $eindtijden = explode(":", $row['Eind_tijd']);
    $session = $row['session'];
    $zaal = $row['zaal'];
    $startu = $starttijden[0];
    $startm = $starttijden[1];
    $eindu = $eindtijden[0];
    $eindm = $eindtijden[1];
    $naam = 'Zaal ' . $row['zaal'];
    $tijden = [
        'start' => [
            'h' => $startu,
            'm' => $startm
        ],
        'end' => [
            'h' => $eindu,
            'm' => $eindm
        ]
    ];
    $event = [
        'title' => $row['Workshop_naam'],
        'spreaker' => $row['Spreker'],
        'time' => $tijden,
        // 'room' => $row['Ruimte'],
        // 'capacity' => $row['Capaciteit'],
        // 'description' => "foliostkra",
        'description' => $row['url_programma'],
        'zaal' => $zaal,
        'session' => $session
    ];
    if ($firstLoop == true) {
        # code...
    }
    $data[$row['zaal']]['events'] = $data[$row['zaal']]['events'] ?? [];
    $data[$row['zaal']] = [
        'events' => [...$data[$row['zaal']]['events'], $event],
        "title" => $naam
    ];
    // $manage = null;
    // $starttijd = null;
    // $eindtijd = null;
    // $starttijden = explode(":", $row['Start_tijd']);
    // $eindtijden = explode(":", $row['Eind_tijd']);
    // $startu = $starttijden[0];
    // $startm = $starttijden[1];
    // $eindu = $eindtijden[0];
    // $eindm = $eindtijden[1];

    // $starttijd['start'] = array(
    //     'h' => $startu,
    //     'm' => $startm
    // );
    // $eindtijd['eind'] = array(
    //     'h' => $eindu,
    //     'm' => $eindm
    // );
    // $tijden = [
    //     'start' => [
    //         'h' => $startu,
    //         'm' => $startm
    //     ],
    //     'end' => [
    //         'h' => $eindu,
    //         'm' => $eindm
    //     ]
    // ];
    // $manage["events"][] = [
    //     'title' => $row['Workshop_naam'],
    //     'spreaker' => $row['Spreker'],
    //     'time' => $tijden,
    //     // 'room' => $row['Ruimte'],
    //     // 'capacity' => $row['Capaciteit'],
    //     // 'description' => "foliostkra",
    //     'description' => $naam
    // ];
    // $manage["title"] = $naam;
    // $data[] = $manage;
}

echo json_encode($data)

    ?>