<?php
include_once 'layout/nav.inc.php';
include_once 'layout/top.inc.php';
?>


<div class="container">
    <div class="row">
        <div class="col">
            <ul id="musicUl" class="form-group">
                <h4>Telemannic dreaming</h4>
                <audio controls src="music/10 Telemannic dreaming.mp3" type="audio/mpeg">
                </audio>
                <h4>Rit</h4>
                <audio controls src="music/4 Rit.mp3" type="audio/mpeg"> 
                </audio>
                <h4>intensity</h4>
               <audio controls src="music/1 intensity.mp3" type="audio/mpeg"> 
                </audio>
                <h4>painting an Anges Martin painting</h4>
                <audio controls src="music/painting an Agnes Martin.mp3" type="audio/mpeg">
                </audio>
                <h4>to kill the mind</h4>
                <audio controls src="music/Track 03.mp3" type="audio/mpeg">
                </audio>
                <h4>pitkä pitkä yö</h4>
                <audio controls src= "music/Track 06.mp3" type="audio/mpeg">
                </audio> 
                <br>   
                <a href="./admin/manageMusic.php" class="btn btn-primary">add/delete Music</a>
            </ul>
        </div>
    </div>
</div>


<?php include_once 'layout/bottom.inc.php';  ?>