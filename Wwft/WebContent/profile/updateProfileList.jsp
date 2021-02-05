<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>������ ���</title>
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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>	
        <!-- �̸����� ���� -->
	<h3>������ ���</h3>
	<ul>
		<c:forEach items="${getProfileList}" var="list" >
			<tr align="center" style="padding: 2 0 2 0">
					<td>${list.profileName}&nbsp;</td>
					<td>${list.profileImage}&nbsp;</td>
					<td><a href="getUserTree"></a></td>
				</tr>
		</c:forEach>
	</ul>
		<p>${user.userId}�Էα����� ������</p>
		<p align="center">
		
		
      <div class="product-item">
        <div class="image">
          <a href="/tree/getUserTree?treeNo=${user.treeNo}&userId=${user.userId}"><img src="/resources/images/profile/fa.png" alt="Product 1"></a>
        </div>
          <div class="name text-center">
            <label for="profileNmae"></label>
          </div>
        </div>
    <!--/ Product Item -->

          <div class="product-item">
        </div>
        <div class="image">
          <a href="/profile/addProfile"><img src="/resources/images/profile/412rXWdCJ7L.png" alt="Product 4"></a>
        </div>
          <div class="name text-center">
            <label for="profileNmae">������ ����</label>
          </div>
 
          <input type="button" value="������ ����" onclick="location='/profile/updateProfileList'"/>
          <input type="button" value="�ڷΰ���" onclick="goBack();"/>
		  <button class="cencle btn btn-danger" type="button">���</button>
      
</body>
</html>