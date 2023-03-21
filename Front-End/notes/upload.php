<?php
        $fileName=$_FILES['notesfile']['name'];
	$tmpName=$_FILES['notesfile']['tmp_name'];
        $branch = $_POST['branch'];
        $subject = $_POST['subject'];
        $module = $_POST['module'];

        $filePath =  $branch . '/' . $subject . '/' . $module;
        if (!file_exists($filePath)) {
        mkdir($filePath, 0777, true);
        }
        $fileDirectory = $filePath . '/' . $fileName;
        echo $fileDirectory;
        move_uploaded_file ($tmpName, $fileDirectory);
        header("Location: http://localhost:8000/HTML/upload_notes.html");
        // header("Location: ../HTML/upload_notes.html");
        // header("Location: ../HTML/login.html");
        // echo '<script>alert("Welcome to Geeks for Geeks")</script>';
              
            
        
 ?>
