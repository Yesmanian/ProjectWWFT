<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html>



 
<html>
<head>
<title>게시글 작성</title>
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
//이미지 정보들을 담을 배열
 var sel_files = [];


 $(document).ready(function() {
     $("#input_imgs").on("change", handleImgFileSelect);
 }); 

 function fileUploadAction() {
     console.log("fileUploadAction");
     $("#input_imgs").trigger('click');
 }

 function handleImgFileSelect(e) {

     // 이미지 정보들을 초기화
     sel_files = [];
     $(".imgs_wrap").empty();

     var files = e.target.files;
     var filesArr = Array.prototype.slice.call(files);

     var index = 0;
     filesArr.forEach(function(f) {
         if(!f.type.match("image.*")) {
             alert("확장자는 이미지 확장자만 가능합니다.");
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
     console.log("업로드 파일 갯수 : "+sel_files.length);
     var data = new FormData();

     for(var i=0, len=sel_files.length; i<len; i++) {
         var name = "image_"+i;
         data.append(name, sel_files[i]);
     }
     data.append("image_count", sel_files.length);
     
     if(sel_files.length < 1) {
         alert("한개이상의 파일을 선택해주세요.");
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

 //파일 등록하는 함수
 function fnAddFiles(postNo){
	 //ajax 호출해 파일 등록하기
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
            var str = "<p><input type='file' name='file_"+(g_count++)+"'/><a href='#this' name='delete' class='btn'>삭제하기</a></p> ";
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
            <caption>게시글 작성</caption>
            <tbody>
                <tr>
                 <div>
        <h2><b>이미지 미리보기</b></h2>
        <div class="input_wrap">
            <a href="javascript:" onclick="fileUploadAction();" class="my_button">파일 업로드</a>
            <input multiple="multiple" type="file" id="input_imgs" maxlength="10"/>
             
        </div>
    </div>

    <div>
        <div class="imgs_wrap">
            <img id="img" />
        </div>
    </div>
                <tr>
                    <th scope="row">내용</th>
                    <td><textarea cols="100" rows="20" id="postDetail" name="postDetail" title="내용"></textarea></td>
                </tr>
            </tbody>
        </table>
       
         <input type='radio' name='postState' value='0' />공개
  		<input type='radio' name='postState' value='1' />비공개
         <br/>
         
       <input type="button" value="등록" onclick="fncAddPost();"/>
 
      
    </form>
   <%--  <%@ include file="/WEB-INF/include/include-body.jspf" %>   --%>
     
    
</body>
</html>