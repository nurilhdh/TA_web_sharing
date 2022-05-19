<?php

include 'config.php';
require_once 'tools.php';

session_start();

$user = $_SESSION['username'];
if (!$user) {
    header("Location: login.php");
}


$link = "";
$link_status = "display: none;";

if (isset($_POST['upload'])) { // If isset upload button or not
    // Declaring Variables
    $location = "uploads/";
    $file_new_name = date("dmy") . time() . $_FILES["file"]["name"]; // New and unique name of uploaded file
    $file_name = $_FILES["file"]["name"]; // Get uploaded file name
    $file_temp = $_FILES["file"]["tmp_name"]; // Get uploaded file temp
    $file_size = $_FILES["file"]["size"]; // Get uploaded file size

    $keySecret = $_POST['keySecret'];

    if ($file_size > 10485760) { // Check file size 10mb or not
        echo "<script>alert('Woops! File is too big. Maximum file size allowed for upload 10 MB.')</script>";
    } else {
        $sql = "INSERT INTO uploaded_files (name,file,keyword) VALUES ('$user', '$file_new_name', '$keySecret')";
        $result = mysqli_query($conn, $sql);

        if ($result) {
            // move_uploaded_file($file_temp, $location . $file_new_name);
            encryptFile($file_temp, $location . $file_new_name, $keySecret);
            echo "<script>alert('Wow! File uploaded successfully.')</script>";
            // Select id from database
            $sql = "SELECT id FROM uploaded_files ORDER BY id DESC";
            $result = mysqli_query($conn, $sql);

            if ($row = mysqli_fetch_assoc($result)) {
                $link = $base_url . "download.php?id=" . $row['id'];
                $link_status = "display: block;";
            }
        } else {
            echo "<script>alert('Woops! Something wong went.')</script>";
        }
    }
}

?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/style_upload_download.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    
    <title>File Web Sharing</title>
</head>

<body>
<div class="container">
        <header class="head my-3">
            <nav class="navbar navbar-expand-lg navbar-light head__custom-nav">
                <a class="navbar-brand d-flex align-items-center" href="#">
                    <img src="assets/images/logo.png" alt="website logo">
                    <span>Secure File Sharing</span>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
                    <span><img src="assets/images/menu.png" alt=""></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="index.php">Home</a>
                        </li>
                        <!-- <li class="nav-item">
                            <a class="nav-link" href="about.html">About us</a>
                        </li> -->
                        <li class="nav-item">
                            <a class="nav-link" href="faq.php">FAQ</a>
                        </li>
                        <!-- <li class="nav-item">
                            <a class="nav-link" href="#">Info</a>
                        </li> -->
                        <li class="nav-item">
                            <a class="nav-link text-primary" href="contact.html">Contact us</a>
                        </li>
                        </li>
                               <li class="nav-item">
                                <a class="nav-link" href="logout.php">Logout</a>
                            </li> 
                    </ul>
                </div>
            </nav>
        </header>
    </div>
    <div class="file__upload" style="">
        <div class="header">
            <p><i class="fa fa-cloud-upload file  fa-2x"></i><span><span>up</span>load</span></p>
        </div>
        <form action="" method="POST" enctype="multipart/form-data" class="body">
            <p>
                <strong>Drag and drop</strong> files here<br>
                or <span>browse</span> to begin the upload
            </p>
            </label>

            <input type="text" id="keySecret" name="keySecret" style="margin:10px;border-radius:10px; padding:10px;"
                placeholder="your secret" require></input>


            <button name="upload" class="btn">Upload</button>
            <input type="checkbox" id="link_checkbox">
            <input type="text" value="<?php echo $link; ?>" id="link" readonly>
            <label for="link_checkbox" style="<?php echo $link_status; ?>">Get Sharable Link</label>

            <input type="file" name="file" id="upload" required>
            <label for="upload">
                <i class="fa fa-file-text-o fa-3x"></i>
        </form>
    </div>
    <br>
    <br>
    <br>
  

</body>

</html>