
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Questions</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">

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
                <th style="width: 138px;">
                    <div style="padding-left:5px;padding-right:10px;white-space:nowrap;text-decoration: none;text-align:center">Date and Time</div>
                </th>
                
            </tr>
        </thead>
    <?php
    
    include '..\..\Back-End\_dbconnect.php';

                          $sql="SELECT * FROM `query`";
                          $takeuser = mysqli_query($conn, $sql);
                          $username = mysqli_fetch_row($takeuser);
                          if (mysqli_num_rows($takeuser) > 0) 
                          { 
                              while($question = mysqli_fetch_assoc($takeuser))
                              {
                      echo "<tr>

                      <td style='text-align:center'> ".$question["id"]."</td>
                      <td style='text-align:center'> ".$question["name"]."</td>
                      <td style='text-align:center'> ".$question["email"]."</td>
                      <td style='text-align:center'> ".$question["phone"]."</td>
                      <td style='text-align:center'> ".$question["msg"]."</td>
                   <td style='text-align:center'> #".$question["date"]."</td>
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