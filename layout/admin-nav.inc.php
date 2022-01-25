<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Nykopp Manager</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarColor03">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link active" href="index.php">Admin home
            <span class="visually-hidden">(current)</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="manageMusic.php">Music</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="./manageVideos.php">Videos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./managepoems.php">Essays & poems</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="manageNews.php">News</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="manageAdmin.php">Users</a>
        </li>
      </ul>
      <span class="navbar-text">Logged in as <?php echo $_SESSION['username']; ?>&nbsp;</span>
        <a class="btn btn-outline-secondary" href="logout.php">Logout</a>
    </div>
  </div>
</nav>

<div class="container">
  <div id="msg" class="alert alert-dismissible alert-warning d-none">
    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
    <h4 class="alert-heading"></h4>
    <p class="mb-0"></p>
  </div>
</div>