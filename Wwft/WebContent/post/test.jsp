<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
function fncAddPost(){
	$("form").attr("method","POST").attr("enctype","multipart/form-data").attr("action","/post/addPost").submit();	
}

</script>
</head>

<body>
 <form id="from" enctype="multipart/form-data" method ="post">
        <table class="board_view">
            <colgroup>
                <col width="15%" >
                <col width="*" >
            </colgroup>
            <caption>�Խñ� �ۼ�</caption>
            <tbody>
                <tr>
                 <div>
        <h2><b>�̹��� �̸�����</b></h2>
        <div class="input_wrap">
            <a href="javascript:" onclick="fileUploadAction();" class="my_button">���� ���ε�</a>
            <input multiple="multiple" type="file" id="input_imgs" maxlength="10"/>
            <!-- <a href="#this" name="delete" class="btn">�����ϱ�</a> -->
        </div>
    </div>

    <div>
        <div class="imgs_wrap">
            <img id="img" />
        </div>
    </div>
                <tr>
                    <th scope="row">����</th>
                    <td><textarea cols="100" rows="20" id="postDetail" name="postDetail" title="����"></textarea></td>
                </tr>
            </tbody>
        </table>
         <input type='radio' name='postState' value='0' />����
  		<input type='radio' name='postState' value='1' />�����
         <br/>
       <input type="button" value="���" onclick="fncAddPost();"/>
 
      
    </form>
   <%--  <%@ include file="/WEB-INF/include/include-body.jspf" %>   --%>
     
    
</body>
</html>