<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<script type="text/javascript">
	
 function resetData() {
	document.addForest.reset();
}
</script>

</head>
<body>
Hello addForest.jsp
	<form name="addForest" action="/forest/addForest" method="post">
		
	 	<table border="1">
				<th>�� �����</th>
				<th>����</th>
				<tr><!-- ù��° �� ���� -->
				    <td>���̸�</td>
				    <td>
				    	<input type="text" name="forestName">
				    </td>
				</tr><!-- ù��° �� �� -->
				<tr><!-- �ι�° �� ���� -->
				    <td>�� Creater Tree No</td>
				    <td>
				    	<input type="text" name="forestCreaterTreeNo">
				    </td>
				</tr><!-- �ι�° �� �� -->
				<tr><!-- �ι�° �� ���� -->
				    <td>������ �ʴ밡��</td>
				    <td>
				    	<input type="radio" name="invitePossibleState" value="1" checked>���
						<input type="radio" name="invitePossibleState" value="0">�����
				    </td>
				</tr><!-- �ι�° �� �� -->
				<tr><!-- �ι�° �� ���� -->
				    <td>������ �̸����氡��</td>
				    <td>
				    	<input type="radio" name="forestNameChangePossibleState" value="1" checked>���
						<input type="radio" name="forestNameChangePossibleState" value="0">�����
				    </td>
				</tr><!-- �ι�° �� �� -->
				<tr><!-- �ι�° �� ���� -->
				    <td>�ʴ��� ���� ��ȣ</td>
				    <td>
				    	<input type="text" name="forestName">
				    </td>
				</tr><!-- �ι�° �� �� -->
				<tr><!-- �ι�° �� ���� -->
				    <td>
				  		<input type="submit" value="������"> 
				    </td>
				    <td>
				    	<a href="javascript:resetData();">���</a>
				    </td>
				</tr><!-- �ι�° �� �� -->
				
    	</table>
		
		
	
	</form>
</body>
</html>