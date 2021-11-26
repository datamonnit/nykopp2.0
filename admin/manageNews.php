<?php include_once '../layout/top.inc.php'; ?>
<?php include_once '../layout/nav.inc.php'; ?>

<?php

/* 
TODO:
1. uutisten lista nimen perusteella
    - mallia indexIndexData.js => manageNews.js
    - backend valmiina getNews.php
    0 elementti, johon uutislista haetaan

2. uutisen poistaminen
    - nappi uutisen poistamiselle
    - backendi uutisen poitamiselle => deleteNews.php

3. uutisen editointi
    - nappi uutisen editoimiselle
    - editointisivu osittain valmis (editnews.php)
    - backend-tiedostot sivun editointiin => 
        getNewsData.php
        saveNewsData.php

*/

?>

    <ul id="newsUl" class="list-group">
        <li class="list-group">

        </li>
    </ul>

<script src="../js/getIndexData.js"></script>