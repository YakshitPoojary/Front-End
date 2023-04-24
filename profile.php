<!DOCTYPE html>
<?php
require_once("./Back End/pdo.php");
$db = new Database();
echo $db;
// $db->table("")->select()->where("", "", "")->get();
// die();
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Profile</title>
    <link rel="stylesheet" href="profile.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
    
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4">
        <a href="home.html" class="d-flex align-items-center fs-1 col-md-3 mb-2 mb-md-0 text-decoration-none ms-5 f-playfair" style="color: #F64C72;">
            <b><em>Notedemy</em></b>
        </a>
  
        <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
          <li><a href="home.html" class="nav-link px-2 link-secondary me-3">Home</a></li>
          <li><a href="" class="nav-link px-2 link-dark me-3">Features</a></li>
          <li><a href="#" class="nav-link px-2 link-dark me-3">FAQs</a></li>
          <li><a href="contact.html" class="nav-link px-2 link-dark me-3">Contact Us</a></li>
        </ul>
  
        <div class="col-md-3 text-end pe-4">
          <a href="login.html"><button type="button" class="btn btn-outline-primary me-4">Login</button></a> 
          <a href="signup.html"><button type="button" class="btn btn-primary" >Sign-up</button></a>
        </div>
    </header>

    <div class="profile">
        <h3>Profile</h3>

        <table>
            <tr>
                <td>Full Name: </td>
                <td>Name</td>
            </tr>
            <tr>
                <td>Username: </td>
                <td>My_username</td>
            </tr>
            <tr>
                <td>Email ID: </td>
                <td>Email</td>
            </tr>
            <tr>
                <td>Contact No: </td>
                <td>Number</td>
            </tr>
            <tr>
                <td>Branch: </td>
                <td>EW</td>
            </tr>
        </table>

        <button type="submit">Edit Profile</button>
    </div>
</body>
</html>