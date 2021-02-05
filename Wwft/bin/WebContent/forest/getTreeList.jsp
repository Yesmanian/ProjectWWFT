<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>getTreeList</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" >
</script>

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

/* Optional eye candy below: */
li {
  padding: 10px;
  list-style-type: none;
}
li:hover {
  background: #ccc;
}

</style>
</head>
<body>

	${list[0].treeName}
	${fn:length(list)}
	${param.forestNo }
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
	
	<c:forEach items="${list}" var="item" varStatus="vs">
		
		 var item = document.createElement('li');
		 item.innerText = "${item.treeName}";
		 var s = "${vs.last}";
		 listElm.appendChild(item);
		
	</c:forEach>
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

</body>
</html>

