<?php
session_start();
require_once("../config/baseurl.php");
require_once("../config/connection.php");
require_once("../backend/pagination.php");
require_once("../template/header.php");
if ($_SESSION['levelUser'] == 'admin') {
?>

<body>
    <div class="sidebar">
        <?php require_once("../backend/sidebar.php") ?>
    </div>
    <div class="content">


        <?php
        
        //HALAMAN DASHBOARD//
        if (!isset($_GET['menu']) || $_GET['menu'] == 'dashboard'){
            //GET BUKU
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
            //--END Get Buku--//
            if(!isset($_GET['search'])){
                
            }else{
                foreach ($paging as $result) {
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
    
                echo "<div class=\"clear pagination\">";
    
                $delta = 1; // +/- 1 page from current
                $start = max(1, $page - $delta);
                $end = min($pagination -> totalPages(), $page + $delta);
                
                if($page-1 >=1){
                    echo "<a class=\"items\" href=\"guest.php?page=".($page-1)."\">&#8592; Prev</a>";
                } else {
                    echo "<span class=\"items\">&#8592; Prev</span>";
                }
    
                if ($start > 1) {
                    // place first page link
                    echo " <a class=\"items\" href=\"guest.php?page=1\">1</a> "; 
                    if ($start > 2) {
                        // place "..." if $start is not next to "1"
                        echo "<span class=\"items\">...</span> ";
                    }
                }
                for ($i = $start; $i <= $end; $i++) {
                    if ($i == $page) {
                        echo " <span class=\"items selected\">{$i}</span> ";
                    } else {
                        echo " <a class=\"items\" href=\"guest.php?page={$i}\">{$i}</a> ";
                    }
                }
                if ($end < $pagination -> totalPages()) {
                    if ($end < $pagination -> totalPages() - 1) {
                        // place "..." if $end is not prev to "1"
                        echo " <span class=\"items\">...</span> ";
                    }
                    // place last page link
                    echo " <a class=\"items\" href=\"guest.php?page={$pagination -> totalPages()}\">{$pagination -> totalPages()}</a>"; 
                }
    
                if ($page < $pagination->totalPages()){
                    echo "<a class=\"items\" href=\"guest.php?page=".($page+1)."\">Next &#8594;</a>";
                } else {
                    echo "<span class=\"items\">Next &#8594;</span>";
                }
                echo "</div>";
    
                //END OF HALAMAN DASHBOARD//
            }          
        }else{
            echo "404 Not Found";
        }
        ?>
    <?php
    require_once("../template/footer.php"); ?>
    </div>
</body>
<?php
}else{
    header("Location: ../login.php");
}