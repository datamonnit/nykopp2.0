<?php include_once 'layout/top.inc.php'; ?>
<?php include_once 'layout/nav.inc.php'; ?>


<a id="togglePortfolio" class="btn" data-bs-toggle="offcanvas" href="#offcanvasExample" role="button" aria-controls="offcanvasExample">
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16" focusable="false">
  <path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
</svg>
</a>


<div class="os-container">
<div id="openseadragon1"></div>
</div>


<div class="offcanvas offcanvas-start" data-bs-backdrop="false" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
  <div class="offcanvas-header">
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
    <div class="sidebar">    

      <ul id="portfolioUl" class="list-group" aria-labelledby="list"></ul>

      <a id="link-back" class="btn btn-secondary d-none" href="">Back</a>
      <ul id="imagesUl" class="list-group" aria-labelledby="list"></ul>
    </div>
  </div>
</div>

<script src="openseadragon.min.js"></script>
  <script type="text/javascript">
    var viewer = OpenSeadragon({
        id: "openseadragon1",
        prefixUrl: "/nykopp2.0/images/",
        tileSources: "new_images/dzi/Notre_Dame_Est_blue_80_io_web.dzi",
        defaultZoomLevel: 0.8
    });

  </script>
<script src="js/portfolio.js"></script>
<script src="js/common.js"></script>
<?php include_once 'layout/bottom.inc.php'; ?>