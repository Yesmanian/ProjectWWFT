<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>WWFT</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->

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
  /* border: 10px solid black; */
}
	#inviteTree-list {
  /* We need to limit the height and show a scrollbar */
  width: 200px;
  height: 100px;
  overflow: auto;

  /* Optional, only to check that it works with margin/padding */
   margin: 30px;
  padding: 20px;
  /* border: 10px solid black; */
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
.dropdown-toggle::after {
            content: none;
            display: none;
        }

.col-md-6{
	height: 500px;
	overflow: auto;
	
}
/* .col-md-6::-webkit-scrollbar {
    width: 10px;
  }
  .col-md-6::-webkit-scrollbar-thumb {
    background-color: #2f3542;
  }
  .col-md-6::-webkit-scrollbar-track {
    background-color: grey;
  } */
</style>
<script type="text/javascript">
 	//
 	//얼마나 지났는지
function timeForToday(value) {
    const today = new Date();
    const timeValue = new Date(value);
    // alert("타임벨류"+timeValue+"today : "+today)

    const betweenTime = Math.floor((today.getTime() - timeValue.getTime()) / 1000 / 60);
    if (betweenTime < 1) return '방금전';
    if (betweenTime < 60) {
        return `${betweenTime}분전`;
    }

    const betweenTimeHour = Math.floor(betweenTime / 60);
    if (betweenTimeHour < 24) {
        return `${betweenTimeHour}시간전`;
    }

    const betweenTimeDay = Math.floor(betweenTime / 60 / 24);
    if (betweenTimeDay < 365) {
        return `${betweenTimeDay}일전`;
    }

    return `${Math.floor(betweenTimeDay / 365)}년전`;
}
//오전 오후 
function formatAMPM(value) {
    let date = new Date(value);
    var hours = date.getHours();
    var minutes = date.getMinutes();
    var ampm = hours >= 12 ? '오후' : '오전';
    // hours = hours % 12;
    hours = hours ? hours : 12; // the hour '0' should be '12'
    minutes = minutes < 10 ? '0' + minutes : minutes;
    var strTime = hours + ':' + minutes + ' ' + ampm;
    return strTime;
}
 	
 	
 	//bluer
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
					alert("통신 실패6")
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
			// var forestInformWriter = "${profile.profileName}";
			var params = {
					forestNo         : ${forest.forestNo},
					forestInformText : $('input[name=changeInformText]').val(),
					forestInformWriter   : "${profile.profileName}"
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
					alert("통신 실패7")
				}
			})
		
		
	})
	
	
		
		
	})
	
	
		
	
	
