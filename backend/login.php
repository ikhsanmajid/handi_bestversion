<?php
session_start();
require_once("../config/baseurl.php");
require_once("../config/connection.php");

if($_POST["submit"] == "Login"){
    try {
        $data = [
            "noreg" => $_POST["noreg"],
            "password" => $_POST["password"]
        ];
        $sql = "SELECT * FROM user WHERE noRegistration_user=:noreg AND password_user=:password";
        $stmt = $conn->prepare($sql);
        $stmt->execute($data);

        if($stmt->rowCount() > 0 ){
            $user = $stmt->fetchAll();
            $_SESSION['noRegistration'] = $user[0]['noRegistration_user'];
            $_SESSION['namaLengkap'] = $user[0]['namaLengkap_user'];
            $_SESSION['levelUser'] = $user[0]['level_user'];
            //echo "Berhasil";
            header("Location: ".base_url()."index.php");
        }else{
            //echo "Tidak Berhasil";
            header("Location: ".base_url()."login.php?message=userTidakDitemukan");
        }

    } catch (PDOException $e) {
        throw $e;
    }
    

}