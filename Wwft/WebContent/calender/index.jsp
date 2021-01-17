<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset='euc-kr' />
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<!-- <script src='/resources/packages/moment/main.min.js'></script> -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-serialize-object/2.5.0/jquery.serialize-object.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
<!-- <script src='/resources/packages/moment-timezone/main.js'></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/4.0.0-beta.4/moment/main.js" ></script> -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.0/moment.min.js" ></script>
<link href='/resources/packages/core/main.css' rel='stylesheet' />
<link href='/resources/packages/daygrid/main.css' rel='stylesheet' />
<link href='/resources/packages/timegrid/main.css' rel='stylesheet' />
<link href='/resources/packages/list/main.css' rel='stylesheet' />
<script src='/resources/packages/core/main.js'></script>
<script src='/resources/packages/interaction/main.js'></script>
<script src='/resources/packages/daygrid/main.js'></script>
<script src='/resources/packages/timegrid/main.js'></script>
<script src='/resources/packages/list/main.js'></script>
<!-- C:\Users\shwls\git\ProjectWWFT\Wwft\WebContent\resources\packages\moment-timezone\main.js
C:\Users\shwls\git\ProjectWWFT\Wwft\WebContent\resources\packages\moment\main.js -->
<script>
  
  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
    
    
  
    var calendar = new FullCalendar.Calendar(calendarEl, {
      

      plugins: [ 'interaction','interactionPlugin', 'dayGrid', 'timeGrid', 'list', ],
      
      locale : "ko",
      timezone: "local", 
      dayPopoverFormat: 'MM/DD dddd',
      header: {
        left: 'prev,next today',
        height : 655,
        center: 'title,addEventButton',
        right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
      },
      intialView:'dayGridMonth',
      dateClick : function(info){
        //alert(info.date)
        //alert(moment(info.date).format('YYYY-MM-DD HH:mm'));
        startDate = (moment(info.date).format('YYYY-MM-DD HH:mm'));
         //var date = new Date
         var today = moment();
        // alert(date.getDate());
        // alert(moment(today).format('YYYY-MM-DD HH:mm'));
        // startDate = moment(today).format('YYYY-MM-DD HH:mm');
        // startDate.set({

        //   hours : today.hours(),
        //   minute : today.minute()
        // });


      //   $('#exampleModalLabel').html('일정 등록');
      //    $('#eventTitle').val('');
      //    $('#eventStart').val(startDate);
      //    $('#eventEnd').val('');
      //    $('#dDay').val('0');
      //    $('#eventDetail').val('');
      //  $('#removeEvent').hide();
      //  $('#addEvent').show();
      //  $('#testModal').modal('show');


        //alert('clicked on : '+info.dateStr );
      },
      eventClick: function (info) {
        // alert("Event :" + info.event.extendedProps.eventDetail);
        // alert("Event :" + info.event.end);
        
        $('#exampleModalLabel').html('일정 수정');
        $('#eventId').val(info.event.id);
         $('#eventTitle').val(info.event.title);
         
         $('#eventStart').val(moment(info.event.start).format('YYYY-MM-DD hh:mm'));
         $('#eventEnd').val(moment(info.event.end).format('YYYY-MM-DD hh:mm'));
         $('#eventDetail').val(info.event.extendedProps.eventDetail);
       $('#addEvent').hide();
       $('#removeEvent').show();
       $('#testModal').modal('show');
              
            },
      headerToolbar: {
        center: 'addEventButton'
      },
      
      
      selectable : true,
      select : function(start, end, allDay){
         var today = moment();
          // start.set({ hours: today.hours(), minute: today.minutes() });
        console.log(start.start)
        console.log(start.end)
        var end = start.end;
        var start = moment(start.start).format('YYYY-MM-DD HH:mm');
        alert(start)
        var end = moment(end).format('YYYY-MM-DD HH:mm');
        alert(end)

            $('#exampleModalLabel').html('일정 등록');
         $('#eventTitle').val('');
         $('#eventStart').val(start);
         $('#eventEnd').val(end);
         $('#dDay').val('0');
         $('#eventDetail').val('');
       $('#removeEvent').hide();
       $('#addEvent').show();
       $('#testModal').modal('show');

        
        // $('#testModal').modal('show');
        
      },
      views                     : { 
                                month : { eventLimit : 5 } // 한 날짜에 최대 이벤트 n개, 나머지는 + 처리됨
                              },
     defaultDate: new Date,
      navLinks: true, // can click day/week names to navigate views
      businessHours: true, // display business hours
      editable: true,
     
      eventSources: [{
  		events: function(info, successCallback, failureCallback) {
     
  			$.ajax({
  				url: '/event/json/getEventList',
  				type: 'GET',
  				dataType: 'json',
  				
  				success: function(data) {
            //console.log(JSON.stringify(data))
            var events = [];
            $.each(data.event, function(index, item){
              console.log(item.eventDetail)
              events.push({
                id : item.id,
                title : item.title,
                start : item.start,
                end : item.end,
                eventDetail : item.eventDetail
              

              });
            });
  					successCallback(events);
  				}
        });
        
  		}
  	}],
			
    });
    
    
    calendar.render(); 

    //날짜 변경 funtion


     //remove 시작
    $('#removeEvent').on('click', function() {
  //alert(info.event.id ) 
  
  var eventId = $('#eventId').val();
  var event = calendar.getEventById(eventId);
alert(eventId)
alert(event.title)

//$('#clender').fullCalendar('removeEvents', eventId);
event.remove();

// calendar.refetchEvents ()
$.ajax({
  url: '/event/json/removeEvent',
  method: 'POST',
  data : JSON.stringify({id: eventId}),
  dataType: 'json',
  headers:{
    "Accept" : "application/json",
    "Content-Type" : "application/json"

  },
  success: function(res,status){
    
    alert('삭제')
  }
  
  
});//removeAjax끝

  
  

});//remove끝