</script>
</head>
<body>
	<header id="wrap"> 
 		    <jsp:include page="../common/navBar.jsp"/>
      </header>   

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
	 					<h5 class="forsetInformTextWriter">작성자 :${forest.forestInformWriter }</h5>
	 					<h5 class="forestInformTextRegDate">작성일자 :${forest.forestInformRegDate }</h5>
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
				
				
                <c:forEach var="postFile" items="${listPost}">
                	
                	<%-- ${postFile.listPostMapPost }
                	${postFile.listPostMapList } --%>
                	
                	 <!--- \\\\\\\Poststart-->
                <div class="card gedf-card">
                    <div class="card-header">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="mr-2">
                                    <img class="rounded-circle" width="45" src="https://picsum.photos/50/50" alt="">
                                </div>
                                <div class="ml-2">
                                    <div class="h5 m-0">${postFile.listPostMapPost.postWriter}</div>
                                    <!-- <div class="h7 text-muted">{treeName}</div> -->
                                    <div class="text-muted h7 mb-2"> <i class="fa fa-clock-o"></i>${postFile.listPostMapPost.postRegDate}</div>
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
                        <!-- <div class="text-muted h7 mb-2"> <i class="fa fa-clock-o"></i>10 min ago</div> -->
                        <a class="card-link" href="#">
                           
                           <!-- 슬라이드 start -->
							<div class="" style="margin-left: 5px; margin-right: 5px;">
								<div id="carouselExampleIndicators" class="carousel slide"
									data-ride="carousel">
									<ol class="carousel-indicators">
										<c:set var ="i" value ="0"/>
							  			<c:forEach var ="file" items="${postFile.listPostMapList}">
								  			<c:set var ="i" value="${i+1}"/>
								  			<li data-target="#carouselExampleIndicators" data-slide-to="${i}" id ="liList"></li>
				  						</c:forEach>
									
									</ol>
									<div class="carousel-inner">
										<c:set var="i" value="-1" />
										<c:forEach var="file" items="${postFile.listPostMapList}">
											<c:set var="i" value="${i+1}" />
											<c:choose>
												<c:when test="${i eq 0}">
												    <div class="carousel-item active">
														<img src="/resources/images/uploadFiles/${file}" class="d-block w-100" alt="...">
													</div>
												    </c:when>
												
												  <c:otherwise>
												       <div class="carousel-item">
															<img src="/resources/images/uploadFiles/${file}" class="d-block w-100" alt="...">
														</div>
												   </c:otherwise>
											</c:choose>
										</c:forEach>
										
									</div>
									<a class="carousel-control-prev" href="#carouselExampleIndicators"
										role="button" data-slide="prev"> <span
										class="carousel-control-prev-icon" aria-hidden="true"></span> <span
										class="sr-only">Previous</span>
									</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
										role="button" data-slide="next"> <span
										class="carousel-control-next-icon" aria-hidden="true"></span> <span
										class="sr-only">Next</span>
									</a>
								</div>
							</div>  
			<!-- 슬라이드END -->
                           
                         </a> 

                        <p class="card-text">
                            ${postFile.listPostMapPost.postDetail}
                        </p>
                    </div>
                    <div class="card-footer" style="padding-top: 3px;padding-bottom: 5px;padding-left: 20px;">
                        <!-- <a href="#" class="card-link"><i class="fa fa-gittip"></i> Like</a> -->
                        <a href="#" class="card-link"><i class="fa fa-comment"></i> See Detail</a>
                        <!-- <a href="#" class="card-link"><i class="fa fa-mail-forward"></i> Share</a> -->
                    </div>
                </div>
                <div></br></div>
				<!-- postend -->
                	
                	
                	
                	
                	
                </c:forEach>

                <!--- \\\\\\\Poststart-->
                <div class="card gedf-card">
                    <div class="card-header">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="mr-2">
                                    <img class="rounded-circle" width="45" src="https://picsum.photos/50/50" alt="">
                                </div>
                                <div class="ml-2">
                                    <div class="h5 m-0">${postList.post15.postWriter}</div>
                                    <!-- <div class="h7 text-muted">{treeName}</div> -->
                                    <div class="text-muted h7 mb-2"> <i class="fa fa-clock-o"></i>10 min ago</div>
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
                        <!-- <div class="text-muted h7 mb-2"> <i class="fa fa-clock-o"></i>10 min ago</div> -->
                        <a class="card-link" href="#">
                           
                           <!-- 슬라이드 start -->
							<div class="" style="margin-left: 5px; margin-right: 5px;">
								<div id="carouselExampleIndicators" class="carousel slide"
									data-ride="carousel">
									<ol class="carousel-indicators">
										<c:set var ="i" value ="0"/>
							  			<c:forEach var ="file" items="${postList.fileList5}">
								  			<c:set var ="i" value="${i+1}"/>
								  			<li data-target="#carouselExampleIndicators" data-slide-to="${i}" id ="liList"></li>
				  						</c:forEach>
									
									</ol>
									<div class="carousel-inner">
										<c:set var="i" value="-1" />
										<c:forEach var="file" items="${postList.fileList5}">
											<c:set var="i" value="${i+1}" />
											<c:choose>
												<c:when test="${i eq 0}">
												    <div class="carousel-item active">
														<img src="/resources/images/uploadFiles/${file}" class="d-block w-100" alt="...">
													</div>
												    </c:when>
												
												  <c:otherwise>
												       <div class="carousel-item">
															<img src="/resources/images/uploadFiles/${file}" class="d-block w-100" alt="...">
														</div>
												   </c:otherwise>
											</c:choose>
										</c:forEach>
										
									</div>
									<a class="carousel-control-prev" href="#carouselExampleIndicators"
										role="button" data-slide="prev"> <span
										class="carousel-control-prev-icon" aria-hidden="true"></span> <span
										class="sr-only">Previous</span>
									</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
										role="button" data-slide="next"> <span
										class="carousel-control-next-icon" aria-hidden="true"></span> <span
										class="sr-only">Next</span>
									</a>
								</div>
							</div>  
			<!-- 슬라이드END -->
                           
                         </a> 

                        <p class="card-text">
                            ${postList.post10.postDetail}
                        </p>
                    </div>
                    <div class="card-footer" style="padding-top: 3px;padding-bottom: 5px;padding-left: 20px;">
                        <!-- <a href="#" class="card-link"><i class="fa fa-gittip"></i> Like</a> -->
                        <a href="#" class="card-link"><i class="fa fa-comment"></i> See Detail</a>
                        <!-- <a href="#" class="card-link"><i class="fa fa-mail-forward"></i> Share</a> -->
                    </div>
                </div>
                
				<!-- postend -->

                
                <!--<div class="card gedf-card">
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
                </div>-->
                



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
                    
                    <div class="card-body">
                    	<h5 class="card-title">초대요청 나무</h5>
                    </div>
                    
                    
                </div>
                
            </div>
        </div>
    </div>














 <!-- Hello GetForest.jsp --><br/>
 <div>
	 $<%-- {forest} --%>
	
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
		 var treeNo = list[tree].treeNo
		 //클릭시 수정필요
		 //getTree로 이동!
		 /* item.setAttribute('onclick',"location.href='getForest?forestNo=21") */
		 item.setAttribute('onclick',`location.href='/tree/getUserTree?treeNo=\${treeNo}'`)
		 listElm.appendChild(item);
		 	
	}	
}

