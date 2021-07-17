<?php
if ($_SESSION['levelUser'] == 'admin'){
    echo "<ul>";
    echo "<li>Tes Admin</li>";
    echo "</ul>";
}if ($_SESSION['levelUser'] == 'user'){
    echo "<ul>";
    echo "<li>Tes User</li>";
    echo "</ul>";
}if ($_SESSION['levelUser'] == 'guest'){
    echo "<ul>";
    echo "<li>Tes Guest</li>";
    echo "</ul>"; 
}
?>