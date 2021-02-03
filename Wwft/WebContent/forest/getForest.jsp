<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Londrina+Solid:wght@100;300;400&display=swap');
	#infinite-list {
  /* We need to limit the height and show a scrollbar */
  width: 200px;
  height: 200px;
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
.gedf-wrapper {
            margin-top: 0.97rem;
        }
@media (min-width: 992px) {
            .gedf-main {
                padding-left: 4rem;
                padding-right: 4rem;
            }
            .gedf-card {
                margin-bottom: 2.77rem;
            }
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
		$('button[name=changeButton]').on("click",function(){
			$('.forestName').hide();
			$('input[name=changeName]').attr("type","text");
	
		})
		$('button[name=confirmButton]').on("click",function(){
			
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
		 $('button[name=informTextchangeButton]').on("click",function(){
			$('.forestInformText').hide();
			$('.forsetInformTextWriter').hide();
			$('.forestInformTextRegDate').hide();
			$('input[name=changeInformText]').attr("type","text");
		}) 
		$('button[name=informTextconfirmButton]').on("click",function(){
			
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


	<div class="container-fluid gedf-wrapper">
        <div class="row">
            <div class="col-md-3">
                <div class="card">
                    <div class="card-body">
                        <h2 class="forestName">${forest.forestName }</h2> 
							 <h2 class="forsetNameTextForm">
							 	<input type="hidden" name="changeName" value=${forest.forestName} onblur="blurFunction()">
							 </h2>
	                        <div class="h7 text-muted">숲 방장 : ${forest.forestCreaterTreeNo }</div>
							 
							 <button type="button" class="btn btn-default navbar-btn" name="changeButton" >수정</button>
							 <button type="button" class="btn btn-default navbar-btn" name="confirmButton" >확인</button>
							 <!-- <input type="button" name="changeButton" value="수정">
							 <input type="button" name="confirmButton" value="확인"> -->
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            <div class="h6 text-muted">Forest Board</div>
                        </li>
                        <h2 class="forestInformText">${forest.forestInformText }</h2>
	 					<h2 class="forsetInformTextWriter">${forest.forestInformWriter }</h2>
	 					<h2 class="forestInformTextRegDate">${forest.forestInformRegDate }</h2>
	 					<h2 class="forestInformTextForm">
						 	<input type="hidden" name="changeInformText" value=${forest.forestInformText }>
					 	</h2>
					 	 <button type="button" class="btn btn-default navbar-btn" name="informTextchangeButton" >수정</button>
						 <button type="button" class="btn btn-default navbar-btn" name="informTextconfirmButton" >확인</button>
						 <!-- <input type="button" name="informTextchangeButton" value="수정">
						 <input type="button" name="informTextconfirmButton" value="확인"> -->
						 
                        
                    </ul>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            <div class="h6 text-muted">Trees</div>
                            
                        </li>
                        <li class="list-group-item">
                            <ul id='infinite-list'>
							</ul>
                        </li>
                        
                    </ul>
                </div>
            </div>
            <div class="col-md-6 gedf-main">

                <!--- \\\\\\\Post-->
                <div class="card gedf-card">
                    <div class="card-header">
                        <ul class="nav nav-tabs card-header-tabs" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="posts-tab" data-toggle="tab" href="#posts" role="tab" aria-controls="posts" aria-selected="true">Make
                                    a publication</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="images-tab" data-toggle="tab" role="tab" aria-controls="images" aria-selected="false" href="#images">Images</a>
                            </li>
                        </ul>
                    </div>
                    <div class="card-body">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="posts" role="tabpanel" aria-labelledby="posts-tab">
                                <div class="form-group">
                                    <label class="sr-only" for="message">post</label>
                                    <textarea class="form-control" id="message" rows="3" placeholder="What are you thinking?"></textarea>
                                </div>

                            </div>
                            <div class="tab-pane fade" id="images" role="tabpanel" aria-labelledby="images-tab">
                                <div class="form-group">
                                    <div class="custom-file">
                                        <input type="file" class="custom-file-input" id="customFile">
                                        <label class="custom-file-label" for="customFile">Upload image</label>
                                    </div>
                                </div>
                                <div class="py-4"></div>
                            </div>
                        </div>
                        <div class="btn-toolbar justify-content-between">
                            <div class="btn-group">
                                <button type="submit" class="btn btn-primary">share</button>
                            </div>
                            <div class="btn-group">
                                <button id="btnGroupDrop1" type="button" class="btn btn-link dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">
                                    <i class="fa fa-globe"></i>
                                </button>
                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="btnGroupDrop1">
                                    <a class="dropdown-item" href="#"><i class="fa fa-globe"></i> Public</a>
                                    <a class="dropdown-item" href="#"><i class="fa fa-users"></i> Friends</a>
                                    <a class="dropdown-item" href="#"><i class="fa fa-user"></i> Just me</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Post /////-->

                <!--- \\\\\\\Post-->
                <div class="card gedf-card">
                    <div class="card-header">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="mr-2">
                                    <img class="rounded-circle" width="45" src="https://picsum.photos/50/50" alt="">
                                </div>
                                <div class="ml-2">
                                    <div class="h5 m-0">@LeeCross</div>
                                    <div class="h7 text-muted">Miracles Lee Cross</div>
                                </div>
                            </div>
                            <div>
                                <div class="dropdown">
                                    <button class="btn btn-link dropdown-toggle" type="button" id="gedf-drop1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="fa fa-ellipsis-h"></i>
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="gedf-drop1">
                                        <div class="h6 dropdown-header">Configuration</div>
                                        <a class="dropdown-item" href="#">Save</a>
                                        <a class="dropdown-item" href="#">Hide</a>
                                        <a class="dropdown-item" href="#">Report</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="card-body">
                        <div class="text-muted h7 mb-2"> <i class="fa fa-clock-o"></i>10 min ago</div>
                        <a class="card-link" href="#">
                            <h5 class="card-title">Lorem ipsum dolor sit amet, consectetur adip.</h5>
                        </a>

                        <p class="card-text">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo recusandae nulla rem eos ipsa praesentium esse magnam nemo dolor
                            sequi fuga quia quaerat cum, obcaecati hic, molestias minima iste voluptates.
                        </p>
                    </div>
                    <div class="card-footer">
                        <a href="#" class="card-link"><i class="fa fa-gittip"></i> Like</a>
                        <a href="#" class="card-link"><i class="fa fa-comment"></i> Comment</a>
                        <a href="#" class="card-link"><i class="fa fa-mail-forward"></i> Share</a>
                    </div>
                </div>
                <!-- Post /////-->


                <!--- \\\\\\\Post-->
                <div class="card gedf-card">
                    <div class="card-header">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="mr-2">
                                    <img class="rounded-circle" width="45" src="https://picsum.photos/50/50" alt="">
                                </div>
                                <div class="ml-2">
                                    <div class="h5 m-0">@LeeCross</div>
                                    <div class="h7 text-muted">Miracles Lee Cross</div>
                                </div>
                            </div>
                            <div>
                                <div class="dropdown">
                                    <button class="btn btn-link dropdown-toggle" type="button" id="gedf-drop1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="fa fa-ellipsis-h"></i>
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="gedf-drop1">
                                        <div class="h6 dropdown-header">Configuration</div>
                                        <a class="dropdown-item" href="#">Save</a>
                                        <a class="dropdown-item" href="#">Hide</a>
                                        <a class="dropdown-item" href="#">Report</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="card-body">
                        <div class="text-muted h7 mb-2"> <i class="fa fa-clock-o"></i> 10 min ago</div>
                        <a class="card-link" href="#">
                            <h5 class="card-title"> Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit consectetur
                                deserunt illo esse distinctio.</h5>
                        </a>

                        <p class="card-text">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam omnis nihil, aliquam est, voluptates officiis iure soluta
                            alias vel odit, placeat reiciendis ut libero! Quas aliquid natus cumque quae repellendus. Lorem
                            ipsum dolor sit amet consectetur adipisicing elit. Ipsa, excepturi. Doloremque, reprehenderit!
                            Quos in maiores, soluta doloremque molestiae reiciendis libero expedita assumenda fuga quae.
                            Consectetur id molestias itaque facere? Hic!
                        </p>
                        <div>
                            <span class="badge badge-primary">JavaScript</span>
                            <span class="badge badge-primary">Android</span>
                            <span class="badge badge-primary">PHP</span>
                            <span class="badge badge-primary">Node.js</span>
                            <span class="badge badge-primary">Ruby</span>
                            <span class="badge badge-primary">Paython</span>
                        </div>
                    </div>
                    <div class="card-footer">
                        <a href="#" class="card-link"><i class="fa fa-gittip"></i> Like</a>
                        <a href="#" class="card-link"><i class="fa fa-comment"></i> Comment</a>
                        <a href="#" class="card-link"><i class="fa fa-mail-forward"></i> Share</a>
                    </div>
                </div>
                <!-- Post /////-->


                <!--- \\\\\\\Post-->
                <div class="card gedf-card">
                    <div class="card-header">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="mr-2">
                                    <img class="rounded-circle" width="45" src="https://picsum.photos/50/50" alt="">
                                </div>
                                <div class="ml-2">
                                    <div class="h5 m-0">@LeeCross</div>
                                    <div class="h7 text-muted">Miracles Lee Cross</div>
                                </div>
                            </div>
                            <div>
                                <div class="dropdown">
                                    <button class="btn btn-link dropdown-toggle" type="button" id="gedf-drop1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="fa fa-ellipsis-h"></i>
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="gedf-drop1">
                                        <div class="h6 dropdown-header">Configuration</div>
                                        <a class="dropdown-item" href="#">Save</a>
                                        <a class="dropdown-item" href="#">Hide</a>
                                        <a class="dropdown-item" href="#">Report</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="card-body">
                        <div class="text-muted h7 mb-2"> <i class="fa fa-clock-o"></i> Hace 40 min</div>
                        <a class="card-link" href="#">
                            <h5 class="card-title">Totam non adipisci hic! Possimus ducimus amet, dolores illo ipsum quos
                                cum.</h5>
                        </a>

                        <p class="card-text">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam sunt fugit reprehenderit consectetur exercitationem odio,
                            quam nobis? Officiis, similique, harum voluptate, facilis voluptas pariatur dolorum tempora sapiente
                            eius maxime quaerat.
                            <a href="https://mega.nz/#!1J01nRIb!lMZ4B_DR2UWi9SRQK5TTzU1PmQpDtbZkMZjAIbv97hU" target="_blank">https://mega.nz/#!1J01nRIb!lMZ4B_DR2UWi9SRQK5TTzU1PmQpDtbZkMZjAIbv97hU</a>
                        </p>
                    </div>
                    <div class="card-footer">
                        <a href="#" class="card-link"><i class="fa fa-gittip"></i> Like</a>
                        <a href="#" class="card-link"><i class="fa fa-comment"></i> Comment</a>
                        <a href="#" class="card-link"><i class="fa fa-mail-forward"></i> Share</a>
                    </div>
                </div>
                <!-- Post /////-->



            </div>
            <div class="col-md-3">
                <div class="card gedf-card">
                    <div class="card-body">
                        <h5 class="card-title">Invite Tree</h5>
                       <!--  <h6 class="card-subtitle mb-2 text-muted">Tree List</h6> -->
                        <!-- <input type="text" name="searchTree" > -->
                        <input type="text" class="form-control" placeholder="TreeName" aria-describedby="basic-addon1" name="searchTree">
						 <form name="inviteTree" action="/forest/inviteTree" method="post">
						 	<input type="hidden" name = "forestNo" value="${param.forestNo }">
						 	<input type="hidden" name = "profileNo" value="${param.profileNo }">
							 <ul id='inviteTree-list'>
							</ul>
							<input type="submit" name="inviteButton" value="초대하기">
							 
						 </form>
                    </div>
                </div>
                
            </div>
        </div>
    </div>














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
		 var forestNo = list[tree].treeNo
		 //클릭시 수정필요
		 //getTree로 이동!
		 /* item.setAttribute('onclick',"location.href='getForest?forestNo=21") */
		 item.setAttribute('onclick',`location.href='/forest/getForest?forestNo=\${forestNo}'`)
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