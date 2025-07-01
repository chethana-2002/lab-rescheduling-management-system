<?php
$host = "localhost";
$user = "root";
$password = ""; // leave empty unless you set one
$dbname = "2022e173_LabRescheduleSystem";

$conn = new mysqli($host, $user, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
