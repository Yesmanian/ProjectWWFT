<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<title>ȸ������</title>
<script>

		
		

        function check_pw(){
 			
        	 
            var userId = document.getElementById('userId').value;
            var pw = document.getElementById('pw').value;
            var SC = ["!","@","#","$","%"];
            var check_SC = 0;
            
           
            
        
            if(userId.value == ""){
              	 
            	  alert("id�� �Է����ּ���.");
            	 
            	  return false;
            	 
            	 }
            
            if(userId.length <6 ||userId.length>16){
                window.alert('���̵�� 6���� �̻�, 16���� ���ϸ� �̿� �����մϴ�.');
                document.getElementById('userId').value='';
            }
           
            
            if(pw.length   <6 ||pw.length>16){
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
	<h3>ȸ������</h3>
	<!--  -->
	<form action="/user/addUser" method="post">
		<table>
			<tr>
				<td width="5%" align="center">*</td>
				<td width="20%">���̵�</td>
				<td><input type="text" name="userId" id="userId" onchange="check_pw()"></td>
			</tr> 
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
			<label>�ձپ���</label> <label>�׸𾾾�</label> <label>���𾾾�</label>
		</p>
		<p>
			<input id="seed1"  width="20%" type="radio" value="0" name="seedNo"> <input
				id="seed2"  width="20%" type="radio" value="1" name="seedNo"> <input
				id="seed3"  width="20%" type="radio" value="2" name="seedNo">
		</p>
		<p>
			<input type="submit" value="ȸ������ �Ϸ�" /> <input type="submit"
				value="���" />
		</p>
	</form>
</body>
</html>