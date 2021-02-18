<%@ page language="java" contentType="text/html; charset=UTF-8" %>
  <%@ page pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!-- <% 

  response.setHeader("P3P","CP='CAO PSA CONi OTR OUR DEM ONL'"); 
  
  %> -->

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>관리자</title>
</head>
<body>

    <header id="wrap"> 
        
          
        <jsp:include page="../common/navBar.jsp"/>
      

      </header>

      <style>
        .bd-navbar {
          position: sticky;
          top: 0;
          z-index: 1071;
          min-height: 4rem;
          box-shadow: 0 0.5rem 1rem rgba(0,0,0,.05), inset 0 -1px 0 rgba(0,0,0,.1);
        }
        .bd-sidebar {
          position: sticky;
          top: 4rem;
          z-index: 1000;
          height: calc(100vh - 4rem);
          background: #eee;
          border-right: 1px solid rgba(0,0,0,.1);
          overflow-y: auto;
          min-width: 160px;
          /* max-width: 220px; */
        }
        .bd-sidebar .nav {
          display: block;
        }
        .bd-sidebar .nav>li>a {
          display: block;
          padding: .25rem 1.5rem;
          font-size: 90%;
        }
        </style>
        
        
      
        
        <div class="container-fluid">
          <div class="row flex-nowrap">
            <div class="col-12 col-md-3 col-xl-2 bd-sidebar">
              <ul class="nav">
                <li><a href="/user/getUserList" target="site">회원목록</a></li>
                <li><a href="/admin/getReportList" target="site">신고게시글목록</a></li>
                
              </ul>
              <br>
            </div>
            <main class="col-12 col-md-9 col-xl-10 py-md-3 bd-content" role="main">
              <iframe  frameborder="0" name="site"style="overflow:hidden;overflow-x:hidden;overflow-y:hidden;height:100%;width:100%;position:absolute;top:0px;left:0px;right:0px;bottom:0px"  allowfullscreen src="/user/getUserList"></iframe>
            </main>
          </div>
        </div>

</body>
</html>