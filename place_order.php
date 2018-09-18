<?php
include 'index.php';
// getting post variables on the page
$name=$_POST['name'];
$email=$_POST['email'];
$address=$_POST['address'];
$city=$_POST['city'];
$postal_code=$_POST['postal_code'];

/*echo '<pre>';
var_dump($name);
var_dump($email);
var_dump($address);
var_dump($city);
var_dump($postal_code);
var_dump($total);
die();*/

    $query="insert into orders(email, customer_name, address, city, total, postal_code)"
            . "values('$email', '$name', '$address', '$city', '$total', '$postal_code')";

    mysqli_query($connect, $query);
    header("Location: index.php");
    die();
$conn->close();
?>