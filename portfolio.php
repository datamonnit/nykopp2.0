<?php include_once 'layout/top.inc.php'; ?>
<?php include_once 'layout/nav.inc.php'; ?>


<a id="togglePortfolio" class="btn" data-bs-toggle="offcanvas" href="#offcanvasExample" role="button" aria-controls="offcanvasExample">
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16" focusable="false">
  <path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
</svg>
</a>

<!-- OpenSeaDragon-container -->
<div class="os-container">
  <div id="openseadragon1"></div>
</div>


<div id="tool-wrapper">
  <a class="btn btn-light" id="zoom-in"><i class="bi bi-zoom-in"></i></a>
  <a class="btn btn-light" id="zoom-out"><i class="bi bi-zoom-out"></i></a>
  <div id="caption" style="">Otsikko</div>
</div>

<div class="offcanvas offcanvas-start" data-bs-backdrop="false" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
  <div class="offcanvas-header">
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    <button type="button" id="link-back" class="btn-secondary d-none" aria-label="Back">Back</button>

  </div>
  <div class="offcanvas-body">
    <div class="sidebar">    

      <ul id="portfolioUl" class="list-group" aria-labelledby="list"></ul>

      <a id="link-back" class="btn btn-secondary d-none" href="">Back</a>
      <ul id="imagesUl" class="list-group" aria-labelledby="list"></ul>
    </div>
  </div>
</div>

<script src="js/portfolio.js"></script>
<script src="js/common.js"></script>
<script src="./lib/openseadragon.min.js"></script>

<script type="text/javascript">
  var viewer = OpenSeadragon({
      id: "openseadragon1",
      prefixUrl: "./images/",
      tileSources: "./new_images/dzi/3_cannons_HIGH_F_io_web.dzi",
      defaultZoomLevel: 0,
      zoomPerSecond: 0.2,
      // showNavigator:  true,
      
      
      // showNavigationControl: false,
      // toolbar: "tool-wrapper",
      zoomInButton: "zoom-out",
      zoomOutButton: "zoom-in",
      showHomeControl: false,
      showFullPageControl: false,
      // homeButton:     "home",
      // fullPageButton: "full-page",
      zoomPerClick: 1


      // toolbar: "myToolbar"
  });
  vaihdadzi('new_images/dzi/3_cannons_HIGH_F_io_web.dzi','Custom otsikkoni',0.5)

</script>



<?php include_once 'layout/bottom.inc.php'; ?>