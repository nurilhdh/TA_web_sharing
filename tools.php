<?php

define('FILE_ENCRYPTION_BLOCKS', 10000);

/**
 * @param  $source  Path of the unencrypted file
 * @param  $dest  Path of the encrypted file to created
 * @param  $key  Encryption key
 */
function encryptFile($source, $dest, $key)
{
    $cipher = 'aes-256-cbc';
    $ivLenght = openssl_cipher_iv_length($cipher);
    $iv = openssl_random_pseudo_bytes($ivLenght);

    $fpSource = fopen($source, 'rb');
    $fpDest = fopen($dest, 'w');

    fwrite($fpDest, $iv);

    while (!feof($fpSource)) {
        $plaintext = fread($fpSource, $ivLenght * FILE_ENCRYPTION_BLOCKS);
        $ciphertext = openssl_encrypt($plaintext, $cipher, $key, OPENSSL_RAW_DATA, $iv);
        $iv = substr($ciphertext, 0, $ivLenght);

        fwrite($fpDest, $ciphertext);
    }

    fclose($fpSource);
    fclose($fpDest);
}

/**
 * @param  $source  Path of the encrypted file
 * @param  $dest  Path of the decrypted file
 * @param  $key  Encryption key
 */
function decryptFile($source, $dest, $key)
{
    $cipher = 'aes-256-cbc';
    $ivLenght = openssl_cipher_iv_length($cipher);

    $fpSource = fopen($source, 'rb');
    $fpDest = fopen($dest, 'w');

    $iv = fread($fpSource, $ivLenght);

    while (!feof($fpSource)) {
        $ciphertext = fread($fpSource, $ivLenght * (FILE_ENCRYPTION_BLOCKS + 1));
        $plaintext = openssl_decrypt($ciphertext, $cipher, $key, OPENSSL_RAW_DATA, $iv);
        $iv = substr($plaintext, 0, $ivLenght);

        fwrite($fpDest, $plaintext);
    }

    fclose($fpSource);
    fclose($fpDest);
}

function download($file)
{
    if (file_exists($file)) {
        header('Content-Description: File Transfer');
        header('Content-Type: application/octet-stream');
        header('Content-Disposition: attachment; filename="' . basename($file) . '"');
        header('Expires: 0');
        header('Cache-Control: must-revalidate');
        header('Pragma: public');
        header('Content-Length: ' . filesize($file));
        readfile($file);
        unlink($file);
    }
}


function encryptFileBlowFish($source,$dest,$key){
$file_contents = file_get_contents($source);
$base64_encoded = base64_encode($file_contents);

$url = "http://localhost:5010/encrypt";
$data = array(
    'data' => $base64_encoded,
    'password' => $key
);

$curl = curl_init($url);
curl_setopt($curl, CURLOPT_POST, true);
curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
$response = curl_exec($curl);
curl_close($curl);

file_put_contents($dest, $response);

}


function decryptFileBlowFish($source,$dest,$key){
    $file_contents = file_get_contents($source);
    $url = "http://localhost:5010/decrypt";
    $data = array(
        'data' => $file_contents,
        'password' => $key
    );
    
    $curl = curl_init($url);
    curl_setopt($curl, CURLOPT_POST, true);
    curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
    $response = curl_exec($curl);
    curl_close($curl);
    
    $decoded_string = base64_decode($response);
    file_put_contents($dest, $decoded_string);

    }