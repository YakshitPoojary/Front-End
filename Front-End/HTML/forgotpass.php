<?php 
    error_reporting(E_ALL ^ E_WARNING); 
    session_start();
    if($_SESSION['msg']) {
    echo $_SESSION['msg'].'<br/>';
    }
?>

<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="..\CSS\forgot.css">
</head>

<body>
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 ">
        
        <a href="home.php" class="d-flex align-items-center fs-1 col-md-3 mb-2 mb-md-0 text-decoration-none ms-5 f-playfair" style="color: #F64C72;">
            <b><em>Notedemy</em></b>
        </a>

        <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
            <li><a href="home.php" target="_top" class="nav-link px-2 link-secondary me-3">Home</a></li>
            <li><a href="notes_display.php" target="_top" class="nav-link px-2 link-dark me-3">Search Notes</a></li>
            <li><a href="upload_notes.php" target="_top" class="nav-link px-2 link-dark me-3">Upload Notes</a></li>
            <li><a href="contact.php" target="_top" class="nav-link px-2 link-dark me-3">Contact Us</a></li>
        </ul>

        <div class="col-md-3 text-end pe-4">
            <a href="login.php" target="_top"><button type="button" class="btn btn-outline-primary me-4">Login</button></a>
            <a href="signup.php" target="_top"><button type="button" class="btn btn-outline-primary me-4">Sign up</button></a>
        </div>
    </header>

    <form class="mt-4" method="post" action="passreset.php">

        <div class="row justify-content-center mt-3 fs-3 fw-bold">Change Your Password</div>
        
        <!-- Email input -->
        <div class="form-outline mb-4 mt-5">
            <label class="form-label" for="form2Example1">Email Id</label>
            <input type="text" class="form-control" name="email" required="" autofocus="" />
        </div>

        <!-- Password input -->
        <div class="form-outline mb-4">
            <label class="form-label" for="form2Example2">New Password</label>
            <input type="password" class="form-control" name="newpassword" required=""/>
        </div>

        <div class="form-outline mb-4">
            <label class="form-label" for="form2Example2">Confirm Password</label>
            <input type="password" class="form-control" name="confirmpassword" required=""/>
        </div>

        <!-- Submit button -->
        <div class="row justify-content-center mt-5">
            <button class="btn btn-small btn-primary btn-block" type="submit">Submit</button>   
            <input type="hidden" name="object" value="forgot"/>
        </div>
    </form>

</body>