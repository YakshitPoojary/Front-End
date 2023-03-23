<?php

$showAlert = false;
$showError = false;
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    include '..\..\Back-End\_dbconnect.php';
    // include ‘partials/_dbconnect.php';
    $username = $_POST["username"];
    $password = $_POST["password"];
    $cpassword = $_POST["cpassword"];
    $firstName = $_POST["firstName"];
    $lastName = $_POST["lastName"];
    $email = $_POST["email"];
    $branch = $_POST['branch'];
    $role = $_POST['role'];
    $exists = false;
    if (($password == $cpassword) && $exists == false) {
    // if ($exists == false) {
        $sql = "INSERT INTO `user` (`id`, `fname`, `lname`, `email`, `password`, `username`, `branch_id`, `role`, `admin`) VALUES (NULL, '$firstName', '$lastName', '$email', '$password', '$username', '$branch', '$role', '1')";
        $result = mysqli_query($conn, $sql);
        if ($result) {
            $showAlert = true;
        }
    }
    else{
        $showError="User already exist or the passwords dont match";
    }
}
?>






<!-- INSERT INTO `user` (`id`, `fname`, `lname`, `email`, `password`, `username`, `branch_id`, `role`, `admin`) VALUES
(NULL, 'salman', 'moghul', 'sa', '123', 'sallu', '1', '1', '1'); -->



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Signup</title>
    <link rel="stylesheet" href="..\CSS\signup.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>

<body>
<?php
if($showAlert){
    echo 
  '<div class="alert alert-success alert-dismissible fade show" role="alert">
  <strong>Successfull!</strong> User Has Been Created Successfully You Can Now Login.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>';
}
if($showError){
    echo 
  '<div class="alert alert-danger alert-dismissible fade show" role="alert">
  <strong>Failed!</strong> '.$showError.'.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>';
}


?>
    <header class="row align-items-center justify-content-center align-item-center mb-3 mt-3" style="--bs-gutter-x: 0;">
        <div class="col-2 text-center">
            <a href="home.html" class="align-items-center fs-1 text-decoration-none f-playfair" style="color: #F64C72;">
                <b><em>Notedemy</em></b>
            </a>
        </div>

        <div class="col-8">
            <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
                <li><a href="home.html" class="nav-link px-2 link-secondary me-3">Home</a></li>
                <li><a href="" class="nav-link px-2 link-dark me-3">Features</a></li>
                <li><a href="#" class="nav-link px-2 link-dark me-3">FAQs</a></li>
                <li><a href="contact.html" class="nav-link px-2 link-dark me-3">Contact Us</a></li>
            </ul>
        </div>

        <div class="col-2 text-center">
            <a href="login.html" class="btn btn-primary ps-5 pe-5">Login</a>
        </div>
    </header>

    <!--First Name, Last Name, Username, Email, Password, Branch, Role-->

    <section class="vh-100 gradient-custom">
        <div class="container h-90">
            <div class="row justify-content-center h-100">
                <div class="col-12 col-lg-9 col-xl-7">
                    <div class="card shadow-2-strong card-registration mt-5" style="border-radius: 15px;">
                        <div class="card-body p-4 p-md-5">
                            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 row justify-content-center">Register</h3>
                            <form action="signup.php" method="post">

                                <div class="row mb-4">
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <input type="text" id="firstName" name="firstName" class="form-control form-control-md"
                                                placeholder="First Name" />
                                        </div>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <input type="text" id="lastName" name="lastName" class="form-control form-control-md"
                                                placeholder="Last Name" />
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12 mb-5 d-flex align-items-center">
                                        <div class="form-outline datepicker w-100">
                                            <input type="text" class="form-control form-control-md" id="email" name="email"
                                                placeholder="Email Id" />
                                        </div>
                                    </div>
                                </div>

                                <div class="row mb-4">
                                    <div class="col-md-6 mb-4 pb-2">
                                        <div class="form-outline">
                                            <input type="text" id="username" name="username" class="form-control form-control-md"
                                                placeholder="Username" />
                                        </div>
                                    </div>

                                    <div class="col-md-6 mb-4 pb-2">
                                        <div class="form-outline">
                                            <input type="password" id="password" name="password" class="form-control form-control-md"
                                                placeholder="Password" />
                                        </div>
                                        <div class="form-outline">
                                            <input type="password" id="cpassword" name="cpassword" class="form-control form-control-md"
                                                placeholder="Confirm Password" />
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-6">
                                        <select class="select form-control-md p-2" name="branch" id="branch">
                                            <option  selected disabled>Branch</option>
                                            <option value="1">Computer Engineering</option>
                                            <option value="2">Information Technology</option>
                                            <option value="3">Mechanical</option>
                                            <option value="4">Electronics</option>
                                            <option value="5">Telecommunication</option>
                                        </select>
                                    </div>
                                    <div class="col-6">
                                        <select class="select form-control-md p-2" name="role" id="role">
                                            <option selected disabled>Role</option>
                                            <option value="1">Student</option>
                                            <option value="2">Teacher</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="mt-3 pt-2 row justify-content-center">
                                    <input class="btn btn-primary btn-md" type="submit" value="Submit" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>

</html>