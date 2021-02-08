<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>������ ����</title>
<link rel="stylesheet" href="../resources/css/profile/getProfileList.css" >
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<meta charset="EUC-KR">
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script type="text/javascript">

function goBack(){
		window.history.back();
		}
function readInputFile(e){
    var sel_files = [];
    
    sel_files = [];
    $('#imagePreview').empty();
    
    var files = e.target.files;
    var fileArr = Array.prototype.slice.call(files);
    var index = 0;
    
    fileArr.forEach(function(f){
    	if(!f.type.match("image/.*")){
        	alert("�̹��� Ȯ���ڸ� ���ε� �����մϴ�.");
            return;
        };
        if(files.length < 11){
        	sel_files.push(f);
            var reader = new FileReader();
            reader.onload = function(e){
            	var html = `<a id=img_id_${index}><img src=${e.target.result} data-file=${f.name} /></a>`;
                $('imagePreview').append(html);
                index++;
            };
            reader.readAsDataURL(f);
        }
    })
    if(files.length > 11){
    	alert("�ִ� 10����� ���ε� �� �� �ֽ��ϴ�.");
    }
}

$('#real-input').on('change',readInputFile);

</script>
</head>

<body>	
        <!-- �̸����� ���� -->
	<h3>������ ����</h3>
	<ul>
		<c:forEach items="${getProfileList}" var="list" >
      <div class="product-item">
        <div class="image">
          <a href="/profile/getProfile?profileNo=${list.profileNo}&treeNo=${user.treeNo}"><img src="/resources/images/profile/fa.png" alt="Product 1"></a>
        </div>
          <div class="name text-center">
          	${list.profileName}
          </div>
        </div>
		</c:forEach>
	</ul>
          <input type="button" value="�ڷΰ���" onclick="goBack();"/>


</body>
</html>