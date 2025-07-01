<?php
include 'db.php';
$id = $_GET['id'];
$conn->query("UPDATE reschedule_requests SET status='Approved' WHERE id=$id");
echo "Request approved.";
?>