var restLoadPostMore = function(postList,fileList){
	
	$(".col-md-6").append(`
			
			 <iframe src="/post/getPost&postNo=${postList.postNo }"></iframe>
			 
		`);
	
	
	
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
	
/* 	var postPageNumber = 1;
	var postParams = {
			forestNo   : ${param.forestNo},
			pageNumber : postPageNumber
	}
	var postJsonString = JSON.stringify(postParams)
	//alert(postJsonString)
	
	$.ajax({
		type : "POST",
		url  : "/forest/json/getPostList",
		data : postJsonString,
		headers : {
            "Accept" : "application/json",
            "Content-Type" : "application/json"
         },
		success : function(res,status){
			
			
			
			var postList = res.post0;
			var fileList = res.fileList0;
			var postList = 
					{'postNo' : 3, 'postRegDate':'2021-02-04' , 'postDetail':123, 'postWriter':'초초', 'postState':0, 'postTreeNo':1, 'checkboxState':null, 'albumName':null, 'firstImageName':null, 'profileNo':0};	
				
			var fileList = ['1.jpg', '2.jpg', '3.jpg'];
			

			//alert(postList.postNo)
			//alert(fileList[0])
			alert(postList.postNo)
			alert(fileList[0])
			//restLoadPostMore(postList,fileList);
			
		
			
			
		},
		error :  function(XMLHttpRequest, textStatus,errorThrown){
			alert("통신 실패1")
		}
	}) */
	
	
	
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
			alert("통신 실패2")
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
			alert("통신 실패3")
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
	 <%-- ${param.profileNo} --%>
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
	 	<input type="hidden" name = "forestNo" value="${forest.forestNo }">
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
					alert("통신 실패4")
				}
			}) 
			
		})
	 
	 </script>
 </div><br/>
 
 <div>
 	post
 	<script type="text/javascript">
 		//RestPost
 		//postRest
	
 	</script>
 	
 
 </div>
 
 <div>
 	<%-- ${acceptTreeList }
 	 ${postList.post9.postNo}
 	${postList.fileList9[0]}
 	${postList.fileList5}
 	${postList.post15.postDetail}
 	${postSize } --%>
 	${listPost[0].listPostMapPost }
 	${listPost[0].listPostMapList }
 </div>
 
 
</body>
</html>