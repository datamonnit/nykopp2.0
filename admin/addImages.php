<?php include_once '../layout/top.inc.php'; ?>
<?php include_once '../layout/nav.inc.php'; ?>
<?
if (!isset($_SESSION['logged_in'])) {
    header('Location: ../index.php');
} 

include_once '../layout/bottom.inc.php';
include_once '../backend/pdo-connect.php';
include_once '../backend/createNewImage.php';
?>


<div class="container">
    <div class="row">
        <div class="col">
            <form name="register">
                <fieldset>
                    <legend>New image</legend>
                    <div class="form-group">
                        <label for="imgname" class="form-label mt-4">Image name</label>
                        <input name="imgname" type="imgname" class="form-control" id="name" placeholder="Enter image name"> 
                    </div>
                    <div class="form-group">
                        <label for="dzi" class="form-label mt-4">dzi file</label>
                        <input name="dzi" type="dzi" class="form-control" id="dzi_file" placeholder="Enter dzi file">
                    </div>
                    <div class="form-group">
                        <label for="category" class="form-label mt-4">Image category</label>
                        <input name="category" type="category" class="form-control" id="category" placeholder="Enter image category"> 
                    </div>
                    <div class="form-group">
                        <label for="size" class="form-label mt-4">Image size</label>
                        <input name="imgsize" type="imgsize" class="form-control" id="size" placeholder="Enter image size"> 
                    </div>
                    <div class="form-group">
                        <label for="technic" class="form-label mt-4">Image technic</label>
                        <input name="technic" type="technic" class="form-control" id="technic" placeholder="Enter technic">
                    </div>
                    <div class="form-group">
                        <label for="year" class="form-label mt-4">Image year</label>
                        <input name="year" type="year" class="form-control" id="year" placeholder="Enter image year"> 
                    </div>
                    <button class="btn" type="submit">Tallenna</button>
                </fieldset>
            </form>
        </div>
    </div>    
</div>

<script src="../js/addImages.js"></script>
