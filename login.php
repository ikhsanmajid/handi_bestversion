<?php
session_start();
require_once("./config/baseurl.php");
require_once("./template/header.php");
if (empty($_SESSION["noRegistration"])) {
?>
<body>
    <?php
    if (isset($_GET["message"]) AND $_GET["message"] == "userTidakDitemukan") {
        echo "<div class='flashMessage' id='flashMessage'><p style='color : red;'><b>User tidak ditemukan</b></p><span class='closeButton' onclick='close()'>X</span></div>";
    } 
    ?>   
    <div class="loginBox">
        <h1>Login Form</h1>
        <form action="<?php base_url() ?>backend/login.php" method="POST">
            <label for="noreg">No Registrasi</label>
            <input type="text" id="noreg" name="noreg" required>
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
            <input type="checkbox" id="showPassword">Show Password<br>
            <input type="submit" class="btn-success" name="submit" value="Login"></button>
        </form>
    </div>
</body>
<script>
   function close(){
       $("#flashMessage").hide();
   }
</script>
<?php
    }else{
        header("Location: ".base_url()."index.php");
    }
include_once("./template/footer.php");
?>