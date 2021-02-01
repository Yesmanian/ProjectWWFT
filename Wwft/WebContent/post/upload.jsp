<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html>



 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>getPost화면</title>
</head>
<body>

	<form action="uploadFormAction.jsp" method="post" enctype="multipart/form-data">
		<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td height="26">
					console.log(${fileList} );
						<c:forEach var="file" items="${fileList}">
						${file}
							<img src = "/resources/images/uploadFiles/${file}"/><br/>
						</c:forEach>
					</td>
				</tr>
			</table>
			
			내용:${post.postDetail }
	</form>

</body>
</html>