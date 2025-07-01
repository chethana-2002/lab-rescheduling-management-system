<?php
include 'db.php';

$student_id = $_POST['student_id'];
$lab_id = $_POST['lab_id'];
$new_date = $_POST['new_date'];
$reason = $_POST['reason'];

$filename = $_FILES['letter']['name'];
$filepath = "uploads/" . basename($filename);
move_uploaded_file($_FILES['letter']['tmp_name'], $filepath);

$sql = "INSERT INTO reschedule_requests (student_id, lab_id, new_date, reason, approval_letter)
VALUES ('$student_id', '$lab_id', '$new_date', '$reason', '$filename')";

if ($conn->query($sql)) {
    echo "Request submitted successfully!";
} else {
    echo "Error: " . $conn->error;
}
?>
