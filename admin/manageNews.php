<?php include_once '../layout/top.inc.php'; ?>
<?php include_once '../layout/admin-nav.inc.php'; ?>

<div class="container">
    <div class="row">
        <div class="col">
            <h1>Manage news</h1>
            <a href="createNews.php" class="btn btn-primary">Create news</a>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <ul id="newsUl" class="list-group">
                <li class="list-group"></li>
            </ul>
        </div>
    </div>
</div>
    

<!-- <script src="../js/getIndexData.js"></script> -->
<script src="../js/adminIndex.js"></script>
<?php include_once '../layout/bottom.inc.php'; ?>