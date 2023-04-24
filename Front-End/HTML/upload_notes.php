<?php
$showAlert = false;
$showError = false;
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    include '..\..\Back-End\_dbconnect.php';
	
	// echo "connected";
    // include ‘partials/_dbconnect.php';
    // $username = $_POST["username"];
    // $password = $_POST["password"];
    // $cpassword = $_POST["cpassword"];
    // $firstName = $_POST["firstName"];
    // $lastName = $_POST["lastName"];
    // $email = $_POST["email"];
    $branch = $_POST['branch'];
	echo $branch;
    // $role = $_POST['role'];
    // $exists = false;
    // if (($password == $cpassword) && $exists == false) {
    // // if ($exists == false) {
    //     $sql = "INSERT INTO `user` (`id`, `fname`, `lname`, `email`, `password`, `username`, `branch_id`, `role`, `admin`) VALUES (NULL, '$firstName', '$lastName', '$email', '$password', '$username', '$branch', '$role', '1')";
    //     $result = mysqli_query($conn, $sql);
    //     if ($result) {
    //         $showAlert = true;
    //     }
    // }
    // else{
    //     $showError="User already exist or the passwords dont match";
    // }
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">

</head>

<body>

	<?php include 'user_navbar.php'; ?>

	<div class="container card shadow mt-0" style="font-family: 'IBM Plex Sans', sans-serif;">
		<div class="card-body">
			<h2 class="text-center text-danger">Upload Notes</h2>
			<hr>
			<div class="row">
				<div class="col-sm-6">
					<img src="../images/upload.png" style="width: 80%; height: 450px" class="mt-3">
				</div>
				<div class="col-sm-6">

					<form method="post" action="../notes/upload.php" enctype="multipart/form-data">
						<label for="Branch" class="form-label"> Branch</label>
						<select class="form-control" name="branch" id="branch">
							<option value=""  selected disabled>--- Select Branch ---</option>
						</select>

						<label for="subject" class="form-label"> Subject</label>
						<select class="form-control" name="subject" id="subject">
							<option value="" selected="selected">--- Select Subject ---</option>
						</select>
						<!-- <input type="text" class="form-control" placeholder="Enter Subject" name="subject" id="subject"> -->

						<label for="module" class="form-label">Module </label>
						<select class="form-control" name="module" id="module">
							<option value="" selected disabled>--- Select Module ---</option>
						</select>

						<label>Notes File</label>
						<input type="file" name="notesfile" id="notesfile" class="form-control">

						<!-- <label> File Type</label>
						<select class="form-control" name="filetype">
							<option value="PDF">--- Select File ---</option>
							<option value="PDF">PDF</option>
							<option value="PPT">PPT</option>
							<option value="DOC/DOCX">DOC/DOCX</option>
							<option value="TXT">TXT</option>
							<option value="Image">Image</option>
							<option value="ZIP/RAR">ZIP/RAR</option>
						</select> -->

						<label>Description</label>
						<textarea class="form-control" rows="3" name="description" id="description" ></textarea>
						<input type="submit" class="btn btn-primary mt-2" value="Submit">

					</form>

				</div>
			</div>
		</div>
	</div>

</body>
<script src="../Javascript/notes_display.js"></script>

</html>