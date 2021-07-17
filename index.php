<?php
session_start();
require_once("./config/baseurl.php");
if(!empty($_SESSION["noRegistration"])){
    if($_SESSION["levelUser"] == "user"){
        header("Location: ".base_url()."dashboard/user.php");
    }if($_SESSION["levelUser"] == "admin"){
        header("Location: ".base_url()."dashboard/admin.php");
    }
}else{
    $_SESSION['levelUser'] = 'guest';
    header("Location: ".base_url()."dashboard/guest.php");
}
?>