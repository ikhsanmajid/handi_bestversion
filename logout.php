<?php
require_once("./config/baseurl.php");
session_start();
session_destroy();
header("Location: ".base_url());
?>