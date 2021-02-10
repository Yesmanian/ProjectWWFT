<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR" /> 
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>프로필 생성</title>
<script type="text/javascript">
var remote = require('electron').remote;
var dialog = remote.dialog;

document.getElementById('btn-select-file').addEventListener('click', function () {
  dialog.showOpenDialog(function (fileNames) {
    if (fileNames !== undefined) {
      document.getElementById("txt-filename").value = fileNames[0];
    }
  });
}, false);
function checkValue(formElem) {
	
	var elemArray = formElem.elements;
	var value = "";
	
	for (var index = 0; index < elemArray.length; index++) {

		if( elemArray[index].type == "file" && elemArray[index].checked ){
			value += (index+1) +" : "+elemArray[index].name +" : "+  elemArray[index].value+"\n"
		}
		alert(value);
		if( elemArray[index].type == "text" ){
			var temp = ( elemArray[index].value == "" ? "입력값 없음" : elemArray[index].value );
			value += (index+1) +" : "+elemArray[index].name +" : "+ temp+"\n"
		}
		alert(value);

		if( elemArray[index].type == "radio" && elemArray[index].checked ){
			value += (index+1) +" : "+elemArray[index].name +" : "+  elemArray[index].value+"\n"
		}
		alert(value);
	}
		</script>
		<style type="text/css">

#my-file { visibility: hidden; }

</style>


</head>
<body>



<form action="/profile/addProfile" method="post">
<h3>프로필 생성</h3>

 <div>
    <input type="text" placeholder="Please select a file" id="txt-filename" disabled="disabled" />
    <input type="button" value="Choose a file" id="btn-select-file" />
  </div>
  <script type="text/javascript" src="./script.js"></script>
<input type="button" id="my-button" value="Select Files">
<input type="file" name="my_file" id="my-file">

<input type="file" id="file" name="file" onchange="changeValue(this)"/>

<button type="button" id="btn-upload">Image</button>


		프로필 이미지<input type="file" name="profileImage" id="profileimage" accept="image/*" onchange="setThumbnail(event);"/>
		<div id="image_container"></div> 
		<script> function setThumbnail(event) 
		{ var reader = new FileReader();
		reader.onload = function(event) { 
			var img = document.createElement("img"); 
			img.setAttribute("src", event.target.result); 
			document.querySelector("div#image_container").appendChild(img); }; 
			reader.readAsDataURL(event.target.files[0]); }
		</script>

		<input type ="hidden" name = "treeNo" value ="${user.treeNo}"> 
		<table>
			<tr>
				<td width="5%" align="center"></td>
				<td width="20%">프로필 이미지</td>
				<td><input type="file" name="profileImage" id="profileimage" ></td>
			</tr> 
			<tr>
				<td width="5%" align="center">*</td>
				<td width="20%">프로필이름</td>
				<td><input type="text" name="profileName" id="profilename" onclick="checkValue()"></td>
			</tr>
			<tr>
				<td width="5%" align="center">*</td>
				<td width="20%">가족관계</td>
				<td><input type="text" name="familyRelations" id="familylelations" onclick="checkValue()"></td>
			</tr>
			<tr>
				<td width="5%" align="center">*</td>
				<td width="20%">이름</td>
				<td><input type="text" name="name" id="name" onclick="checkValue()" ></td>
			</tr>
			<tr>
				<td width="5%" align="center"></td>
				<td width="20%">생년월일</td>
				<td><input type="text" name="birthday" id="birthday"/>
			</tr>
			<tr>
				<td width="5%" align="center"></td>
				<td width="20%">핸드폰 번호</td>
				<td><input type="text" name="phone" id="phone"/>
			</tr>
			<tr>
				<td width="5%" align="center"></td>
				<td width="20%">주소</td>
				<td><input type="text" name="address" id="address"/>
			</tr>
			
		</table>
		<p>
			<label for="profilestate">프로필 공개여부</label>
			<input id="profileState" type="radio" value="0" name="profileState">	
			<input id="profileState" type="radio" value="1" name="profileState">	
		</p>
	
		<p>
		<input type="button"  onclick="javascript:checkValue(this.form)"  value='button전송'> 
		<input type="submit" value="submit전송">
		<input type="button" value="뒤로가기" onclick="history.back(-1);">
		</p>
</form>
</body>
</html>