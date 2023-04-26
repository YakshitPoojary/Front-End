<?php 
error_reporting(E_ALL ^ E_WARNING); 
$req = $_POST; 
$email = $req['email'];
$password = $req['newpassword'];
// $server = "localhost";
// $username = "root";
// $password = "";
// $database = "notedemy";
// $conn = mysqli_connect( $server, $username, $password, $database);
$conn = mysqli_connect('localhost', 'root', '', 'notedemy');
session_start();
if(strlen($password)>=8){
if($req['object'] == 'forgot'){ 
if($req['newpassword'] == $req['confirmpassword']) {
		$hash = password_hash(
			$password,
			PASSWORD_BCRYPT, ['cost'=>10]
		); 
        echo $hash;
        $update = "UPDATE `user` SET `password` = '$hash' WHERE `email` = '$email' ";
        $result = mysqli_query($conn, $update);
        $_SESSION['msg'] = '<div class="alert alert-success alert-dismissible fade show" role="alert">
        <strong>Successfull!</strong> Your Password has been Reset.
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
        </button>
        </div>';

       
        header("Location: login.php");
    } else {
        $_SESSION['msg'] = '<div class="alert alert-danger alert-dismissible fade show" role="alert">
        <strong>Failed!</strong> Password does not match.
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
        </button>
        </div>';
        header("Location: login. php");
        // header("Location: forgotpass.php");
    }
}
}
else{
    $_SESSION['msg'] = '<div class="alert alert-danger alert-dismissible fade show" role="alert">
    <strong>Failed!</strong> Password cant be smaller then 8 characters.
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
    </button>
    </div>';
    header("Location: login.php");
    // header("Location: forgotpass.php");
}
?>