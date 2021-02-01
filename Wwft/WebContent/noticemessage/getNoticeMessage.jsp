<%@ page language="java" contentType="text/html; charset=UTF-8" %>
  <%@ page pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NOTICE_MESSAGE</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="/resources/css/noticemessage/main.css" >

    <script  src="https://code.jquery.com/jquery-3.5.1.min.js"  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="  crossorigin="anonymous"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-serialize-object/2.5.0/jquery.serialize-object.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <script src="../resources/javascript/noticemessage/main.js"></script>

</head>
<body>
    <!-- icon 모음
    <i class="zmdi zmdi-comment-outline"></i>
    <i class="zmdi zmdi-alert-circle"></i>
    <i class="zmdi zmdi-account-add"></i>

    -->
    <script>
$(document).ready(function () {
    $(".remove").on("click",function() {
        let removeConfirm = confirm("삭제 하시겠습니까 ?")
        if(removeConfirm==true){
            let noticeMessageNo = $(this).find('.noticeMessageNo').val()
            let messageObj = $(this);

            alert($(messageObj).closest("li"))
            

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
            
        }
        
    })
    
})

    </script>
   
    
    <div class="container">
        <div class="row">
            <div class="col-md-10">
                <ul class="cbp_tmtimeline" >
                    <!-- <li>
                        <time class="cbp_tmtime" datetime="2017-11-04T18:30"><span class="hidden">25/12/2017</span> <span class="large">Now</span></time>
                        <div class="cbp_tmicon"><i class="zmdi zmdi-account"></i></div>
                        <div class="cbp_tmlabel empty"> <span>No Activity</span> </div>
                    </li> -->
                    <!-- <li>
                        <time class="cbp_tmtime" datetime="2017-11-04T03:45"><span>03:45 AM</span> <span>Today</span></time>
                        <div class="cbp_tmicon bg-info"><i class="zmdi zmdi-comment-outline"></i></div>
                        <div class="cbp_tmlabel">
                            <a class="remove" href="#" ><i class="zmdi zmdi-delete"></i><input class="noticeMessageNo" type="hidden" name="noticeMessageNo" value=""> </a>
                            <h2><a href="javascript:void(0);">Art Ramadani</a></h2>
                            <p>Tolerably earnestly middleton extremely distrusts she boy now not. Add and offered prepare how cordial two promise. Greatly who affixed suppose but enquire compact prepare all put. Added forth chief trees but rooms think may.</p>
                        </div>
                    </li> -->
                    <!-- <li>
                        <time class="cbp_tmtime" datetime="2017-11-03T13:22"><span>01:22 PM</span> <span>Yesterday</span></time>
                        <div class="cbp_tmicon bg-green"> <i class="zmdi zmdi-case"></i></div>
                        <div class="cbp_tmlabel">
                            <h2><a href="javascript:void(0);">Job Meeting</a></h2>
                            <p>You have a meeting at <strong>Laborator Office</strong> Today.</p>
                        </div>
                    </li> -->
                    <!-- <li>
                        <time class="cbp_tmtime" datetime="2017-10-22T12:13"><span>12:13 PM</span> <span>Two weeks ago</span></time>
                        <div class="cbp_tmicon bg-blush"><i class="zmdi zmdi-alert-circle"></i></div>
                        <div class="cbp_tmlabel">
                            <h2><a href="javascript:void(0);">Arlind Nushi</a> <span>checked in at</span> <a href="javascript:void(0);">New York</a></h2>
                            <blockquote>
                                <p class="blockquote blockquote-primary">
                                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout."                                    
                                    <br>
                                    <small>
                                        - Isabella
                                    </small>
                                </p>
                            </blockquote>
                            <div class="row clearfix">
                                <div class="col-lg-12">
                                    <div class="map m-t-10">
                                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d193595.91477011208!2d-74.11976308802028!3d40.69740344230033!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sin!4v1508039335245" frameborder="0" style="border:0; width: 100%;" allowfullscreen=""></iframe>
                                    </div>
                                </div>
                            </div>        					
                        </div>
                    </li>
                    <li>
                        <time class="cbp_tmtime" datetime="2017-10-22T12:13"><span>12:13 PM</span> <span>Two weeks ago</span></time>
                        <div class="cbp_tmicon bg-orange"><i class="zmdi zmdi-account-add"></i></div>
                        <div class="cbp_tmlabel">
                            <h2><a href="javascript:void(0);">Eroll Maxhuni</a> <span>uploaded</span> 4 <span>new photos to album</span> <a href="javascript:void(0);">Summer Trip</a></h2>
                            <blockquote>Pianoforte principles our unaffected not for astonished travelling are particular.</blockquote>
                            <div class="row">
                                <div class="col-lg-3 col-md-6 col-6"><a href="javascript:void(0);"><img src="assets/images/image1.jpg" alt="" class="img-fluid img-thumbnail m-t-30"></a> </div>
                                <div class="col-lg-3 col-md-6 col-6"><a href="javascript:void(0);"> <img src="assets/images/image2.jpg" alt="" class="img-fluid img-thumbnail m-t-30"></a> </div>
                                <div class="col-lg-3 col-md-6 col-6"><a href="javascript:void(0);"> <img src="assets/images/image3.jpg" alt="" class="img-fluid img-thumbnail m-t-30"> </a> </div>
                                <div class="col-lg-3 col-md-6 col-6"><a href="javascript:void(0);"> <img src="assets/images/image4.jpg" alt="" class="img-fluid img-thumbnail m-t-30"> </a> </div> -->
                            <!-- </div>
                        </div>
                    </li> -->
                    <!-- <li>
                        <time class="cbp_tmtime" datetime="2017-11-03T13:22"><span>01:22 PM</span> <span>Two weeks ago</span></time>
                        <div class="cbp_tmicon bg-green"> <i class="zmdi zmdi-case"></i></div>
                        <div class="cbp_tmlabel">
                            <h2><a href="javascript:void(0);">Job Meeting</a></h2>
                            <p>You have a meeting at <strong>Laborator Office</strong> Today.</p>                            
                        </div>
                    </li>
                    <li>
                        <time class="cbp_tmtime" datetime="2017-10-22T12:13"><span>12:13 PM</span> <span>Month ago</span></time>
                        <div class="cbp_tmicon bg-blush"><i class="zmdi zmdi-pin"></i></div>
                        <div class="cbp_tmlabel">
                            <h2><a href="javascript:void(0);">Arlind Nushi</a> <span>checked in at</span> <a href="javascript:void(0);">Laborator</a></h2>
                            <blockquote>Great place, feeling like in home.</blockquote>                            
                        </div>
                    </li> -->
                </ul>  
            </div>
        </div>
    </div>




    <script>



        let noticeMessage = [];
    <c:forEach items="${noticeMessageList}" var="list">
          noticeMessage.push({ 
            noticeMessageNo  : "${list.noticeMessageNo}",
            noticeMessageState : "${list.noticeMessageState}",
            noticeMessageType : "${list.noticeMessageType}",
            postNo : "${list.postNo}",
            treeNo : "${list.treeNo}",
            sender : "${list.sender}",
            noticeMessageDate : "${list.noticeMessageDate}",
            noticeMessageDetail : "${list.noticeMessageDetail}",
            forestNo : "${list.forestNo}"
        
        });
    </c:forEach>
    
    //  alert(JSON.stringify(noticeMessage[0]));
    $.each( noticeMessage,function(index, item){
        if(item.noticeMessageType=='0'){
            // alert(item.noticeMessageDate);
            let date = timeForToday(item.noticeMessageDate);
            let ampm = formatAMPM(item.noticeMessageDate)
          
                    $(".cbp_tmtimeline").append(` <li>
                        <time class="cbp_tmtime" datetime="\${item.noticeMessageDate}"><span>\${ampm}</span> <span>\${date}</span></time>
                        <div class="cbp_tmicon bg-info"><i class="zmdi zmdi-comment-outline"></i></div>
                        <div class="cbp_tmlabel">
                            <a class="remove" href="#" ><i class="zmdi zmdi-delete"></i><input class="noticeMessageNo" type="hidden" name="noticeMessageNo" value="\${item.noticeMessageNo}"> </a>
                            <h2><a href="javascript:void(0);">\${item.sender}</a></h2>
                            <p>\${item.noticeMessageDetail}</p>
                        </div>
                    </li>`);
        }else if(item.noticeMessageType=='1'){
            let date = timeForToday(item.noticeMessageDate);
            let ampm = formatAMPM(item.noticeMessageDate)
           
            $(".cbp_tmtimeline").append(`<li>
                        <time class="cbp_tmtime" datetime="\${item.noticeMessageDate}"><span>\${ampm}</span> <span>\${date}</span></time>
                        <div class="cbp_tmicon  bg-blush"><i class="zmdi zmdi-alert-circle""></i></div>
                        <div class="cbp_tmlabel">
                            <a class="remove" href="#" ><i class="zmdi zmdi-delete"></i><input class="noticeMessageNo" type="hidden" name="noticeMessageNo" value="\${item.noticeMessageNo}"> </a>
                            <h2><a href="javascript:void(0);">\${item.sender}</a></h2>
                            <p>\${item.noticeMessageDetail}</p>
                        </div>
                    </li>`)

        }else if(item.noticeMessageType=='2'){
            let date = timeForToday(item.noticeMessageDate);
            let ampm = formatAMPM(item.noticeMessageDate)

            $(".cbp_tmtimeline").append(`<li>
                        <time class="cbp_tmtime" datetime="\${item.noticeMessageDate}"><span>\${ampm}</span> <span>\${date}</span></time>
                        <div class="cbp_tmicon bg-orange"><i class="zmdi zmdi-account-add"></i></div>
                        <div class="cbp_tmlabel">
                            <a class="remove" href="#" ><i class="zmdi zmdi-delete"></i><input class="noticeMessageNo" type="hidden" name="noticeMessageNo" value="\${item.noticeMessageNo}"> </a>
                            <h2><a href="javascript:void(0);">\${item.sender}</a></h2>
                            <p>\${item.noticeMessageDetail}</p>
                        </div>
                    </li>`)

        }
        


    })
    // let createTag = function(noticeMessage){
    
    // noticeMessage.forEach(function (element) {
    //     alert(element.sender)
            
    //     })
    
    // }

    // createTag(noticeMessage);

    // alert(noticeMessage[0]);
    </script>


    
</body>
</html>