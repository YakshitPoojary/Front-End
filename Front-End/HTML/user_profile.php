<?php
session_start();
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin']!=true){
    header("location: login.php");
    exit;

}

// $sql = "Select id from user where username=".$_SESSION['username'];
// echo $sql;
//         $result = mysqli_query($conn, $sql);
//         $_SESSION['id']=$result;
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">

</head>

<body style="background-color: #eee;">
<?php include 'user_navbar.php'; ?>
    <section>


        <div class="row d-flex flex-column align-items-center justify-content-center" style="--bs-gutter-x:0;">
            <div class="col-lg-4" style="padding: 0px;">
                <div class="card mb-4">
                    <div class="card-body text-center ">
                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp"
                            alt="avatar" class="rounded-circle img-fluid" style="width: 150px;">
                        <h5 class="my-3"><?php echo $_SESSION['fname']." ". $_SESSION['lname'];?></h5>
                        <h6 class="my-3"><?php echo $_SESSION['username'];?></h6>

                        <p class="text-muted mb-1"><?php echo $_SESSION['role'];?></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-8" style="padding: 0px;">
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Full Name</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0"><?php echo $_SESSION['fname']." ". $_SESSION['lname'];?></p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Email</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0"><?php echo $_SESSION['email'];?></p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Branch</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0"><?php echo $_SESSION['bname'];?></p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Uploads</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">Upload links</p>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
</body>

</html>