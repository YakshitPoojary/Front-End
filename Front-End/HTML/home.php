<?php
/*session_start();
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin']!=true){
    header("location: login.php");
    exit;
}*/
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notedemy-Home Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="..\CSS\home.css">
</head>

<body>

    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 ">
    <a href="home.php" class="d-flex align-items-center fs-1 col-md-3 mb-2 mb-md-0 text-decoration-none ms-5 f-playfair"
        style="color: #F64C72;">
        <b><em>Notedemy</em></b>
    </a>

    <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li><a href="home.php" target="_top" class="nav-link px-2 link-secondary me-3">Home</a></li>
        <li><a href="notes_display.php" target="_top" class="nav-link px-2 link-dark me-3">Search Notes</a></li>
        <li><a href="upload_notes.php" target="_top" class="nav-link px-2 link-dark me-3">Upload Notes</a></li>
        <li><a href="user_contact.html" target="_top" class="nav-link px-2 link-dark me-3">Contact Us</a></li>
    </ul>
    <div class="col-md-3 text-end pe-4">
        <a href="login.php" target="_top"><button type="button" class="btn btn-outline-primary me-4">Login</button></a>
        <a href="signup.php" target="_top"><button type="button" class="btn btn-outline-primary me-4">Sign up</button></a>
    </div>
    </header>

    <div class="bg-image"></div>
    <div id="about-container bg-text">
        <div class="title">About Notedemy </div>
        <div class="about-text text-center">
            <ul>
                <li>Notedemy is an online notes sharing platform where students and teachers can upload their notes.
                    They can also download the notes by selecting the course name and sorting through some of the
                    filters.</li><br>
                <li>This project is made by Yakshit Poojary and Salman Moghul.</li><br>
                <li>Front-End: HTML,CSS and Javascript.</li>
                <li>Back-End: PHP.</li>
                <li>Database: MySQL</li>
            </ul>
        </div>
    </div>

    <div id="contacts-container">
        <div class="title">Contact Us</div>
        <div class="contacts">
            <ul class="email">
                <li>Email Us At: </li><br>
                <ul class="contact-list">
                    <li>Yakshit Poojary: <a href="mailto: yakshit.p@somaiya.edu">yakshit.p@somaiya.edu</a></li><br>
                    <li>Salman Moghul: <a href="mailto: salman.m@somaiya.edu">salman.m@somaiya.edu</a></li>
                </ul>
            </ul>

            <ul class="github">
                <li>Github: </li><br>
                <ul class="contact-list">
                    <li>Yakshit Poojary: <a href="https://github.com/YakshitPoojary">YakshitPoojary</a></li><br>
                    <li>Salman Moghul: <a href="https://github.com/Sallu9007">Sallu9007</a></li>
                </ul>
            </ul>
        </div>
    </div>

</body>

</html>