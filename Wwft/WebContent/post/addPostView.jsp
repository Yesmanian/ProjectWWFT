<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html>



 
<html>
<head>
<title>�Խñ� �ۼ�</title>
<style type="text/css">

        input[type=file] {
            display: none;
        }

        .my_button {
            display: inline-block;
            width: 200px;
            text-align: center;
            padding: 10px;
            background-color: #006BCC;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }



        .imgs_wrap {

            border: 2px solid #A8A8A8;
            margin-top: 30px;
            margin-bottom: 30px;
            padding-top: 10px;
            padding-bottom: 10px;

        }
        .imgs_wrap img {
            max-width: 150px;
            margin-left: 10px;
            margin-right: 10px;
        }

    </style>
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>

<%-- <%@ include file="/WEB-INF/include/include-header.jspf" %> --%>
 <script type="text/javascript">
//�̹��� �������� ���� �迭
 var sel_files = [];


 $(document).ready(function() {
     $("#input_imgs").on("change", handleImgFileSelect);
 }); 

 function fileUploadAction() {
     console.log("fileUploadAction");
     $("#input_imgs").trigger('click');
 }

 function handleImgFileSelect(e) {

     // �̹��� �������� �ʱ�ȭ
     sel_files = [];
     $(".imgs_wrap").empty();

     var files = e.target.files;
     var filesArr = Array.prototype.slice.call(files);

     var index = 0;
     filesArr.forEach(function(f) {
         if(!f.type.match("image.*")) {
             alert("Ȯ���ڴ� �̹��� Ȯ���ڸ� �����մϴ�.");
             return;
         }

         sel_files.push(f);

         var reader = new FileReader();
         reader.onload = function(e) {
             var html = "<a href=\"javascript:void(0);\" onclick=\"deleteImageAction("+index+")\" id=\"img_id_"+index+"\"><img src=\"" + e.target.result + "\" data-file='"+f.name+"' class='selProductFile' title='Click to remove'></a>";
             $(".imgs_wrap").append(html);
             index++;

         }
         reader.readAsDataURL(f);
         
     });
 }



 function deleteImageAction(index) {
     console.log("index : "+index);
     console.log("sel length : "+sel_files.length);

     sel_files.splice(index, 1);

     var img_id = "#img_id_"+index;
     $(img_id).remove(); 
 }

 function fileUploadAction() {
     console.log("fileUploadAction");
     $("#input_imgs").trigger('click');
 }

 function fncAddPost() {
     console.log("���ε� ���� ���� : "+sel_files.length);
     var data = new FormData();

     for(var i=0, len=sel_files.length; i<len; i++) {
         var name = "image_"+i;
         data.append(name, sel_files[i]);
     }
     data.append("image_count", sel_files.length);
     
     if(sel_files.length < 1) {
         alert("�Ѱ��̻��� ������ �������ּ���.");
         return;
     }      
     
     var postDetail = $("#postDetail").val();
 	 var postState = $("[name='postState']").val();
     $.ajax({
    	
    	 url : "/post/json/addPost/" ,
    	 method : "POST" ,
    	 data :  JSON.stringify({postDetail : postDetail, postState : postState }) ,
    	 dateType : "json" ,
    	 headers : {
				"Accept" : "application/json",
				"Content-Type" : "application/json"
			},
			success : function(redata){
				alert(redata);
				fnAddFiles(redata);
			}
    	 
     })


    // $("form").attr("method","POST").attr("enctype","multipart/form-data").attr("action","/post/addPost").submit();
 /*     var xhr = new XMLHttpRequest();
     xhr.open("POST","./study01_af.php");
     xhr.onload = function(e) {
         if(this.status == 200) {
             console.log("Result : "+e.currentTarget.responseText);
         }
     }

     xhr.send(data); */

 }

 //���� ����ϴ� �Լ�
 function fnAddFiles(postNo){
	 //ajax ȣ���� ���� ����ϱ�
 }
 
        var g_count =1;
        $(document).ready(function(){
           /*  $("#list").on("click",function(e){
                e.preventDefault();
                fn_openBoardList();
            })
            $("#write").on("click",function(e){
                e.preventDefault();
                fn_writeBoard();
            }) 
            $("a[name='delete']").on("click",function(e){
                e.preventDefault();
                fn_fileDelete($(this));
            })
            $("#add").on("click",function(e){
                e.preventDefault();
                fn_fileAdd();
            })*/
        });
         
         /* 
        function fn_openBoardList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/openBoardList.do'/>");
            comSubmit.submit();
        }
         
        function fn_writeBoard(){
            var comSubmit = new ComSubmit("frm");
            comSubmit.setUrl("<c:url value='/sample/writeBoard.do'/>");
            comSubmit.submit();
        }
        function fn_fileDelete(obj){
            obj.parent().remove();
        }
        function fn_fileAdd(){
            var str = "<p><input type='file' name='file_"+(g_count++)+"'/><a href='#this' name='delete' class='btn'>�����ϱ�</a></p> ";
            $("#fileDiv").append(str);
             
            $("a[name='delete']").on("click",function(e){
                e.preventDefault();
                fn_fileDelete($(this));         
            })
        } */
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