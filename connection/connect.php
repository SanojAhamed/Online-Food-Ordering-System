<?php

$servername = "localhost"; //server
$username = "root"; //username
$password = ""; //password
$dbname = "deli_db";  //database

$db = mysqli_connect($servername, $username, $password, $dbname); // connecting 


if (!$db) {    
    die("Connection failed: " . mysqli_connect_error());
}

?>