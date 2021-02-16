<%@ page language="java" contentType="text/html; charset=UTF-8" %>
  <%@ page pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/resources/css/profile/profileImage.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
    <script  src="https://code.jquery.com/jquery-3.5.1.min.js"  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="  crossorigin="anonymous"></script>
    <script src="/resources/javascript/profile/profileImage.js"></script>
</head>
<body>
      <div class="flex">
        <div class="left">
      <div class="profile">
              <div class="photo">
                  <input type="file" accept="image/*">
                  <div class="photo__helper">
                      <div class="photo__frame photo__frame--circle">
                          <canvas class="photo__canvas"></canvas>
                          <div class="message is-empty">
                              <p class="message--desktop">Drop your photo here or browse your computer.</p>
                              <p class="message--mobile">Tap here to select your picture.</p>
                          </div>
                          <div class="message is-loading">
                              <i class="fa fa-2x fa-spin fa-spinner"></i>
                          </div>
                          <div class="message is-dragover">
                              <i class="fa fa-2x fa-cloud-upload"></i>
                              <p>Drop your photo</p>
                          </div>
                          <div class="message is-wrong-file-type">
                              <p>Only images allowed.</p>
                              <p class="message--desktop">Drop your photo here or browse your computer.</p>
                              <p class="message--mobile">Tap here to select your picture.</p>
                          </div>
                          <div class="message is-wrong-image-size">
                              <p>Your photo must be larger than 350px.</p>
                          </div>
                      </div>
                  </div>
      
                  <div class="photo__options hide">
                      <div class="photo__zoom">
                          <input type="range" class="zoom-handler">
                      </div><a href="javascript:;" class="remove"><i class="fa fa-trash"></i></a>
                  </div>
              </div>
          </div>
      
          <hr>
          <button type="button" id="previewBtn">Preview</button>
          <!-- <button type="button" id="uploadBtn">Upload Example</button> -->
      
          <hr>
          <img src="" alt="" class="preview">
          <img src="" alt="" class="preview preview--rounded">
          </div>
      </div>

     
    
</body>
</html>