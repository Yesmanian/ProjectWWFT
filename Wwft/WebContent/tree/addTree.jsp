<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ���� ȭ��</title>
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script type="text/javascript">





</script>
</head>
<body>

<div>
	 ���� ����
	</div>
	</br></br>


	<form name="addTree" action="/tree/addTree" method="post">



		<p>
			<label for="userId">ȸ�� �̸�:</label>
			 <input type="text" name="userId">
		</p>


		<p>
			<label for="treeName">���� �̸�:</label>
			 <input  type="text" name="treeName">
		
		</p>
		<p>
			<label for="countryId">����:</label>
			 <input type="text" name="countryId">
			 
		</p>
		<p>
		<input type="submit"  value="���� ���� �Ϸ�" /> <input type="submit" value="���" />
	</p>
</form>
</body>
</html>