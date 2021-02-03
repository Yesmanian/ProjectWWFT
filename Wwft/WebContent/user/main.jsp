<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="form-group" style="width: 38%; margin: 10px auto;">  
      <button type="button" class="btn btn-primary btn-lg btn-block" onclick="send_mail()">보내기</button>
  </div>  
<script type="text/javascript">
function send_mail(){
    window.open("./test_mail.jsp", "", "width=370, height=360, resizable=no, scrollbars=no, status=no");
}
</script>
</body>
</html>