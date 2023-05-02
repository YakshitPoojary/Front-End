
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Questions</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <script src="https://kit.fontawesome.com/80e7d0c422.js" crossorigin="anonymous"></script>

</head>

<body>


<?php include 'user_navbar.php'; ?>
    <table id="dataTable" >
    <thead>
            <tr>
                
                <th style="width: 139px;">
                    <div style="padding-left:5px;padding-right:10px;white-space:nowrap;text-decoration: underline;text-align:center">id</div>
                </th>
                <th style="width: 139px;">
                    <div style="padding-left:5px;padding-right:10px;white-space:nowrap;text-decoration: underline;text-align:center">Name</div>
                </th>
                <th style="width: 500px;">
                    <div style="padding-left:5px;padding-right:10px;white-space:nowrap;text-decoration: underline;text-align:center">Email</div>
                </th>
                <th style="width: 100px;">
                    <div style="padding-left:5px;padding-right:10px;white-space:nowrap;text-decoration: underline;text-align:center">Phone No.</div>
                </th>
                <th style="width: 400px;">
                    <div style="padding-left:5px;padding-right:10px;white-space:nowrap;text-decoration: underline;text-align:center">Message</div>
                </th>
                <th style="width: 200px;">
                    <div style="padding-left:5px;padding-right:10px;white-space:nowrap;text-decoration: none;text-align:center">Date and Time</div>
                </th>
                <th style="width: 138px;">
                    <div style="padding-left:5px;padding-right:10px;white-space:nowrap;text-decoration: none;text-align:center">Status</div>
                    </th>
                
            </tr>
        </thead>
    <?php
    
    include '..\..\Back-End\_dbconnect.php';
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $questionid = $_POST['question'];
    $sql ="DELETE FROM query WHERE `query`.`id` = ".$questionid;
    $result = mysqli_query($conn,$sql);

    
    }


                          $sql="SELECT * FROM `query`";
                          $takeuser = mysqli_query($conn, $sql);
                          $username = mysqli_fetch_row($takeuser);
                          if (mysqli_num_rows($takeuser) > 0) 
                          { 
                              while($question = mysqli_fetch_assoc($takeuser))
                              {
                      echo "<tr>

                      <td style='text-align:center'> ".$question["id"]."</td>
                      <td style='text-align:left'> ".$question["name"]."</td>
                      <td style='text-align:center'><a href='mailto: ' ".$question["email"].">".$question["email"]."</a></td>
                      <td style='text-align:center'><a href='tel: '".$question["phone"].">".$question["phone"]."</td>
                      <td style='text-align:center'> ".$question["msg"]."</td>
                   <td style='text-align:center'> ".$question["date"]."</td>
                   <td style='text-align:center'><form method='post'><input type='number'  name='question'  value='".$question["id"]."' hidden/>
                    <button class='btn btn-danger' name='delete' ><i class='fa-solid fa-xmark'></i></button>
                    </form>
                    </td>
                      </tr>";
                              }}
                   
                echo "<tr>
                <td style = 'text-align:center'>-x-</td>
                <td style = 'text-align:center'>-x-</td>
                <td style = 'text-align:center'>-x-</td>
                <td style = 'text-align:center'>-x-</td>
                
                <td style = 'text-align:center'>-x-</td>
                <td style = 'text-align:center'>-x-</a>
                </td>
                </tr>";
           
            
        ?>
        </tbody>
    </table>
</body>
</html>