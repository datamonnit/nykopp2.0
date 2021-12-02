<?php
include_once '../layout/top.inc.php';
include_once '../layout/nav.inc.php';
?>
<div class="container">
    <div class="row">
        <div class="col">
            <h2>editoi musiikkia</h2>
            <ul class="list-group">
                <h4>Telemannic dreaming</h4>
                <audio controls src="../music/10 Telemannic dreaming.mp3" type="audio/mpeg">
                </audio>
                <div id="musicUl"></div>
                <h4>Rit</h4>
                <audio controls src="../music/4 Rit.mp3" type="audio/mpeg"> 
                </audio>
                <div id="musicUl"></div>
                <h4>intensity</h4>
               <audio controls src="../music/1 intensity.mp3" type="audio/mpeg"> 
                </audio>
                <div id="musicUl"></div>
                <h4>painting an Anges Martin painting</h4>
                <audio controls src="../music/painting an Agnes Martin.mp3" type="audio/mpeg">
                </audio>
                <div id="musicUl"></div>
                <h4>to kill the mind</h4>
                <audio controls src="../music/Track 03.mp3" type="audio/mpeg">
                </audio>
                <div id="musicUl"></div>
                <h4>pitkä pitkä yö</h4>
                <audio controls src= "../music/Track 06.mp3" type="audio/mpeg">
                </audio>
            </ul>
        </div>
    </div>
</div>





<script src="../js/music.js"></script>
<script src="../js/common.js"></script>
<?php include_once '../layout/bottom.inc.php'; ?>