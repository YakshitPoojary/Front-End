
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>notes_display</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">

</head>

<body>


    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 ">
        <a href="home.html"
            class="d-flex align-items-center fs-1 col-md-3 mb-2 mb-md-0 text-decoration-none ms-5 f-playfair"
            style="color: #F64C72;">
            <b><em>Notedemy</em></b>
        </a>

        <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
            <li><a href="home.html" target="_top" class="nav-link px-2 link-secondary me-3">Home</a></li>
            <li><a href="notes_display.html" target="_top" class="nav-link px-2 link-dark me-3">Search Notes</a></li>
            <li><a href="upload_notes.html" target="_top" class="nav-link px-2 link-dark me-3">Upload Notes</a></li>
            <li><a href="user_contact.html" target="_top" class="nav-link px-2 link-dark me-3">Contact Us</a></li>
        </ul>
        <div class="col-md-3 text-end pe-4">
            <a href="user_profile.html" target="_top"><button type="button" class="btn btn-outline-primary me-4">My
                    Profile</button></a>
        </div>
    </header>

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
                    <div style="padding-left:5px;padding-right:10px;white-space:nowrap;text-decoration: underline;text-align:left">ID</div>
                </th>
                <th style="width: 300px;">
                    <div style="padding-left:5px;padding-right:10px;white-space:nowrap;text-decoration: underline;text-align:left">Topic Name</div>
                </th>
                <th style="width: 282px;">
                    <div style="padding-left:5px;padding-right:10px;white-space:nowrap;text-decoration: underline;text-align:left">File Type</div>
                </th>
                <th style="width: 139px;">
                    <div style="padding-left:5px;padding-right:10px;white-space:nowrap;text-decoration: underline;text-align:center">Date</div>
                </th>
                <th style="width: 71px;">
                    <div style="padding-left:5px;padding-right:10px;white-space:nowrap;text-decoration: underline;text-align:right">Size MB</div>
                </th>
                <th style="width: 138px;">
                    <div style="padding-left:5px;padding-right:10px;white-space:nowrap;text-decoration: none;text-align:center">Download</div>
                </th>
            </tr>
        </thead>
    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $filesInFolder = array();
        $branch = $_POST['branch'];
          $subject = $_POST['subject'];
          $module = $_POST['module'];
              
              $filePath = '../notes/'. $branch . '/' . $subject . '/' . $module;
              $downloadPath = 'front-end/notes/'. $branch . '/' . $subject . '/' . $module;
    $iterator = new FilesystemIterator($filePath);

    foreach($iterator as $entry){
        $filesInFolder[] = $entry->getFilename();
    }
    foreach($filesInFolder as $file){
    //     echo "<a href='/$downloadPath/$file'> <br>$file </a>";
    
        echo "<tr>
            <td>#1</td>
            <td><a href='/$downloadPath/$file'> <br>$file </a></td>
            <td>Pdf File</td>
            <td>16/03/23</td>
            
            <td>11.65</td>
            <td>
               <a href='../../$downloadPath/$file' download='$file'>Download</a>
            </td>
        </tr>";
    }}
        ?>
         <!-- <a onclick="javascript:App.downloadFile('acbf54add47d11e780f095013bcae46c');" href="javascript:void(0);">
                    DOWNLOAD
                </a> -->
        </tbody>
    </table>

</body>
<script src="../Javascript/notes_display.js"></script>

</html>