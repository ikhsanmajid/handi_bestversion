<?php
require_once("../config/baseurl.php");
?>
<html>
<header>
    <link rel="stylesheet" href="<?php base_url() ?>assets/css/style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" type="text/javascript" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <p class="logo">APLIKASI PEMINJAMAN BUKU</p>
    <?php
    if (!empty($_SESSION["noRegistration"])) {
    ?>
    <div class="menu">
            Halo <b><?php echo $_SESSION['namaLengkap']; ?>,</b> <b><a href="<?php base_url() ?>logout.php">LogOut</a></b>
    </div>
    <?php
        }else{
    ?>
    <div class="menu">
    <a href="<?php base_url()?>login.php">LOGIN</a> | <a href="<?php base_url()?>register.php">REGISTER</a>
    </div>
    <?php
        }
    ?>
</header>