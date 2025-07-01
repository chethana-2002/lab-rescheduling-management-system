<?php
include 'db.php';
$id = $_GET['id'];
$conn->query("UPDATE reschedule_requests SET forwarded_to_instructor=1 WHERE id=$id");
echo "Request forwarded to instructor.";
?>
