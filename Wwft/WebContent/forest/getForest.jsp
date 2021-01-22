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
						alert("�ߺ��Դϴ�")
						
					}
					
				},
				error :  function(XMLHttpRequest, textStatus,errorThrown){
					alert("��� ����")
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
						alert("�ߺ��Դϴ�")
						
					} */
					
				},
				error :  function(XMLHttpRequest, textStatus,errorThrown){
					alert("��� ����")
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
	 ��������Ʈ
	


 </div><br/>
 
 <div>
	 �� ���
 </div><br/>
 
 <div>
	 ������
	 ${param.profileNo}
	 <h2 class="forestInformText">${forest.forestInformText }0</h2>
	 <h2 class="forsetInformTextWriter">${forest.forestInformWriter }1</h2>
	 <h2 class="forestInformTextRegDate">${forest.forestInformRegDate }2</h2>
	 <h2 class="forestInformTextForm">
	 	<input type="hidden" name="changeInformText" value=${forest.forestInformText }>
	 </h2>
	 <input type="button" name="informTextchangeButton" value="����">
	 <input type="button" name="informTextconfirmButton" value="Ȯ��">
	 
 </div><br/>
 
 <div >
	 �� �̸� ����<br/>
	 <h2 class="forestName">${forest.forestName }</h2> 
	 <h2 class="forsetNameTextForm">
	 	<input type="hidden" name="changeName" value=${forest.forestName} onblur="blurFunction()">
	 </h2>
	 
	 
	 <input type="button" name="changeButton" value="����">
	 <input type="button" name="confirmButton" value="Ȯ��">
 </div><br/>
 
 <div>
	 ��������Ʈ
 </div><br/>
 
 
 
</body>
</html>