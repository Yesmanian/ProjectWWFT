<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<title>ȸ�� ���� ����</title>
<script>
		
	
        function check_pw(){
 				
            var pw = document.getElementById('pw').value;
            var SC = ["!","@","#","$","%"];
            var check_SC = 0;
        
           
            
            if(pw.length<6 ||pw.length>16){
                window.alert('��й�ȣ�� 6���� �̻�, 16���� ���ϸ� �̿� �����մϴ�.');
                document.getElementById('pw').value='';
            }
            for(var i=0;i<SC.length;i++){
                if(pw.indexOf(SC[i]) != -1){
                    check_SC = 1;
                }
            }
            if(check_SC == 0){
                window.alert('!,@,#,$,% �� Ư�����ڰ� �� ���� �ʽ��ϴ�.')
                document.getElementById('pw').value='';
            }
            if(document.getElementById('pw').value !='' && document.getElementById('pw2').value!=''){
                if(document.getElementById('pw').value==document.getElementById('pw2').value){
                    document.getElementById('check').innerHTML='��й�ȣ�� ��ġ�մϴ�.'
                    document.getElementById('check').style.color='blue';
                }
                else{
                    document.getElementById('check').innerHTML='��й�ȣ�� ��ġ���� �ʽ��ϴ�.';
                    document.getElementById('check').style.color='red';
                }
            }
      
        }
    </script>
</head>
<body>
	<h3>ȸ�� ���� ����</h3>
	<!--  -->
	<form action="/user/addUser" method="post">
	<input type="hidden" id="userId" value="${tree.userId}"></input>
	<input type="hidden" id="seedNo" value="${tree.seedNo}"></input>
	
			<label for="userId">���̵�: ${user.userId}</label>
		<table>
			<tr>
			<tr>
				<td width="5%" align="center">*</td>
				<td width="20%">��й�ȣ</td>
				<td><input type="password" name="password" id="pw" onchange="check_pw()"></td>
			</tr>
			<tr>
				<td width="5%" align="center">*</td>
				<td width="20%">��й�ȣ Ȯ��</td>
				<td><input type="password" name="password1" id="pw2" onchange="check_pw()">&nbsp;<span id="check"></span></td>
			</tr>
			<tr>
				<td width="5%" align="center">*</td>
				<td width="20%">�̸���</td>
				<td><input type="text" name="email" id="email" onchange="check_pw()"></td>
			</tr>
			<tr>
				<td width="5%" align="center"></td>
				<td width="20%">���� �г���</td>
				<td><input type="text" name="treeName" id="treeName"/>
			</tr>
			<tr>
				<td width="5%" align="center"></td>
				<td width="20%">���� �ּ�</td>
				<td><input type="text" name="countryId" id="countryId"/>
			</tr>
		</table>
		<p>
		<label for="seedNo">�� ���� : ${tree.seedNo}</label>
		</p>
		<p>
			<input type="submit" value="���� �Ϸ�" /> <input type="button" value="�ڷΰ���" onclick="history.back(-1);">
		</p>
		</form>
</body>
</html>