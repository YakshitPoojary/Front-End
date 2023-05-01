<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") 
{
$name = $_POST['name'];
$email = $_POST['conemail'];
$phone =$_POST['phone'];
$message =$_POST['message'];
// print_r($_POST);
include '..\..\Back-End\_dbconnect.php';

$sql ="INSERT INTO `query` (`name`, `email`, `phone`, `msg`, `date`) VALUES ('$name', '$email', '$phone', '$message', current_timestamp());";
$result = mysqli_query($conn, $sql);
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link rel="stylesheet" href="..\CSS\contact.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">

</head>

<body>
<?php include 'user_navbar.php'; ?>
   

    <h3>Contact Us</h3>
    <!-- <div class="row">
    </div> -->
    <div class="container d-flex  justify-content-center">

<form method="post">
        <div class="row input-container ">
            <div class="col-xs-12">
                <div class="styled-input wide justify-content-center align-items-center ">
                    <input type="text" name = "name" required />
                    <label>Name</label>
                </div>
            </div>
            <div class="col-md-6 col-sm-12">
                <div class="styled-input">
                    <input type="text" name="conemail" required />
                    <label>Email</label>
                </div>
            </div>
            <div class="col-md-6 col-sm-12">
                <div class="styled-input" style="float:right;">
                    <input type="text" name="phone" required />
                    <label>Phone Number</label>
                </div>
            </div>
            <div class="col-xs-12">
                <div class="styled-input wide">
                    <textarea name="message" required></textarea>
                    <label>Message</label>
                </div>
            </div>
            <div class="col-xs-12">
                <input type="submit" class="btn-lrg submit-btn" value="Send Message">
            </div>
            <!-- <div class="col-md-3 col-sm-12 mb-5 mt-4">
            <input type="submit" class="col-3 btn btn-primary" value="Search">
        </div> -->
        </div>
</form>
    </div>

</body>

</html>