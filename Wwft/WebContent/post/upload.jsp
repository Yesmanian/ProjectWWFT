<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html>



 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파일 업로드 화면</title>
</head>
<body>

	<form action="uploadFormAction.jsp" method="post" enctype="multipart/form-data">
		<input type="file" name="file" multiple />
		
		<input type="submit" value="업로드" />
	</form>

</body>
</html>