<%@ page language="java" contentType="text/html; charset=UTF-8" %>
  <%@ page pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!DOCTYPE html>
  <html lang="en">
  <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>id,pw 모달</title>

      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

      <script  src="https://code.jquery.com/jquery-3.5.1.min.js"  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="  crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
  </head>
  <body>
 

<!-- 모달 -->
<div class="modal fade" id="findModal" data-backdrop="static" tabindex="-1">
	<div class="modal-dialog modal-sm">
	  <div class="modal-content">
		<div class="modal-header">
      <h5 class="modal-title">ID/PW 찾기</h5>
		  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<div class="modal-body">
      <div class="" >
        
        <label class="radio-inline">
          <input type="radio" name="findRadio" value="0" checked>아이디 찾기
        </label>
        <label class="radio-inline">
          <input type="radio" name="findRadio" value="1">비밀번호 찾기
        </label>
      </div>

		  
		  <div class="form-group" id="id-form"  style="display: none;">
			<label for="exampleInputPassword1">ID</label>
			<input type="text" class="form-control" name="userId" id="id">
      </div>
      <div class="form-group" id="email-form">
        <label for="exampleInputEmail1">Email address</label>
        <input type="email" class="form-control" name="email" id="email" aria-describedby="emailHelp">
        <small id="emailHelp" class="form-text text-muted">가입하신 email을 입력 해주세요.</small>
        </div>
		  <button type="button" id="confirm1" class="btn btn-primary btn-block" style="text-align-last: center;">확인</button>
		</div>
		<div class="modal-footer">
		  <button type="button" class="btn btn-secondary btn-block" style="text-align-last: center;" data-dismiss="modal">닫기</button>
		</div>
	  </div>
	</div>
  </div>
<!--// 모달 -->

  </body>
  </html>