<?php session_start(); ?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <div id="msg" class="alert alert-dismissible alert-warning d-none">
    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
    <h4 class="alert-heading">Warning!</h4>
    <p class="mb-0"></a>.</p>
  </div>
  
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css" integrity="sha512-Oy+sz5W86PK0ZIkawrG0iv7XwWhYecM3exvUtMKNJMekGFJtVAhibhRPTpmyTj8+lJCkmWfnpxKgT2OopquBHA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <style>
      #imagesUl img {
        object-fit: cover;
        width: 100%;
        height: 100%;
      }

      #imagesUl li {
        display: grid;
        grid-template-rows: 200px 20px;
      }

      #togglePortfolio {
        z-index: 100;
        transform: translate(0, 50%);
        position: fixed;
        top: 50vh;
      }

      .os-container {
        width: 100%;
        height: 94vh;
        overflow: hidden;
      }

      /* #textcontainer {
        width: 100%;
        z-index: 101;
        position: fixed;
        top: 1hv;
        text-align: center;
        background-color: rgba(255, 255, 255, 0.5);
      } */

      #openseadragon1 {
        
        top: 5hv;
        left: 0;
        width: 100vw; height: 90vh;
        z-index: 1;
        overflow: hidden;
      }

      #tool-wrapper {
        position: fixed;
        top: 50px;
        width: 100%;
        text-align: center;
        font-size: 2em;
        background-color: rgba(255,255,255,0.4)
      }

      #myToolbar {
        width: 100%;
      }
      </style>
    <title>Lauri Nykopp</title>
  </head>
  <body>
