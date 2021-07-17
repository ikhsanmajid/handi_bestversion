<?php
session_start();
require_once("../config/baseurl.php");
require_once("../template/header.php");
if ($_SESSION['levelUser'] == 'admin') {
    ?>
<body>
    <div class="sidebar">
    <?php require_once("../backend/sidebar.php") ?>
    </div>
    <div class="content">
        
    <?php
    require_once("../template/footer.php"); ?>
    </div>
    
</body>
<?php
}else{
    header("Location: ../login.php");
}