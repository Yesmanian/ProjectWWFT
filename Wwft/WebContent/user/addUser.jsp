<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<title>회원가입</title>
<script>

		
		

        function check_pw(){
 			
        	 
            var userId = document.getElementById('userId').value;
            var pw = document.getElementById('pw').value;
            var SC = ["!","@","#","$","%"];
            var check_SC = 0;
            
           
            
        
            if(userId.value == ""){
              	 
            	  alert("id를 입력해주세요.");
            	 
            	  return false;
            	 
            	 }
            
            if(userId.length <6 ||userId.length>16){
                window.alert('아이디는 6글자 이상, 16글자 이하만 이용 가능합니다.');
                document.getElementById('userId').value='';
            }
           
            
            if(pw.length   <6 ||pw.length>16){
                window.alert('비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.');
                document.getElementById('pw').value='';
            }
            for(var i=0;i<SC.length;i++){
                if(pw.indexOf(SC[i]) != -1){
                    check_SC = 1;
                }
            }
            if(check_SC == 0){
                window.alert('!,@,#,$,% 의 특수문자가 들어가 있지 않습니다.')
                document.getElementById('pw').value='';
            }
            if(document.getElementById('pw').value !='' && document.getElementById('pw2').value!=''){
                if(document.getElementById('pw').value==document.getElementById('pw2').value){
                    document.getElementById('check').innerHTML='비밀번호가 일치합니다.'
                    document.getElementById('check').style.color='blue';
                }
                else{
                    document.getElementById('check').innerHTML='비밀번호가 일치하지 않습니다.';
                    document.getElementById('check').style.color='red';
                }
            }
      
        }
    </script>
</head>
<body>
	<h3>회원가입</h3>
	<!--  -->
	<form action="/user/addUser" method="post">
		<table>
			<tr>
				<td width="5%" align="center">*</td>
				<td width="20%">아이디</td>
				<td><input type="text" name="userId" id="userId" onchange="check_pw()"></td>
			</tr> 
			<tr>
			<tr>
				<td width="5%" align="center">*</td>
				<td width="20%">비밀번호</td>
				<td><input type="password" name="password" id="pw" onchange="check_pw()"></td>
			</tr>
			<tr>
				<td width="5%" align="center">*</td>
				<td width="20%">비밀번호 확인</td>
				<td><input type="password" name="password1" id="pw2" onchange="check_pw()">&nbsp;<span id="check"></span></td>
			</tr>
			<tr>
				<td width="5%" align="center">*</td>
				<td width="20%">이메일</td>
				<td><input type="text" name="email" id="email" onchange="check_pw()"></td>
			</tr>
			<tr>
				<td width="5%" align="center"></td>
				<td width="20%">나무 닉네임</td>
				<td><input type="text" name="treeName" id="treeName"/>
			</tr>
			<tr>
				<td width="5%" align="center"></td>
				<td width="20%">나무 주소</td>
				<td><input type="text" name="countryId" id="countryId"/>
			</tr>
		</table>
			
		<p>
			<label>둥근씨앗</label> <label>네모씨앗</label> <label>세모씨앗</label>
		</p>
		<p>
			<input id="seed1"  width="20%" type="radio" value="0" name="seedNo"> <input
				id="seed2"  width="20%" type="radio" value="1" name="seedNo"> <input
				id="seed3"  width="20%" type="radio" value="2" name="seedNo">
		</p>
		<p>
			<input type="submit" value="회원가입 완료" /> <input type="submit"
				value="취소" />
		</p>
	</form>
</body>
</html>