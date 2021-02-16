<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>
<%@ page import ="java.util.Map" %>

<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html>




<html>
<head>

<title>게시글 작성</title>
<style type="text/css">
  html,

body {

    margin:0;

    padding:0;

    height:	60px;
    
    background-image:url("/resources/images/tree/add.png");
    
     background-size: cover;

} 
/* 		
body {
    margin: 0;
    font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,"Noto Sans",sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #007bff;
    text-align: left;
    background-color: #fff;
} */
* {
	font-size: 16px;
	font-family: Consolas, sans-serif;
}

textarea {
	width: 100%;
	height: 100px;
}

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
<!-- script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>

<link rel="stylesheet" href="css/bootstrap.css">
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery-serialize-object/2.5.0/jquery.serialize-object.min.js"></script> -->
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-serialize-object/2.5.0/jquery.serialize-object.min.js"></script>
<%-- <%@ include file="/WEB-INF/include/include-header.jspf" %> --%>
<script type="text/javascript">
//이미지 정보들을 담을 배열
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
             var html = "<a href=\"javascript:void(0);\" onclick=\"deleteImageAction("+index+")\" id=\"img_id_"+index+"\"><img src=\"" + e.target.result + "\" data-file='"+f.name+"' class='selFile' style='width:800px; height:200px;' title='Click to remove'></a>";
             $(".imgs_wrap").append(html);
             index++;

         }
         reader.readAsDataURL(f);
         
     });
 }


//미리보기 이미지 삭제
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
     /* console.log("업로드 파일 갯수 : "+sel_files.length);*/
     var data = new FormData();

     for(var i=0, len=sel_files.length; i<len; i++) {
         var name = "image_"+i;
         data.append(name, sel_files[i]);
     }
     data.append("image_count", sel_files.length);
     
     if(sel_files.length < 1) {
         alert("한개이상의 파일을 선택해주세요.");
         return false;
     } else {
    	 var profileNo = $("[name='profileNo']").val();
    	 var postTreeNo = $("[name='treeNo']").val();
    	 var profileName = $("[name='profileName']").val();
         var treeName	= $("[name='treeName']").val();
         var postWriter = `\${treeName}#\${profileName}`;
         var postDetail = $("#postDetail").val();
     	 var postState = $("[name='postState']").val();
     	alert(postTreeNo);
     	 alert(treeName);
         $.ajax({
        	
        	 url : "/post/json/addPost/" ,
        	 method : "POST" ,
        	 data :  JSON.stringify({postDetail : postDetail, postState : postState ,postWriter : postWriter ,postTreeNo : postTreeNo , profileNo : profileNo}) ,
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
    	 
     }      
     
  /*    var profileName = $("[name='profileName']").val();
     var treeName	= $("[name='treeName']").val();
     var postWriter = `\${treeName}#\${profileName}`;
     var postDetail = $("#postDetail").val();
 	 var postState = $("[name='postState']").val();
     $.ajax({
    	
    	 url : "/post/json/addPost/" ,
    	 method : "POST" ,
    	 data :  JSON.stringify({postDetail : postDetail, postState : postState ,postWriter : postWriter}) ,
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
	 */

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

 //파일 등록하기ajax
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
	<header id="wrap">

		<jsp:include page="../common/navBar.jsp" />

	</header>

	<div>
	<form id="form" enctype="multipart/form-data" method="post" style="margin-top: 100px;">

		<input type="hidden" name="treeNo" value="${tree.treeNo}">
		<input type="hidden" name="treeName" value="${tree.treeName}">
		<input type="hidden" name="profileName" value="${profile.profileName}">
		<input type="hidden" name="profileNo" value="${profile.profileNo}">
		<input type="hidden"  name="menu" value="${menu}"/>
		
		<div class="container-sm" style="border: outset;">
			<div class="row row-cols-3">

				<div class="col-2"></div>
				<div class="col-8" align="center">
					<div>
						<h4>
							<b>게시글 등록</b>
						</h4>
					</div>
				</div>
				<div class="col-2"></div>

			</div>
			<div class="row row-cols-3">

				<div class="col-2"></div>
				<div class="col-8">
					<div class="input_wrap">
						<a href="javascript:" onclick="fileUploadAction();"
							class="my_button">파일 업로드</a> <input multiple="multiple"
							type="file" id="input_imgs" name="input_imgs" maxlength="10" />

					</div>
				</div>
				<div class="col-2"></div>

			</div>

			<div class="row row-cols-3">

				<div class="col-2"></div>
				<div class="col-8">
					<div>
						<div class="imgs_wrap">
							<img id="img" />
						</div>
					</div>
				</div>
				<div class="col-2"></div>

			</div>
			<div class="row row-cols-3">

				<div class="col-2"></div>
				<div class="col-8"></div>
				<div class="col-2"></div>

			</div>
			<div class="row row-cols-3">

				<div class="col-2"></div>
				<div class="col-8">
					<b>게시글 작성 내용</b>
				</div>
				<div class="col-2"></div>

			</div>
			<div class="row row-cols-3">

				<div class="col-2"></div>
				<div class="col-8">
					<textarea cols="10" rows="5" id="postDetail" name="postDetail"
						title="내용">
					    </textarea>
				</div>
				<div class="col-2"></div>

			</div>
			<div class="row row-cols-3">

				<div class="col-2"></div>
				<div class="col-8">
					<input type='radio' name='postState' value='0' />공개 <input
						type='radio' name='postState' value='1' />비공개
				</div>
				<div class="col-2"></div>

			</div>
			<div class="row row-cols-3">

				<div class="col-2"></div>
				<div class="col-8">
					<!-- <button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#exampleModal">앨범생성</button>
					<div class="modal fade" id="exampleModal" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">신고</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<div class="form-group">
										<label for="exampleFormControlSelect1">신고 내용</label> <select
											class="form-control" id="exampleFormControlSelect1">
											<option value="0">욕설</option>
											<option value="1">음란물</option>
											<option value="2">도박</option>
											<option value="3">아동학대</option>

										</select>
									</div>
								</div>
								<div class="modal-footer">
									<input Type="hidden"
										value='$("#exampleFormControlSelect1 option:selected").val();'>
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">취소</button>
									<button type="button" onClick="fn_addReport()"
										class="btn btn-primary">신고하기</button>
								</div>
							</div>
						</div>
					</div> -->

				</div>

			</div>
			<div class="col-2"></div>

			<div class="row row-cols-3">

				<div class="col-2"></div>
				<div class="col-8" align="right">
					<!-- <button type="button" class="btn btn-primary"
						onclick="fncAddPost();">등록</button> -->
					
						<button type="button" class="btn btn-outline-success" onclick="fncAddPost();">등록</button>
				</div>
				<div class="col-2"></div>

			</div>

			<div class="row-9"></div>

		</div>



	</form>
</body>
</html>