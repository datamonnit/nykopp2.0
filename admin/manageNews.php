<?php session_start(); ?>

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

<form name="editNews">

    <fieldset>

    <div class="form-group">
          <input type="hidden" name ="id">
          <label for="topic">Topic</label>
          <input name="topic" type="username" class="form-control" placeholder="topic">
        </div>

    </fieldset>

</form>

<script src="js/editPoll.js"></script>