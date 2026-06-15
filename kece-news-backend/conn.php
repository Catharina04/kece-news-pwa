<?php
    // 1. Deklarasikan Header CORS yang lengkap
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
    header("Content-Type: application/json; charset=UTF-8");

    // 2. Tangkap Preflight Request (OPTIONS) dari browser/Angular
    if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
        http_response_code(200);
        exit(); // Hentikan script di sini agar tidak lanjut eksekusi query
    }

    // 3. Konfigurasi Database Localhost
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "kece-news";

    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        die(json_encode(["result" => "error", "message" => "Connection failed: " . $conn->connect_error]));
    }
?>