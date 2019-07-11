<?php
/**
 * Short description for php2MyTest.php
 *
 * @package php2MyTest
 * @author red <red@red-Swift-SF113-31>
 * @version 0.1
 * @copyright (C) 2019 red <red@red-Swift-SF113-31>
 * @license MIT
 */


$server="localhost";
$username="root";
$password="mypass";
$database = "adb";

$connect=new mysqli($server,$username,$password,$database);

/* Create database  connection with correct username and password/*
$connect=new mysqli($servername,$username,$password,$database);

/* Check the connection is created properly or not */
if($connect->connect_error)
        echo "Connection error:" .$connect->connect_error;
else
        echo "Connection is created successfully \n";  

# $result = $connect->query(" INSERT INTO atest (ID, r1, r2, r3) VALUES ('6', '60', '61', '62') ");

$result = $connect->query("select * from atest");

if ($result->num_rows > 0) {
        // Read the records
        while($row = $result->fetch_assoc()) {
                echo "<br/>r1: " . $row["r1"].  "<br/><br/> \n";
        }
}
else
        echo "No record found";



/* $conn->close(); */
?>
