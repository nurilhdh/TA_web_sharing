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

    <link rel="stylesheet" type="text/css" href="css/style_upload_download.css">

    <title>File Web Sharing</title>
</head>

<body>
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