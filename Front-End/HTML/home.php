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
        <a href="home.php" class="d-flex align-items-center fs-1 col-md-3 mb-2 mb-md-0 text-decoration-none ms-5 f-playfair" style="color: #F64C72;">
            <b><em>Notedemy</em></b>
        </a>

        <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
            <li><a href="home.php" target="_top" class="nav-link px-2 link-secondary me-3">Home</a></li>
            <li><a href="notes_display.php" target="_top" class="nav-link px-2 link-dark me-3">Search Notes</a></li>
            <li><a href="upload_notes.php" target="_top" class="nav-link px-2 link-dark me-3">Upload Notes</a></li>
        </ul>

        <div class="col-md-3 text-end pe-4">
            <a href="login.php" target="_top"><button type="button" class="btn btn-outline-primary me-4">Login</button></a>
            <a href="signup.php" target="_top"><button type="button" class="btn btn-outline-primary me-4">Sign up</button></a>
        </div>
    </header>

    <div class="bg-image"></div>
    <div id="bg-text">
        <div class="title text-center text-white fs-1 justify-content-center align-item-center">Notedemy</div>
        <div class="about-text text-center text-white fs-5">
                <p>Notedemy is an online notes sharing platform where students and teachers can upload and download notes.</p>
                <p>Creators: Yakshit Poojary and Salman Moghul.</p>
        </div>
    </div>

</body>

</html>