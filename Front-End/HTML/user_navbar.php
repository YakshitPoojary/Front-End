<?php
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin']!=true){
  // header("location: login.php");
  // exit;$

    $logout = false;
    
}else{
  $logout = '<li><a href="question.php" target="_top" class="nav-link px-2 link-dark me-3">Questions</a></li>
  <div class="col-md-1 text-end pe-5">
    <a href="logout.php" target="_top"><button type="button" class="btn btn-outline-primary me-2">Logout</button></a>
  </div>';

}


  ?>
<header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 ">
  <a href="home.php" class="d-flex align-items-center fs-1 col-md-3 mb-2 mb-md-0 text-decoration-none ms-5 f-playfair"
    style="color: #F64C72;">
    <b><em>Notedemy</em></b>
  </a>

  <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
    <li><a href="home.php" target="_top" class="nav-link px-2 link-secondary me-3">Home</a></li>
    <li><a href="admin_display.php" target="_top" class="nav-link px-2 link-dark me-3">Search Notes</a></li>
    <li><a href="upload_notes.php" target="_top" class="nav-link px-2 link-dark me-3">Upload Notes</a></li>
    <li><a href="user_profile.php" target="_top" class="nav-link px-2 link-dark me-3">My Profile</a></li>
    <?php echo $logout?>
  </ul>


</header>