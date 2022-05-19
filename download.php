<?php

include 'config.php';
require_once 'tools.php';

$id = $_GET['id']; // Get id from url bar
$location = "uploads/";

if (isset($_GET['keySecret'])) {

    $idFile = $_GET['id'];
    $sql = "SELECT * FROM uploaded_files WHERE id='$idFile'";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {
        if ($row = mysqli_fetch_assoc($result)) {
            if ($_GET['keySecret'] == $row['keyword']) {

                // decrypt
                decryptFile($location . $row['file'], $location . 'decrypted' . $row['file'], $_GET['keySecret']);

                // download
                $file = $location . "decrypted" . $row['file'];
                download($file);
                echo "<script>File Downloaded</script>";
            } else {
                echo "<script>Keyword Salah')</script>";
            }
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
    <div class="file__upload">
        <div class="header">
            <p><i class="fa fa-download fa-2x"></i><span><span>down</span>load</span></p>
        </div>
        <form class="body">
            <div class="download">
                <form action="" method="GET">
                    <input type="text" id="keySecret" name="keySecret"
                        style="margin:10px;border-radius:10px; padding:10px;" placeholder="the secret" require></input>
                    <input type="text" name='id' value=<?php echo $id ?> hidden>
                    <button type="submit" class="btn">GET FILE</button>
                </form>
            </div>
        </form>
    </div>
</body>

</html>