//updateEvent 시작
$("#updateEvent").on('click', function(){

  var eventId = $('#eventId').val();
  var event = calendar.getEventById(eventId);
  var eventData = $('#event').serializeObject();
 // alert($('#eventTitle').val())
 event.setExtendedProp('eventDetail',$('#eventDetail').val())
  event.setProp('title',$('#eventTitle').val());
  event.setStart( $('#eventStart').val() )

  var eventData = $('#event').serializeObject();
alert(JSON.stringify(eventData))
console.log(eventData)

// calendar.addEvent({title : title, treeNo : treeNo, start : start, end : end, dDay : dDay, eventDetail : eventDetail});


alert('post')
$.ajax({
      method: 'POST',
      url: '/event/json/updateEvent',
      data: JSON.stringify(eventData),
      // data: {title : title, treeNo : treeNo, start : start, end : end, dDay : dDay, eventDetail : eventDetail},
      dataType : 'json',
      headers : {
							"Accept" : "application/json",
							"Content-Type" : "application/json"
						},
      
      success: function (response, status) {
        alert(status)
        //리스폰 나중에 필요하면 쓸것 현재 CalenerRestController의 return type null임
        //POST로 보내고 싶은데 ...
        // alert("응답확인용")
       // console.log('응답성공')
          //DB연동시 중복이벤트 방지를 위한
         // $('#calendar').fullCalendar('removeEvents');
          //$('#calendar').fullCalendar( 'refetchEvents');
      }
  });//ajax 끝
  



})

    //addEvent 시작
    $('#addEvent').on('click', function(e) {
       e.preventDefault();

/* var title = $('#eventTitle').val();
var treeNo = 1;
var start =  $('#eventStart').val();
var end = $('#eventEnd').val();
var  dDay = $('#dDay').val();
var  eventDetail = $('#eventDetail').val(); */

var eventData = $('#event').serializeObject();
alert(JSON.stringify(eventData))
console.log(eventData)
calendar.addEvent(eventData);
// calendar.addEvent({title : title, treeNo : treeNo, start : start, end : end, dDay : dDay, eventDetail : eventDetail});


alert('post')
$.ajax({
      method: 'POST',
      url: '/event/json/addEvent',
      data: JSON.stringify(eventData),
      // data: {title : title, treeNo : treeNo, start : start, end : end, dDay : dDay, eventDetail : eventDetail},
      dataType : 'json',
      headers : {
							"Accept" : "application/json",
							"Content-Type" : "application/json"
						},
      
      success: function (response, status) {
        alert(status)
        //리스폰 나중에 필요하면 쓸것 현재 CalenerRestController의 return type null임
        //POST로 보내고 싶은데 ...
        // alert("응답확인용")
       // console.log('응답성공')
          //DB연동시 중복이벤트 방지를 위한
         // $('#calendar').fullCalendar('removeEvents');
          //$('#calendar').fullCalendar( 'refetchEvents');
      }
  });//ajax 끝





})//addEvent 끝

 
  });


 /*  calendar.on('dateClick', function(info) {
  console.log('clicked on ' + info.dateStr);
}); */



  

</script>
<style>

  body {
    margin: px 10px;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }

</style>
</head>
<body>

  <div id='calendar'></div>

  
  <!-- 일정 추가  Modal-->
	<div class="modal fade" id="testModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        
          <form id="event">
            <input type="hidden" name="treeNo" value="1"/>
		<div class="modal-dialog" role="document" clas>
			<div class="modal-content">
				<div class="modal-header">
					<button class="close" type="button" data-dismiss="modal" aria-label="Close">
						<button type="button" class="close" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					</button>
					<h3 class="modal-title" id="exampleModalLabel">addEvent</h5>
                </div>
                
                <input type="hidden" name= 'id' id="eventId">
                <label>title</label>
                <input type="text" name= 'title' id="eventTitle">

                <label>start</label>
                <input type="text" name= 'start'   id="eventStart" >

                <label>end</label>
                <input type="text" name= 'end' id="eventEnd">

                <label>D-DAY</label>
                <input type="text" name= 'dDay' id="dDay" >

                <label>eventDetail</label>
                <input type="text" name= 'eventDetail' id="eventDetail">




				<div class="modal-body">내용 입력 !!</div>
				<div class="modal-footer">
                    <a class="btn" id="modalY" href="#">yes</a>
                    <!-- <input type="submit" value="등록" id="submit">  -->
                    <button class="btn" type="button" data-dismiss="modal" id="addEvent">save</button>
                    <!-- <input type="submit" value="등록" > -->
                    <!-- <button class="btn" type="button" data-dismiss="modal" id="addEvent">save</button> -->
          <button class="btn" type="button" data-dismiss="modal">cancle</button>
        </div>
        <div class="modal-footer modalBtnContainer-modifyEvent">
          <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
          <button type="button" class="btn btn-danger"  data-dismiss="modal" id="removeEvent">삭제</button>
          <button type="button" class="btn btn-primary"   id="updateEvent">수정</button>
      </div>
		</div>	<!-- modal-content -->
    </div><!-- modal-dialog -->
  </form>
	</div><!-- modal -->



	
	<script>
		$('#testBtn').click(function(e){
			e.preventDefault();
			$('#testModal').modal("show");
    });

   

   


	</script>

</body>
</html>
