<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style type="text/css">
	#infinite-list {
  /* We need to limit the height and show a scrollbar */
  width: 200px;
  height: 100px;
  overflow: auto;

  /* Optional, only to check that it works with margin/padding */
   margin: 30px;
  padding: 20px;
  border: 10px solid black;
}
	#inviteTree-list {
  /* We need to limit the height and show a scrollbar */
  width: 200px;
  height: 100px;
  overflow: auto;

  /* Optional, only to check that it works with margin/padding */
   margin: 30px;
  padding: 20px;
  border: 10px solid black;
}

/* Optional eye candy below: */
li {
  padding: 10px;
  list-style-type: none;
}
li:hover {
  background: #ccc;
}

</style>
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
				url  : "/forest/json/updateForestInform",
				data : jsonString,
				headers : {
                    "Accept" : "application/json",
                    "Content-Type" : "application/json"
                 },
				success : function(res,status){
					//alert(res.forest.forestInformText);
					var newInformText = res.forest.forestInformText;
					var newInformTextWriter = res.forest.forestInformWriter;
					$('.forsetInformTextWriter').show();
					$('.forestInformTextRegDate').show();
					$('.forestInformText').text(newInformText).show();
					$('input[name=changeInformText]').attr("type","hidden");
					
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
	<ul id='infinite-list'>
	</ul>
<script type="text/javascript">
var listElm = document.querySelector('#infinite-list');


//Add 20 items.
var nextItem = 0;
var treeName = "<c:out value='${list[0].treeName}'/>";
var treeName1 = '${list[1].treeName}';
var treeName2 = '${list[2].treeName}';
var loadMore = function() {
	
/* 	<c:forEach items="${list}" var="item" varStatus="vs">
		
		 var item = document.createElement('li');
		 item.innerText = "${item.treeName}";
		 var s = "${vs.last}";
		 listElm.appendChild(item);
		
	</c:forEach> */
}
var restLoadMore = function(list){
	
	//alert(list)
	for (var tree in list){
		 var item = document.createElement('li');
		 item.innerText = list[tree].treeName;
		
		 //클릭시 수정필요
		 //item.setAttribute('onclick',"location.href='getForest?forestNo='")
		 listElm.appendChild(item);
		 	
	}	
}
var inviteTreeLoad = function(list){
	
	//alert(list)
	for (var tree in list){
		 var item = document.createElement('li');
		 item.innerText = list[tree].treeName;
		
		 //클릭시 수정필요
		 //item.setAttribute('onclick',"location.href='getForest?forestNo='")
		 treeElm.appendChild(item);
		 	
	}	
}
	

		 
	

window.onload = function(){
	
	var pageNumber = 1;
	var params = {
			forestNo   : ${param.forestNo},
			pageNumber : pageNumber
	}
	var jsonString = JSON.stringify(params)
	//alert(jsonString)
	
	$.ajax({
		type : "POST",
		url  : "/forest/json/getTreeList",
		data : jsonString,
		headers : {
            "Accept" : "application/json",
            "Content-Type" : "application/json"
         },
		success : function(res,status){
			
			
			//alert(status)
			//alert(res.treeList.list[0].treeName)
			//alert(res.treeList.list[2].treeName)
			var list = res.treeList.list
			//alert(list)
			restLoadMore(list);
			
			
		},
		error :  function(XMLHttpRequest, textStatus,errorThrown){
			alert("통신 실패")
		}
	})
	
	
	
 

}

//Detect when scrolled to bottom.
	var pageNumber = 1;
listElm.addEventListener('scroll', function() {
	
	
if ((this.scrollTop+this.clientHeight)+1 >= this.scrollHeight){
	pageNumber++;
	var params = {
			forestNo   : ${param.forestNo},
			pageNumber : pageNumber
	}
	var jsonString = JSON.stringify(params)
	//alert(jsonString)
	
	$.ajax({
		type : "POST",
		url  : "/forest/json/getTreeList",
		data : jsonString,
		headers : {
            "Accept" : "application/json",
            "Content-Type" : "application/json"
         },
		success : function(res,status){
			
			
			//alert(status)
			//alert(res.treeList.list[0].treeName)
			//alert(res.treeList.list[2].treeName)
			var list = res.treeList.list
			//alert(list)
			restLoadMore(list);
			
			
		},
		error :  function(XMLHttpRequest, textStatus,errorThrown){
			alert("통신 실패")
		}
	})
	
	
	
 
}
});

//Initially load some items.
//loadMore();
</script>

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
	 나무리스트</br>
	 <input type="text" name="searchTree" >
	 <form name="inviteTree" action="/forest/inviteTree" method="post">
	 	<input type="hidden" name = "forestNo" value="${param.forestNo }">
	 	<input type="hidden" name = "profileNo" value="${param.profileNo }">
		 <ul id='inviteTree-list'>
		</ul>
		<input type="submit" name="inviteButton" value="초대하기">
		 
	 </form>
	 <script type="text/javascript">
	 
	 var treeElm = document.querySelector('#inviteTree-list');
	 
	 var inviteTreeLoad = function(list){
			
			//alert(list)
			while (treeElm.hasChildNodes())
				{
					treeElm.removeChild( treeElm.firstChild )
				}
			for (var tree in list){
				
				 var item1 = document.createElement('label');
				 var item2 = document.createElement('input');
				 var item3 = document.createElement('div');
				 
				 item1.innerText = list[tree].treeName;
				 item1.setAttribute('for',list[tree].treeName);
				 
				 
				 item2.setAttribute('type','checkbox');
				 item2.setAttribute('name','checkbox');
				 item2.setAttribute('value',list[tree].treeNo);
				 //item.innerText = list[tree].treeName;
				
				 //클릭시 수정필요
				 //item.setAttribute('onclick',"location.href='getForest?forestNo='")
				 treeElm.appendChild(item1);
				 treeElm.appendChild(item2);
				 treeElm.appendChild(item3);
				 	
			}	
		}
	 
	//searchTree
		$('input[name=searchTree]').keyup(function(){
			//수정하자
			var params = {
					forestNo         : ${forest.forestNo},
					searchCondition : $('input[name=searchTree]').val()
			}
			var jsonString = JSON.stringify(params)
			//alert(jsonString)
			
			 $.ajax({
				type : "POST",
				url  : "/forest/json/getInviteTreeList",
				data : jsonString,
				headers : {
                 "Accept" : "application/json",
                 "Content-Type" : "application/json"
              },
				success : function(res,status){
					
					var list = res.inviteTreeList.list
					inviteTreeLoad(list);
					
					
				},
				error :  function(XMLHttpRequest, textStatus,errorThrown){
					alert("통신 실패")
				}
			}) 
			
		})
	 
	 </script>
 </div><br/>
 
 
 
</body>
</html>