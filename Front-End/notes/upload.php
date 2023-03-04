<?php
        $FileName=$_FILES['notesfile']['name'];
	$TmpName=$_FILES['notesfile']['tmp_name'];


        move_uploaded_file ($TmpName, $FileName);
        echo("File Uploaded Successfuly");
        // header("Location: http://localhost:8000/HTML/upload_notes.html");
        header("Location: ../HTML/upload_notes.html");
        // header("Location: ../HTML/login.html");
        // echo '<script>alert("Welcome to Geeks for Geeks")</script>';
              
            
        
 ?>
