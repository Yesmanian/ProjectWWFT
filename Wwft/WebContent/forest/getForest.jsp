<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
<script type="text/javascript">
 	
 	var newValue;
    
 	 function blurFunction(){
 		
 		document.getElementsByClassName("confirmButton").clicked = function(){
 			alert("ADB")
 		}
 		
 		$('.forestName').show(); 
 		/* $('input[name=changeName]').val($('.forestName').text()); */
 		$('input[name=changeName]').attr("type","hidden");
 	}
 	 
 	
 	 
 	//forestName function
	$(function(){
		$('input[name=changeButton]').on("click",function(){
			$('.forestName').hide();
			$('input[name=changeName]').attr("type","text");
	
		})
		$('input[name=confirmButton]').on("click",function(){
			
			var params = {
					forestName : $('input[name=changeName]').val(),
					forestNo   : ${forest.forestNo}
			}
			var jsonString = JSON.stringify(params)
			alert(jsonString)
			
			$.ajax({
				type : "POST",
				url  : "/forest/json/updateForestName",
				data : jsonString,
				headers : {
                    "Accept" : "application/json",
                    "Content-Type" : "application/json"
                 },
				success : function(res,status){
					alert(res.forest.forestName);
					var newName = res.forest.forestName
					alert(newName)
					if(newName == $('input[name=changeName]').val()){
						$('input[name=changeName]').attr("type","hidden");
						$('.forestName').text(newName)
						$('.forestName').show(); 
					}else{
						alert("중복입니다")
						
					}
					
				},
				error :  function(XMLHttpRequest, textStatus,errorThrown){
					alert("통신 실패")
				}
			})
			
			/*  newValue = $('input[name=changeName]').val()
			$('input[name=changeName]').attr("type","hidden");
			$('.forestName').text(newValue)
			$('.forestName').show();  */
	
		})
		
		
		
		//InformText function
		 $('input[name=informTextchangeButton]').on("click",function(){
			$('.forestInformText').hide();
			$('.forsetInformTextWriter').hide();
			$('.forestInformTextRegDate').hide();
			$('input[name=changeInformText]').attr("type","text");
		}) 
		$('input[name=informTextconfirmButton]').on("click",function(){
			
			var params = {
					forestNo         : ${forest.forestNo},
					forestInformText : $('input[name=changeInformText]').val(),
					forestInformWriter   : ${param.profileNo}
			}
			var jsonString = JSON.stringify(params)
			alert(jsonString)
			
			$.ajax({
				type : "POST",
				url  : "/forest/json/updateForestName",
				data : jsonString,
				headers : {
                    "Accept" : "application/json",
                    "Content-Type" : "application/json"
                 },
				success : function(res,status){
					alert(status);
					/* var newName = res.forest.forestName
					alert(newName)
					if(newName == $('input[name=changeName]').val()){
						$('input[name=changeName]').attr("type","hidden");
						$('.forestName').text(newName)
						$('.forestName').show(); 
					}else{
						alert("중복입니다")
						
					} */
					
				},
				error :  function(XMLHttpRequest, textStatus,errorThrown){
					alert("통신 실패")
				}
			})
		
		
	})
		
	})
	
	
		
	
	
</script>
</head>
<body>
 Hello GetForest.jsp<br/>
 <div>
	 ${forest}
 </div><br/>
 
 <div>
	 나무리스트
	


 </div><br/>
 
 <div>
	 숲 목록
 </div><br/>
 
 <div>
	 공지글
	 ${param.profileNo}
	 <h2 class="forestInformText">${forest.forestInformText }0</h2>
	 <h2 class="forsetInformTextWriter">${forest.forestInformWriter }1</h2>
	 <h2 class="forestInformTextRegDate">${forest.forestInformRegDate }2</h2>
	 <h2 class="forestInformTextForm">
	 	<input type="hidden" name="changeInformText" value=${forest.forestInformText }>
	 </h2>
	 <input type="button" name="informTextchangeButton" value="수정">
	 <input type="button" name="informTextconfirmButton" value="확인">
	 
 </div><br/>
 
 <div >
	 숲 이름 변경<br/>
	 <h2 class="forestName">${forest.forestName }</h2> 
	 <h2 class="forsetNameTextForm">
	 	<input type="hidden" name="changeName" value=${forest.forestName} onblur="blurFunction()">
	 </h2>
	 
	 
	 <input type="button" name="changeButton" value="수정">
	 <input type="button" name="confirmButton" value="확인">
 </div><br/>
 
 <div>
	 나무리스트
 </div><br/>
 
 
 
</body>
</html>