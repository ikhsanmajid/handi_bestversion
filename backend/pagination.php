<?php
class Pagination {

    public $currentPage;
    public $perPage;
    public $pageCount;

public function __construct($page=1, $perPage=10, $pageCount=0) {
    $this->currentPage = (int)$page;
    $this->perPage = (int)$perPage;
    $this->pageCount = (int)$pageCount;
}

public function offset(){
    return ($this->currentPage - 1) * $this->perPage;
}

public function totalPages(){
    return ceil($this->pageCount / $this->perPage);
}

public function previousPage(){
    return $this->currentPage - 1;
}

public function nextPage(){
    return $this->currentPage + 1;
}

public function hasPreviousPage(){
    return $this->previousPage() >= 1 ? true : false;
}

public function hasNextPage(){
    return $this->nextPage() <= $this->totalPages() ? true : false;
}

}
?>