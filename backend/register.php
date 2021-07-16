<?php
require_once("../config/connection.php");
if ($_GET["request"] == "cekUsername") {
    $stmt = $conn->prepare("SELECT noRegistration_user FROM user ORDER BY noRegistration_user DESC LIMIT 1");
    $stmt->execute();
    if ($stmt->rowCount() == 0){
        echo 0;
    }else{
        $result = $stmt->fetchAll();
        echo $result[0]["noRegistration_user"];
    }
}
if ($_GET["request"] == "register"){
    try {
        $data = [
            "noRegistration" => $_POST["noRegistration"],
            "password" => $_POST["password"],
            "level" => "user",
            "namaLengkap" => $_POST["namaLengkap"],
            "jenisKelamin" => $_POST["jenisKelamin"],
            "alamat" => $_POST["alamat"],
            "noTelepon" => $_POST["noTelepon"]
        ];
        $sql = $conn->prepare("INSERT INTO user (noRegistration_user, password_user, level_user, namaLengkap_user, jenisKelamin_user, alamat_user, noTelepon_user) VALUES (:noRegistration, :password, :level, :namaLengkap, :jenisKelamin, :alamat, :noTelepon)");
        $sql->execute($data);
        echo "sukses";
    } catch (PDOException $e) {
        //
        if($e->errorInfo[1] == 1062){
            echo "duplikasi";
        }else{
            echo "error";
        }
    }
}

?>