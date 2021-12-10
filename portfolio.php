<?php include_once 'layout/top.inc.php'; ?>
<?php include_once 'layout/nav.inc.php'; ?>


<a class="btn" data-bs-toggle="offcanvas" href="#offcanvasExample" role="button" aria-controls="offcanvasExample">
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16" focusable="false">
  <path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
</svg>
</a>

<div class="offcanvas offcanvas-start" data-bs-backdrop="false" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
  <div class="offcanvas-header">
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
    <div class="sidebar">
    <ul id="portfolioUl" class="list-group" aria-labelledby="list">
      <li class="list-group-item">
        <a class="btn" data-bs-toggle="offcanvas" href="#offcanvasExample2" role="button" aria-controls="offcanvasBottom">
          <svg class="bi me-2" width="12" height="12"><use xlink:href="#table"/></svg>
          Orders
        </a>
      </li>
    </ul>
    </div>
  </div>
</div>


<div class="offcanvas offcanvas-bottom" data-bs-backdrop="false" tabindex="-1" id="offcanvasExample2" aria-labelledby="offcanvasExampleLabel2">
  <div class="offcanvas-header">
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
    <div class="bottombar">
    <ul id="imagesUl" class="list-group" aria-labelledby="list">
      <li class="list-group-item">
        <a href="#" class="nav-link link-dark">
          <svg class="bi me-2" width="12" height="12"><use xlink:href="#table"/></svg>
          Orders
        </a>
      </li>
    </ul>
    </div>
  </div>
</div>

<script src="js/portfolio.js"></script>
<script src="js/common.js"></script>
<?php include_once 'layout/bottom.inc.php'; ?>