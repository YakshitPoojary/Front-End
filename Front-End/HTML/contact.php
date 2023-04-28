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


        <div class="row input-container ">
            <div class="col-xs-12">
                <div class="styled-input wide justify-content-center align-items-center ">
                    <input type="text" required />
                    <label>Name</label>
                </div>
            </div>
            <div class="col-md-6 col-sm-12">
                <div class="styled-input">
                    <input type="text" required />
                    <label>Email</label>
                </div>
            </div>
            <div class="col-md-6 col-sm-12">
                <div class="styled-input" style="float:right;">
                    <input type="text" required />
                    <label>Phone Number</label>
                </div>
            </div>
            <div class="col-xs-12">
                <div class="styled-input wide">
                    <textarea required></textarea>
                    <label>Message</label>
                </div>
            </div>
            <div class="col-xs-12">
                <div class="btn-lrg submit-btn">Send Message</div>
            </div>
        </div>
    </div>

</body>

</html>