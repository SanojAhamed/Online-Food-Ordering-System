<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>Login</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
  <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

  <link rel="stylesheet" href="css/login.css">
  <style type="text/css">
    body {
      background-image: url("images/img/main12.jpg");
      background-attachment: fixed;
      background-size: cover;
      position: relative;
    }

    #buttn {
      color: #fff;
      background-color: #ff3300;
    }
  </style>

</head>

<body>
  <?php
  include("connection/connect.php");
  error_reporting(0);
  session_start();
  if (isset($_POST['submit'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    if (!empty($_POST["submit"])) {
      $loginquery = "SELECT * FROM users WHERE username='$username' && password='" . md5($password) . "'"; //selecting matching records
      $result = mysqli_query($db, $loginquery);
      $row = mysqli_fetch_array($result);

      if (is_array($row)) {
        $_SESSION["user_id"] = $row['u_id'];
        header("refresh:1;url=index.php");
      } else {
        $message = "Invalid Username or Password!";
      }
    }
  }
  ?>

  <div class="pen-title">
    <h1>Login Page</h1>
  </div>
  <div class="module form-module">
    <div class="toggle">
    </div>
    <div class="form">
      <h2>Login to your account</h2>
      <span style="color:red;"><?php echo $message; ?></span>
      <span style="color:green;"><?php echo $success; ?></span>
      <form action="" method="post">
        <input type="text" placeholder="Username" name="username" />
        <input type="password" placeholder="Password" name="password" />
        <input type="submit" id="buttn" name="submit" value="Login" />
      </form>
    </div>

    <div class="cta">Not registered?<a href="registration.php" style="color:#f30;"> Create an account</a></div>
  </div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

</body>

</html>