<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>


function dup() {
	$.ajax({
		Type : "GET",
		url : "/user/post",
		data : {userid:"1111"},
		error : function(error) {
			console.log("error");
			alert('���ԺҰ�');
		},
		success : function(data) {
			if(data =="error"){
			alert('���� �Ұ���');			
			}else{
			alert(data);	
			}
		}
	});
}
		

</script>

<title>ȸ������</title>
</head>
<body>

<h3>ȸ������</h3>
		
		<p>
			<label for="userid">���̵�:</label>
			 <input id="userid" type="text" name="userId">
			  <button onclick="dup();">ID�ߺ� üũ</button>
		</p>
		<p>
			<label for="password">��й�ȣ:</label>
			 <input id="password" type="text" name="password">
			 
		</p>
		 <p>
			<label for="password">��й�ȣ Ȯ��:</label>
			 <input id="password" type="text" name="password">
		</p> 
		<p>
			<label for="email">�̸���:</label> 
			<input id="email" type="text" name="email">
			 <input type="submit" value="e-mail�ߺ� üũ" />
			<input type="submit" value="e-mail����" />
		</p>
	 	<p>
			<label for="code">�����ڵ�</label>
			<input id="code" type="text" name="code">
			<input type="submit" value="����Ȯ��" />
		</p>
		 <p>
			<label for="treeName">���� �г���</label>
			<input id="treeName" type="text" name="treeName">
		</p>
		<p>
			<label for="treeAddress">���� �ּ�</label>
			<input id="treeAddress" type="text" name="treeAddress">
		</p>
		  <p>
			<label>�ձپ���</label> <label>�׸𾾾�</label> <label>���𾾾�</label>
		</p>
		<p>
			<input id="seed1" type="radio" value="����" name="seed">
			
			<input id="seed2" type="radio" value="����1" name="seed">	
			
			<input id="seed3" type="radio" value="����2" name="seed">
		</p>
	
		<p>
		<input type="submit" value="ȸ������ �Ϸ�" /> <input type="submit" value="���" />
		</p>
		
</body>
</html>