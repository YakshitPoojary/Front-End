<?php
session_start();
        $fileName=$_FILES['notesfile']['name'];
	$tmpName=$_FILES['notesfile']['tmp_name'];
        $branch = $_POST['branch'];
        $subject = $_POST['subject'];
        $module = $_POST['module'];
        $description=$_POST['description'];
        $data = explode('.',$fileName);
        $ext = strtolower(end($data));
        $id = $_SESSION['id'];
       

       

        $filePath =  $branch . '/' . $subject . '/' . $module;
        if (!file_exists($filePath)) {
        mkdir($filePath, 0777, true);
        }
        $fileDirectory = $filePath . '/' . $fileName;
        echo $fileDirectory;
        move_uploaded_file ($tmpName, $fileDirectory);
        // header("Location: http://localhost:8000/HTML/upload_notes.html");
        header("Location: ../HTML/upload_notes.php");

        // this code is for adding data in database
        include '..\..\Back-End\_dbconnect.php';
        $sql = "INSERT INTO `note` (`id`, `title`, `ext`, `desc`, `status`, `user_id`, `directory`) VALUES (NULL, '$fileName', '$ext', '$description', 0, '$id', '$filePath');";
        $result = mysqli_query($conn, $sql);
        
        
 ?>
