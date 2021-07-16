<?php
session_start();
require_once("./config/baseurl.php");
include_once("./template/header.php");
if (empty($_SESSION["noRegistration"])) {
?>

<body>
    <div class="flashMessage" id="flashMessage"></div>
    <div class="registerBox">
        <h1>Registration Form</h1>
        <form>
            <label for="noreg">No Registrasi *)<span style="font-size: 9px">silakan catat no registrasi anda karena digunakan untuk login</span></label>
            <input type="text" id="noreg" name="noreg" disabled>
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
            <input type="checkbox" id="showPassword">Show Password<br>
            <label for="nama">Nama Lengkap</label>
            <input type="text" id="nama" name="nama" required>
            <label for="jenisKelamin">Jenis Kelamin</label><br>
            <select id="jenisKelamin" name="jenisKelamin">
                <option value="L">L</option>
                <option value="P">P</option>
            </select><br>
            <label for="alamat">Alamat</label>
            <input type="text" id="alamat" name="alamat" required>
            <label for="phone">No. Telepon</label>
            <input type="tel" name="phone" id="phone" pattern="[0-9]{10,13}" required>
            <input type="button" class="btn-success" id="registerMe" value="Register"></button>
        </form>
    </div>
</body>
<script src="./assets/js/registration.js" type="text/javascript"></script>
<?php
    }else{
        header("Location: ".base_url()."");
    }

include_once("./template/footer.php");
?>