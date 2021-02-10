<%@ page language="java" contentType="text/html; charset=UTF-8" %>
  <%@ page pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NOTICE_MESSAGE</title>

    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="/resources/css/noticemessage/main.css" >

    <!-- <script  src="https://code.jquery.com/jquery-3.5.1.min.js"  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="  crossorigin="anonymous"></script> -->
     <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-serialize-object/2.5.0/jquery.serialize-object.min.js"></script> -->
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script> -->
    <script src="../resources/javascript/noticemessage/main.js"></script>
</head>
<body>

    <header id="wrap"> 
        
          
        <jsp:include page="../common/navBar.jsp"/>
      

      </header>
    
    
    <!-- icon 모음
    <i class="zmdi zmdi-comment-outline"></i>
    <i class="zmdi zmdi-alert-circle"></i>
    <i class="zmdi zmdi-account-add"></i>

    -->
    
    <script>
$(document).ready(function () {


    // $(".remove").on("click",function(e) {
    $(document).on("click","#remove",function(e) {
        e.preventDefault();
        let removeConfirm = confirm("삭제 하시겠습니까 ?")
        if(removeConfirm==true){
            let noticeMessageNo = $(this).closest("li").find('.noticeMessageNo').val();
            alert(noticeMessageNo);
            let messageObj = $(this);

            // alert($(messageObj).closest("li"))
            

            //remove
            $.ajax({
                url: `/noticeMessage/json/removeNoticeMessage`,
                type: 'POST',
                data: JSON.stringify({ noticeMessageNo: noticeMessageNo }),
                dataType: 'json',
                headers: {
                             "Accept": "application/json",
                            "Content-Type": "application/json"

                             },
            success: function (data, status) {
                    // alert('성공')
                    // alert(status)
                    if(status=="success"){
                    $(messageObj).closest("li").remove();
                    }
            
              


            }
        });
        //ajax끝

        }else{
            //취소시
        }
        
    })//remove끝 


    $(document).on("click","#accept",function(e) {
        e.preventDefault();
        let removeConfirm = confirm("수락하시겠습니까 ?")
        if(removeConfirm==true){
            let noticeMessageNo = $(this).closest("li").find('.noticeMessageNo').val();
            let noticeMessageState = '4'; //4= 초대수
            let url = window.location.href;
            // $(this).attr('class','<button type="button" class="btn btn-success btn-sm" >수락</button>');
            
            // alert(noticeMessageNo);

            if(url.indexOf('getTree')!=-1){
            // alert('나무의메시지함')
            url=`/noticeMessage/json/treeNoticeMessageList/\${treeNo}/\${page}`;
            $(this).closest("li").find('p').text('회원님의 나무가 숲에 속');
            $(this).closest("li").find('p').append('<a href="javascript:void(0);">숲 둘러보기</a>');
            let messageObj = $(this);

        }else{
            // alert('숲의메시지함')
            $(this).closest("li").remove();
            url=`/noticeMessage/json/forestNoticeMessageList/\${forestNo}/\${page}`;
        }

            // $(this).closest("li").find('p').text('회원님의 나무가 숲에 속');
            // $(this).closest("li").find('p').append('<a href="javascript:void(0);">숲 둘러보기</a>');
            // let messageObj = $(this);

            // $(this).remove();

            // alert($(messageObj).closest("li"))
            

            //update해야함 나무에서 초대수락하면 번호 줘서 아직 update rest미완성 의연이형꺼랑 합쳐야함
        //     $.ajax({
        //         url: `/noticeMessage/json/removeNoticeMessage`,
        //         type: 'POST',
        //         data: JSON.stringify({ noticeMessageNo: noticeMessageNo, noticeMessageState : noticeMessageState   }),
        //         dataType: 'json',
        //         headers: {
        //                      "Accept": "application/json",
        //                     "Content-Type": "application/json"

        //                      },
        //     success: function (data, status) {
        //             // alert('성공')
        //             // alert(status)
        //             if(status=="success"){
        //             $(messageObj).closest("li").remove();
        //             }
            
              


        //     }
        // });
        // //ajax끝

        }else{
            //수락눌렀다가 취소
        }
        
    })//update는 나무에서AND REMOVE는 숲에서끝 

    let page = 1;
    let treeNo = 1;
    let forestNo =1;
    let profileNo =1;
    $(window).scroll(function () {
        
        
    // End of the document reached?
    if ($(document).height() - $(this).height() == $(this).scrollTop()) {
        page++;
        let url = window.location.href;
        // alert(window.location.href)
        // alert(url.indexOf('getTree'))
        if(url.indexOf('getTree')!=-1){
            // alert('트루')
            url=`/noticeMessage/json/treeNoticeMessageList/\${treeNo}/\${profileNo}/\${page}`;
        }else{
            // alert('폴스')
            url=`/noticeMessage/json/forestNoticeMessageList/\${forestNo}/\${page}`;
        }
        // alert(url)
        // alert(page)
        // alert('Scrolled to Bottom');
        //treeNo 가져와야하고 , page넘기는데 뭘로 ???? search ? search 생성후 거기에 page set해주는걸로
        $.ajax( 
				{
					url : url ,
					method : "GET" ,
					dataType : "json" ,
					
					success : function(JSONData , status) {
                        createTag(JSONData.list);
         
                    }
                
                
                });

        

        
    }
}); 
    
})

    </script>
   <!-- <div>
       <a href="/noticeMessage/getNoticeMessageList?treeNo=1"><input type="button" value="메시지함">${count}</a>
   </div> -->

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
        <ul class="cbp_tmtimeline" >
                   
        </ul>
      </main>
    </div>
  </div>
    
    <!-- <div class="container">
        <div class="row">
            <div class="col-md-10">
                <ul class="cbp_tmtimeline" >
                   
                </ul>  
            </div>
        </div>
    </div> -->




    <script>



        let noticeMessage = [];
    <c:forEach items="${noticeMessageList.list}" var="list">
          noticeMessage.push({ 
            noticeMessageNo  : "${list.noticeMessageNo}",
            noticeMessageState : "${list.noticeMessageState}",
            noticeMessageType : "${list.noticeMessageType}",
            postNo : "${list.postNo}",
            treeNo : "${list.treeNo}",
            sender : "${list.sender}",
            noticeMessageDate : "${list.noticeMessageDate}",
            noticeMessageDetail : "${list.noticeMessageDetail}",
            forestNo : "${list.forestNo}",
            postImage : "${list.postImage}"
        
        });
    </c:forEach>
    
    createTag(noticeMessage);
   
    </script>


    
</body>
</html>