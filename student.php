<?php include 'db.php'; ?>
<h2>Student Lab Rescheduling Request</h2>
<form action="submit_request.php" method="POST" enctype="multipart/form-data">
  Student ID: <input type="number" name="student_id" required><br><br>
  Select Lab:
  <select name="lab_id">
    <?php
      $labs = $conn->query("SELECT * FROM lab");
      while ($row = $labs->fetch_assoc()) {
        echo "<option value='{$row['id']}'>{$row['name']}</option>";
      }
    ?>
  </select><br><br>
  New Date: <input type="date" name="new_date" required><br><br>
  Reason: <textarea name="reason" required></textarea><br><br>
  Upload Approval Letter: <input type="file" name="letter" required><br><br>
  <input type="submit" value="Submit Request">
</form>
