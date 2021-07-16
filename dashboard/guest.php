<?php
session_start();
require_once("../template/header.php");
require_once("../backend/pagination.php");
require_once("../config/connection.php");

$sql = "SELECT * FROM buku";
$stmt = $conn->prepare($sql);
$stmt->execute();

$page = !empty($_GET['page']) ? (int)$_GET['page'] : 1;
$perPage = 20;
$totalCount = $stmt->rowCount();

$pagination = new Pagination($page,$perPage,$totalCount);

$sql = "SELECT * FROM buku ORDER BY waktuAdd_buku ASC LIMIT {$perPage} OFFSET {$pagination->offset()}";
$paging = $conn->prepare($sql);
$paging->execute();

?>

<body>
    <div class="sidebar">

    </div>
    <div class="content">
        <div class="searchBox">
            <form
        </div>
        <?php foreach ($paging as $result){
            echo "<div class='card'>";
            echo "<img class='bookImg' src='img_avatar.png' alt='Avatar' style='width:100%'></img>";
            echo "<div class='containerCard'>";
            echo "<h2>{$result['judul_buku']}</h2><br>";
            echo "<p>Halaman : {$result['halaman_buku']}</p>";
            echo "<p>Penerbit : {$result['penerbit_buku']}</p>";
            echo "<p>Penulis : {$result['penulis_buku']}</p>";
            echo "<p>Kategori : {$result['kategori_buku']}</p>";
            echo "</div>";
            echo "</div>";
        }
        ?>
        <div class="pagination">
            <?php 
            $delta = 1; // +/- 1 page from current
            $start = max(1, $page - $delta);
            $end = min($pagination -> totalPages(), $page + $delta);
            
            if($page-1 >=1){
                echo "<a href=\"guest.php?page=".($page-1)."\"><-- Prev</a>";
            } else {
                echo "<-- Prev";
            }

            if ($start > 1) {
                // place first page link
                echo " <a href=\"guest.php?page=1\">1</a> "; 
                if ($start > 2) {
                    // place "..." if $start is not next to "1"
                    echo " ... ";
                }
            }
            for ($i = $start; $i <= $end; $i++) {
                if ($i == $page) {
                    echo " <span class=\"selected\">{$i}</span> ";
                } else {
                    echo " <a href=\"guest.php?page={$i}\">{$i}</a> ";
                }
            }
            if ($end < $pagination -> totalPages()) {
                if ($end < $pagination -> totalPages() - 1) {
                    // place "..." if $end is not prev to "1"
                    echo " ... ";
                }
                // place last page link
                echo " <a href=\"guest.php?page={$pagination -> totalPages()}\">{$pagination -> totalPages()}</a>"; 
            }

            if ($page < $pagination->totalPages()){
                echo "<a href=\"guest.php?page=".($page+1)."\">Next --></a>";
            } else {
                echo "Next -->";
            }
            ?>
        </div>
    <?php
    require_once("../template/footer.php");
    ?>
    </div>
    
</body>