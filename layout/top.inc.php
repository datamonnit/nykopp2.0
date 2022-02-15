<?php session_start(); ?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
      body {
        /* overflow: hidden; */
      }
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
        width: 100vw;
        height: 94vh;
        overflow: hidden;
        
      }
      #openseadragon1 {
        
        top: 0;
        left: 0;
        width:100%; height: 100%;
        z-index: 1;
        overflow: hidden;
      }
    </style>
    <title>Lauri Nykopp</title>
  </head>
  <body>
