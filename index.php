<?php include 'db.php'; ?>
<!DOCTYPE html>
<html>
<head>
  <title>University of Jaffna - Lab Reschedule</title>
  <style>
    body {
      margin: 0;
      font-family: Arial;
      background-image: url('images/uoj_bg.jpg');
      background-size: cover;
      background-position: center;
      color: white;
      text-align: center;
    }
    .header {
      background: rgba(0,0,0,0.7);
      padding: 30px;
    }
    .header h1 {
      margin: 0;
      color: #f2c649;
    }
    .buttons {
      margin-top: 100px;
    }
    .btn {
      padding: 15px 30px;
      margin: 20px;
      font-size: 18px;
      background: #f2c649;
      border: none;
      border-radius: 8px;
      color: black;
      cursor: pointer;
    }
  </style>
</head>
<body>
  <div class="header">
    <h1>University of Jaffna - Lab Reschedule System</h1>
  </div>

  <div class="buttons">
    <a href="student.php"><button class="btn">Student</button></a>
    <a href="coordinator_login.php"><button class="btn">Coordinator</button></a>
    <a href="instructor_dashboard.php"><button class="btn">Instructor</button></a>
  </div>
</body>
</html>
