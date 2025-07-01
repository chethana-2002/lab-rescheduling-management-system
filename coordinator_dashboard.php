<?php include 'db.php'; ?>
<h2>Coordinator Dashboard</h2>
<table border="1">
<tr><th>ID</th><th>Student</th><th>Lab</th><th>Date</th><th>Forward</th></tr>
<?php
$res = $conn->query("SELECT * FROM reschedule_requests WHERE forwarded_to_instructor = 0");
while ($r = $res->fetch_assoc()) {
  echo "<tr>
    <td>{$r['id']}</td>
    <td>{$r['student_id']}</td>
    <td>{$r['lab_id']}</td>
    <td>{$r['new_date']}</td>
    <td><a href='forward.php?id={$r['id']}'>Forward</a></td>
  </tr>";
}
?>
</table>
