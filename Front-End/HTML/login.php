<?php

$login = false;
$showError = false;
if ($_SERVER["REQUEST_METHOD"] == "POST") 
{
    include '..\..\Back-End\_dbconnect.php';
    include 'hash.php';
    $username = $_POST["username"];
    $password = $_POST["password"];
    
        $sql = "Select * from user where username='$username'";
        $result = mysqli_query($conn, $sql);
        $user = mysqli_fetch_row($result);
        echo $user[4];
        echo $password;
        echo Hash::verify($password, $user[4]);
        // if (Hash::verify($password,$user[4])){
          if($password==$user[4]){
          $login = true;
          session_start();
            $row = mysqli_fetch_array($result);
            $_SESSION['loggedin'] = true;
            $_SESSION['id'] = $user[0];
            $_SESSION['fname'] = $user[1];
            $_SESSION['lname'] = $user[2];
            $_SESSION['email'] = $user[3];
            $_SESSION['username'] = $username;
            $_SESSION['branch'] = $user[6];
            $_SESSION['role'] = $user[7];
            if($_SESSION['role']==1){
              $_SESSION['role']="Student";
            }else{
              $_SESSION['role']="Teacher";
              
            }
            $sql = "SELECT * FROM `department` WHERE `id` =". $_SESSION['branch'];
        $result = mysqli_query($conn, $sql);
        $row = mysqli_fetch_array($result);
        $_SESSION['bname'] = $row['name'];

            // $_SESSION['id'] = $username;
            header("location: user_profile.php");

        }
    
    else{
        $showError="Invalid Credentials";
    }
}




?>


<!DOCTYPE html>
<html lang="en">

<head>

  <title>Login</title>

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
  <script src="https://kit.fontawesome.com/80e7d0c422.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="..\CSS\login.css">
</head>

<body>

<?php
  if($login)
  {
      echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
              <strong>Successfull!</strong> You are logged in
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>';
  }
  if($showError)
  {
      echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">
              <strong>Failed!</strong> '.$showError.'.
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>';
  }
?>

  <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 ">
    <a href="home.php" class="d-flex align-items-center fs-1 col-md-3 mb-2 mb-md-0 text-decoration-none ms-5 f-playfair" style="color: #F64C72;">
      <b><em>Notedemy</em></b>
    </a>

    <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
      <li><a href="home.php" target="_top" class="nav-link px-2 link-secondary me-3">Home</a></li>
      <li><a href="notes_display.php" target="_top" class="nav-link px-2 link-dark me-3">Search Notes</a></li>
      <li><a href="upload_notes.php" target="_top" class="nav-link px-2 link-dark me-3">Upload Notes</a></li>
      <li><a href="user_contact.html" target="_top" class="nav-link px-2 link-dark me-3">Contact Us</a></li>
    </ul>

    <div class="col-md-3 text-end pe-4">
      <a href="signup.php" target="_top"><button type="button" class="btn btn-outline-primary me-4">Sign Up</button></a>
    </div>

  </header>

  <form class="mt-4" method="post">
    <div class="row justify-content-center mt-3 fs-2 fw-bold">Login</div>

    <!-- Email input -->
    <div class="form-outline mb-4 mt-5">
      <label class="form-label" for="form2Example1">Username</label>
      <input type="text" name="username" id="username" class="form-control" />
    </div>

    <!-- Password input -->
    <div class="form-outline mb-4">
      <label class="form-label" for="form2Example2">Password</label>
      <input type="password" id="password" name="password" class="form-control" />
    </div>

    <!-- Submit button -->
    <div class="row justify-content-center mt-5">
      <!-- <button type="button" class="btn btn-primary btn-block mb-4 ">Login</button> -->
      <input class="btn btn-primary btn-md" type="submit" value="Login" />
      <!-- <a href="user_profile.html" class="btn btn-primary btn-block mb-4">Login</a> -->
    </div>

    <!-- Register buttons -->
    <div class="text-center mt-1">
      <p>Not a member? <a href="signup.php">Register</a></p>
    </div>
  </form>

</body>

</html>