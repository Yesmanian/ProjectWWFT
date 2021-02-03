<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>
<%@ page import ="java.util.Map" %>

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
    <meta name="viewport" content="width=device-width" , initial-scale="1">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>

<link rel="stylesheet" href="css/bootstrap.css">
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery-serialize-object/2.5.0/jquery.serialize-object.min.js"></script>

<%-- <%@ include file="/WEB-INF/include/include-header.jspf" %> --%>
 <script type="text/javascript">
//�̹��� �������� ���� �迭
 var sel_files = [];
// var delete_files =[];

 $(document).ready(function() {
     $("#input_imgs").on("change", handleImgFileSelect);
 }); 

/*  function fileUploadAction() {
     console.log("fileUploadAction");
     $("#input_imgs").trigger('click');
 } */

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
             var html = "<a href=\"javascript:void(0);\" onclick=\"deleteImageAction("+index+")\" id=\"img_id_"+index+"\"><img src=\"" + e.target.result + "\" data-file='"+f.name+"' class='selFile' title='Click to remove'></a>";
             $(".imgs_wrap").append(html);
             index++;

         }
         reader.readAsDataURL(f);
         
     });
 }


//�̸����� �̹��� ����
 function deleteImageAction(index) {
     console.log("index : "+index);
     console.log("sel length : "+sel_files.length);

    //delete_files = 
    	sel_files.splice(index, 1);
     console.log( $("#input_imgs").val())
	 
     var img_id = "#img_id_"+index;
     $(img_id).remove(); 
     alert(sel_files.length);
     //alert(delete_files[0].value);
 	 /* var data = new FormData();
	 
	 for(var i =0; i<sel_files.length; i++){
		 var name = "image_"+i;
		 data.append(name, sel_files[i]);
		 
	 }
	 alert(data.length);  */
 }
 

 function fileUploadAction() {
     console.log("fileUploadAction");
     $("#input_imgs").trigger('click');
 }

 function fncAddPost() {
     /* console.log("���ε� ���� ���� : "+sel_files.length);
     var data = new FormData();

     for(var i=0, len=sel_files.length; i<len; i++) {
         var name = "image_"+i;
         data.append(name, sel_files[i]);
     }
     data.append("image_count", sel_files.length);
     
     if(sel_files.length < 1) {
         alert("�Ѱ��̻��� ������ �������ּ���.");
         return;
     } */      
     
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

 //���� ����ϱ�ajax
 function fnAddFiles(redate){
/* 	 var postNo = redate;
	 var data = new FormData();
	 
	 for(var i =0; i<sel_files.length; i++){
		 var name = "image_"+i;
		 data.append(name, sel_files[i]);
	 }
	 
	    $.ajax({
	    	
	    	 url : "/post/json/addPost/"+postNo ,
	    	 method : "POST" ,
	    	 data : data ,
	    	 dateType : "json" ,
	    	 headers : {
					"Accept" : "application/json",
					"Content-Type" : "application/json"
				},
				success : function(res,status){
					alert(redata);
					fnAddFiles(redata);
				}
	    	 
	     }) */
	 
	 
	 $("form").attr("method","POST").attr("enctype","multipart/form-data").attr("action","/post/addPost?postNo="+redate).submit();
	 
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
    <form id="form" enctype="multipart/form-data" method ="post">
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
            <input multiple="multiple" type="file" id="input_imgs" name = "input_imgs" maxlength="10"/>
             
        </div>
    </div>

    <div>
        <div class="imgs_wrap">
            <img id="img" />
        </div>
    </div>
                <tr>
                    <th scope="row">����</th>
                    
                     
                    <td><textarea cols="80" rows="20" id="postDetail" name="postDetail" title="����"></textarea></td>
                	
                	
                </tr>
            </tbody>
        </table>
	     <label class="radio-inline">
			  <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> ����
		</label>
		<label class="radio-inline">
			  <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> �����
		</label>
        
         <br/>
         <button type="button" class="btn btn-lg btn-primary" disabled="disabled" value="���" onclick="fncAddPost();"/>
     <!--  // <input type="button" value="���" onclick="fncAddPost();"/> -->
 
      
    </form>
   <%--  <%@ include file="/WEB-INF/include/include-body.jspf" %>   --%>
     <div class="container">
		<div class="row">
			<form method="post" action="writeAction.jsp">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2"
								style="background-color: #eee; text-align: center;">�Խ��� �۾���
								���</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control"
								placeholder="�� ����" name="bbsTitle" maxlength="50"></td>
						</tr>
						<tr>
							<td><textarea type="text" class="form-control"
									placeholder="�� ����" name="bbsContent" maxlength="2048"
									style="height: 350px;">
                        </textarea></td>
						</tr>
					</tbody>
				</table>
				<input type="submit" class="btn btn-primary pull-right" value="�۾���">
			</form>
		</div>
	</div>
    
</body>
</html>