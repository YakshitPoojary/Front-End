<?php
error_reporting(E_ALL ^ E_WARNING); 
session_start();
if($_SESSION['admin']!=0){
header('Location: notes_display.php');
};
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>notes_display</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script> -->
    <script src="https://kit.fontawesome.com/80e7d0c422.js" crossorigin="anonymous"></script>
</head>

<body>


<?php include 'user_navbar.php'; ?>

    <form class="m-4 p-4 row align-items-center" name="form1" id="form1" method='post'>
        <div class="col-md-3 col-sm-12 mb-5 form-group">
         
            <label for="branch" class="form-label">Branch: </label>
            <select class="form-select" name="branch" id="branch">
                <option value="" selected disabled>Please Select Branch</option>
            </select>
        </div>

        <div class="col-md-3 col-sm-12 mb-5 form-group">
            <label for="subject" class="form-label">Subject: </label>
            <select class="form-select" name="subject" id="subject">
                <option value="" selected disabled>Please Select subject</option>
            </select>
        </div>

        <div class="col-md-3 col-sm-12 mb-5 form-group ">
            <label for="module" class="form-label">Module: </label>
            <select class="form-select" name="module" id="module">
                <option value="" selected disabled>Please select Module</option>
            </select>
        </div>

        <div class="col-md-3 col-sm-12 mb-5 mt-4">
            <input type="submit" class="col-3 btn btn-primary" value="Search">
        </div>
    </form>

    <table id="dataTable" >
        <thead>
            <tr>
                <th style="width: 139px;">
                    <div style="padding-left:5px;padding-right:10px;white-space:nowrap;text-decoration: underline;text-align:center">Note ID</div>
                </th>
                <th style="width: 500px;">
                    <div style="padding-left:5px;padding-right:10px;white-space:nowrap;text-decoration: underline;text-align:center">Topic Name</div>
                </th>
                <th style="width: 100px;">
                    <div style="padding-left:5px;padding-right:10px;white-space:nowrap;text-decoration: underline;text-align:center">File Type</div>
                </th>
                <th style="width: 139px;">
                    <div style="padding-left:5px;padding-right:10px;white-space:nowrap;text-decoration: underline;text-align:center">Uploaded By</div>
                </th>
                <th style="width: 400px;">
                    <div style="padding-left:5px;padding-right:10px;white-space:nowrap;text-decoration: underline;text-align:center">Desciption</div>
                </th>
                <th style="width: 138px;">
                    <div style="padding-left:5px;padding-right:10px;white-space:nowrap;text-decoration: none;text-align:center">Download</div>
                </th>
                <th style="width: 138px;">
                    <div style="padding-left:5px;padding-right:10px;white-space:nowrap;text-decoration: none;text-align:center">Status</div>
                    <th style="width: 50px;">
                    <div style="padding-left:5px;padding-right:10px;white-space:nowrap;text-decoration: none;text-align:center">Current Status</div>
                </th>
                
            </tr>
        </thead>
        <?php
    include '..\..\Back-End\_dbconnect.php';
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        
        $filesInFolder = array();
        $branch = $_POST['branch'];
        $subject = $_POST['subject'];
        $module = $_POST['module'];
        // $noteupdate = $_POST['accept'];
        if (isset($_POST['branch'])){
            

        }
        // echo $noteupdate;
        // echo $_POST['note_id'];
        // print_r($_POST);
        if(isset($_POST['accept'])){
            $sql = "UPDATE `note` SET `status` = '1' WHERE `note`.`id` = ".$_POST["note_id"];
            // echo $sql;
            $result = mysqli_query($conn, $sql);
            echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
              <strong>Successfull!</strong> Note accepted
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>';
            
        }
        if(isset($_POST["delete"])){
            $sql = "UPDATE `note` SET `status` = '0' WHERE `note`.`id` = ".$_POST["note_id"];
            $result = mysqli_query($conn, $sql);
            // header('Location: upload.php');
            
        }
         
        
        //   $filePath = '../notes/'. $branch . '/' . $subject . '/' . $module;
        $filePath =  $branch . '/' . $subject . '/' . $module;
        $notefile = '../notes/'. $branch . '/' . $subject . '/' . $module;
            //   echo $filePath;
            $sql = "Select * from note where `directory`= '$filePath'";
            $result = mysqli_query($conn, $sql);
            //   $notes = mysqli_fetch_row($result);
            //   if (mysqli_num_rows($result) > 0) { 
                //   while($notes = mysqli_fetch_assoc($result)){
                    //       echo 
                    //       $notes["title"];
                    //   }
                    // }
                    
                    $downloadPath = 'front-end/notes/'. $branch . '/' . $subject . '/' . $module;
                    $iterator = new FilesystemIterator($notefile);
                    
            foreach($iterator as $entry){
                $filesInFolder[] = $entry->getFilename();
            }
            foreach($filesInFolder as $file){
                //     echo "<a href='/$downloadPath/$file'> <br>$file </a>";
                if (mysqli_num_rows($result) > 0) { 
                    while($notes = mysqli_fetch_assoc($result)){
                        // echo 
                        // $notes["title"];
                        $id=$notes["user_id"];
                        // $delid=$notes["id"];
                        $sql="Select * from `user` where `id`='$id'";
                        $takeuser = mysqli_query($conn, $sql);
                        $username = mysqli_fetch_row($takeuser);
                        if($notes["status"]==1){
                            $status=' style="background-color: #198754; text-align:center;"> ACCEPTED';
                        }else{
                            $status='  style="background-color: #dc3545; text-align:center;"> REJECTED';
                            
                        }
                        // if(isset($_POST['delete'])) {
                            //     echo "This is Button1 that is selected";
                            // }
                            // if(isset($_POST['accept'])) {
                                //     echo "This is Button2 that is selected";
                                // }
                    
                    
                    echo "<tr>
                    <td style='text-align:center'> #".$notes["id"]."</td>
                    <td style='text-align:left'><a href='/$downloadPath/".$notes["title"]."'> <br>".$notes["title"]." </a></td>
                    <td style='text-align:center'>".$notes["ext"]."</td>
                    <td style='text-align:center'> #".$notes["user_id"]."&emsp;".$username[5]."</td>
                    
                    <td style='text-align:left'>".$notes["desc"]."</td>
                    <td style='text-align:center'>
                    <a href='../../$downloadPath/".$notes["title"]."' download='$file'>Download</a>
                    </td>
                    <td><form method='post'><input type='number'  name='note_id'  value='".$notes["id"]."' hidden/><button class='btn btn-danger' name='delete' ><i class='fa-solid fa-xmark'></i></button>
                    <button type='submit' class='btn btn-success' name='accept'><i class='fa-solid fa-check'></i></button></form>
                    </td>
                    <td".$status."</td>
                    </tr>";
                }}else{
                    echo "<tr>
                    <td></td>
                    <td><a href='/$downloadPath/$file'> <br> No result found for Your search </a></td>
                    <td></td>
                    <td></td>
                    
                    <td></td>
                    <td>
                    <a href='../../$downloadPath/$file' download='$file'>Download</a>
                    </td>
                    </tr>";
                    // echo "No result found for Your search";
                }
            }
          }
                ?>
         <!-- <a onclick="javascript:App.downloadFile('acbf54add47d11e780f095013bcae46c');" href="javascript:void(0);">
                    DOWNLOAD
                </a> -->
        </tbody>
    </table>

</body>
<script src="../Javascript/notes_display.js"></script>

</html>