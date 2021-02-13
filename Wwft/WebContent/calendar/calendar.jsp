<%@ page language="java" contentType="text/html; charset=UTF-8" %>
  <%@ page pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>달력</title>
</head>
<style>
  .iframe-container {
  overflow: hidden;
  /* 16:9 aspect ratio */
  padding-top: 56.25%;
  position: relative;
}

.iframe-container iframe {
  overflow: hidden;
   border: 0;
   height: 100%;
   left: 0;
   position: absolute;
   top: 0;
   width: 100%;
}
  
</style>
<body>

    <header id="wrap"> 
        
          
        <jsp:include page="../common/navBar.jsp"/>
      

      </header>
      <!-- <div class="container-fluid">
        <div class="row flex-nowrap">
          <div class="col-12 col-md-3 col-xl-2 bd-sidebar">
            <ul class="nav">
              <li><a href="/user/getUserList" target="site">회원목록</a></li>
              <li><a href="/admin/getReportList" target="site">신고게시글목록</a></li>
              
            </ul>
            <br>
          </div>
          <main class="col-12 col-md-9 col-xl-10 py-md-3 bd-content" role="main">
            <iframe  frameborder="0" name="site"style="overflow:hidden;overflow-x:hidden;overflow-y:hidden;height:100%;width:100%;position:absolute;top:0px;left:0px;right:0px;bottom:0px"  allowfullscreen src="/event/getCalendar?treeNo=${tree.treeNo}"></iframe>
          </main>
        </div>
      </div> -->
      <div class="iframe-container">
        <iframe   src="/event/getCalendar?treeNo=${tree.treeNo}" scrolling="no"></iframe>
      </div>
        
     <!-- <div class="container">
        <div class="container">
          <iframe src="/event/getCalendar?treeNo=${tree.treeNo}" allowfullscreen frameborder="0" style="overflow:hidden;height:100%;width:100%" height="100%" width="100%" ></iframe>
        </div>
      </div>
      
         -->
   
              
            

</body>
</html>