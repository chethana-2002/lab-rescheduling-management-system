<?php include 'db.php'; ?>
<h2>Instructor Dashboard</h2>
<table border="1">
<tr><th>ID</th><th>Student</th><th>Lab</th><th>Date</th><th>Action</th></tr>
<?php
$res = $conn->query("SELECT * FROM reschedule_requests WHERE forwarded_to_instructor=1 AND status='Pending'");
while ($r = $res->fetch_assoc()) {
  echo "<tr>
    <td>{$r['id']}</td>
    <td>{$r['student_id']}</td>
    <td>{$r['lab_id']}</td>
    <td>{$r['new_date']}</td>
    <td>
      <a href='approve.php?id={$r['id']}'>Approve</a> |
      <a href='reject.php?id={$r['id']}'>Reject</a>
    </td>
  </tr>";
}
?>
</table>
