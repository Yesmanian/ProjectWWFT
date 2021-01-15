<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset='euc-kr' />
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
<link href='/resources/packages/core/main.css' rel='stylesheet' />
<link href='/resources/packages/daygrid/main.css' rel='stylesheet' />
<link href='/resources/packages/timegrid/main.css' rel='stylesheet' />
<link href='/resources/packages/list/main.css' rel='stylesheet' />
<script src='/resources/packages/core/main.js'></script>
<script src='/resources/packages/interaction/main.js'></script>
<script src='/resources/packages/daygrid/main.js'></script>
<script src='/resources/packages/timegrid/main.js'></script>
<script src='/resources/packages/list/main.js'></script>

<script>

  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
    
 

    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid', 'timeGrid', 'list' ],
      locale : "ko",
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
      },
   /*    defaultDate: '2020-02-12' */
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
            console.log(JSON.stringify(data))
            var events = [];
            $.each(data.event, function(index, item){
              console.log(item.title)
              events.push({
                title : item.title,
                start : item.start,
                end : item.end

              });
            });
  					successCallback(events);
  				}
        });
        
  		}
  	}]
			
		});
    calendar.render(); 
  });

</script>
<style>

  body {
    margin: 40px 10px;
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

  <button id="testBtn" class="btn">addEvent</button>
  <!-- 회원가입 확인 Modal-->
	<div class="modal fade" id="testModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        
          
            <input type="hidden" name="treeNo" value="1"/>
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button class="close" type="button" data-dismiss="modal" aria-label="Close">
						<button type="button" class="close" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					</button>
					<h3 class="modal-title" id="exampleModalLabel">addEvent</h5>
                </div>
                <label>title</label>
                <input type="text" name= 'title' id="eventTitle">

                <label>start</label>
                <input type="text" name= 'start' id="eventStart" >

                <label>end</label>
                <input type="text" name= 'end' id="eventEnd">

                <label>D-DAY</label>
                <input type="text" name= 'dDay' id="dDay" >

                <label>eventDetail</label>
                <input type="text" name= 'eventDetail' id="eventDetail">




				<div class="modal-body">내용 입력 !!</div>
				<div class="modal-footer">
                    <a class="btn" id="modalY" href="#">yes</a>
                    <button class="btn" type="button" data-dismiss="modal" id="addEvent">save</button>
					<button class="btn" type="button" data-dismiss="modal">cancle</button>
				</div>
			</div>
		</div>
	</div>



	
	<script>
		$('#testBtn').click(function(e){
			e.preventDefault();
			$('#testModal').modal("show");
		});

    $('#addEvent').on('click' , function () {

      var title = $('#eventTitle').val();
      console.log(title)
      
    /*   var eventStart = $('#eventStart');
      var eventEnd = $('#eventEnd');
      var dDay =  $('#dDay');
      var eventDtail = $('#eventDetail'); */
      var eventData ={
        title : $('#eventTitle').val(),
        tree : '1',
        start :  $('#eventStart').val(),
        end : $('#eventEnd').val(),
        dDay : $('#dDay').val(),
        eventDtail : $('#eventDetail').val()


      }
      
      console.log(eventData)

      $.ajax({
            method: "POST",
            url: "/event/json/addEvent",
            data: {
                eventData
            },
           
						headers : {
							"Accept" : "application/json",
							"Content-Type" : "application/json"
						},
            success: function (response) {
              console.log('응답성공')
                //DB연동시 중복이벤트 방지를 위한
                //$('#calendar').fullCalendar('removeEvents');
                //$('#calendar').fullCalendar('refetchEvents');
            }
        });




      
    })


	</script>

</body>
</html>
