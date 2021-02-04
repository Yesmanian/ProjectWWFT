

document.addEventListener('DOMContentLoaded', function () {
    var calendarEl = document.getElementById('calendar');



    var calendar = new FullCalendar.Calendar(calendarEl, {
    

      plugins: ['interaction', 'interactionPlugin', 'dayGrid', 'timeGrid', 'list', 'rrule', 'momentPlugin'],

      locale: "ko",
      timezone: "local",
      dayPopoverFormat: 'MM/DD dddd',
      header: {
        left: 'prev,next today',
        height: 655,
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth,listYear'
      },
      intialView: 'dayGridMonth',
      dateClick: function (info) {
        //alert(info.date)
        //alert(moment(info.date).format('YYYY-MM-DD HH:mm'));
        //   startDate = (moment(info.date).format('YYYY-MM-DD HH:mm'));
        //    //var date = new Date
        //    var today = moment();
        //   alert(date.getDate());
        //   alert(moment(today).format('YYYY-MM-DD HH:mm'));
        //   startDate = moment(today).format('YYYY-MM-DD HH:mm');
        //   startDate.set({

        //     hours : today.hours(),
        //     minute : today.minute()
        //   });


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
        $('select[name=freq]').val(info.event.extendedProps.freq);
        $('select[name=byDay]').val(info.event.extendedProps.byDay);
        
        if(info.event.allDay==true){
          $('#allDay_checkbox').attr('checked',true)
        }else{
          $('#allDay_checkbox').attr('checked', false)
        }
        $('#allDay_checkbox').val(info.event.extendedProps.allDay);
        // $('select[name=byDay]').val(info.event.extendedProps.byDay);
        $('#addEvent').hide();
        $('#removeEvent').show();
        $('#updateEvent').show();
        $('#testModal').modal('show');

      },
      headerToolbar: {
        center: 'addEventButton'
      },


      selectable: true,
      select: function (start, end, allDay) {


        var today = moment();
        let hours = today.hours();
        let minute = today.minutes();
        alert(hours)
        alert(minute)
       
        // console.log(start.start)
        // console.log(start.end)
        var end = start.end;
        var start = moment(start.start).format('YYYY-MM-DD HH:mm');
        //  alert(start)
        var end = moment(end).add(-1,'days').format('YYYY-MM-DD HH:mm');
        // alert(end)
        
        
       addEvent(start, end);//이놈은 addEvent.js함수를 호출한다 .

        // $('#exampleModalLabel').html('일정 등록');
        // $('#eventTitle').val('');
        // $('#eventStart').val(start);
        // $('#eventEnd').val(end);
        // $('#dDay').val('0');
        // $('#eventDetail').val('');
        // $('#removeEvent').hide();
        // $('#addEvent').show();
        // $('#testModal').modal('show');


        // $('#testModal').modal('show');

      },
      views: {
        month: { eventLimit: 5 } // 한 날짜에 최대 이벤트 n개, 나머지는 + 처리됨
      },
      defaultDate: new Date,
      navLinks: true, // can click day/week names to navigate views
      businessHours: true, // display business hours
      editable: true,

      eventSources: [{
        events: function (info, successCallback, failureCallback) {

          $.ajax({
            url: '/event/json/getEventList',
            type: 'GET',
            dataType: 'json',

            success: function (data) {
              //console.log(JSON.stringify(data))
              let events = [];

              $.each(data.event, function (index, item) {

               

                if (!item.freq == '') {
                  var rrule = {
                    //  freq: '',
                    freq: item.freq,
                    // byweekday: [ 5,10 ],
                    // interval: 1,
                    dtstart: item.start,
                    until: '2022-03-01'
                  }
                  if(!item.byDay==''){
                    let by = item.byDay;
                    let doDetail;
                    //let dow = [];
                    if(!item.dow==''){
                      doDetail = [item.dow*1];
                    }else{
                        doDetail =[item.dom*1];
                    }
                 
                  
                    //Object.assign (rrule, {by : item.dow})
                    rrule[by]=doDetail;

                  }
                }
                
                events.push({
                  id: item.id,
                  allDay : item.allDay,
                  title: item.title,
                  start: item.start,
                  end: item.end,
                  eventDetail: item.eventDetail,
                  dDay : item.dDay,
                  rrule: rrule

                });

                
                if(item.strat==item.end){
                var allday={
                  allday : true
                }
                Object.assign(evnts, allday);
              }
                
                console.log(events)
                // Object.assign(events,rrule);
                // dow : [1,4]


                // console.log(item.freq)
                // console.log(item.title)


                // exdate: ['2021-01-30'] // will also accept a single string
              });//each 끝 

              //반복테스트 

              // events.push({
              //   id: 100,
              //   title: '월테스트',
              //   allDay: true,
              //   // start: '2021-01-20 18:00',
              //   // end: '2021-01-20 18:00',
              //   eventDetail: '월반복테스트',
              //   rrule: {
              //     //  freq: '',
              //     freq: 'monthly',
              //     bymonthday: [ 2,4 ],
              //     // interval: 1,
              //     // dtstart: item.start,
              //     until: '2023-03-01'
              //   }

              // });
              successCallback(events);
            }
          });

        }
      }],

    });
    calendar.render();
    // calendar.removeAllEvents();

    //add시작
    $('#addEvent').on('click', function (e) {
      // e.preventDefault();
      if($('#eventStart').val() > $('#eventEnd').val() ){
        alert('종료시간이 시작시간보다 앞설 수 없습니다.');
        return false;
      }


  
      var eventData = $('#event').serializeObject();
      eventData.allDay= false;
      // alert(JSON.stringify(eventData))
      if($('#allDay_checkbox').is(":checked")==true ){
        eventData.allDay = true;
        
      }
      alert(eventData.allDay)

      if($('#dDay').is(":checked")==true ){
        eventData.dDay='1'
      }else{
        eventData.dDay='0'
      }
      alert(eventData.dDay)
      
      
     
      console.log('넘어갈 데이터 : '+JSON.stringify(eventData))
  
      // calendar.addEvent(eventData)
  
  
      alert('post')
      $.ajax({
        method: 'POST',
        url: '/event/json/addEvent',
        data: JSON.stringify(eventData),
        // data: {title : title, treeNo : treeNo, start : start, end : end, dDay : dDay, eventDetail : eventDetail},
        dataType: 'json',
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json"
        },
  
        success: function (response) {
          calendar.addEvent(eventData);
          calendar.removeAllEvents();
          calendar.refetchEvents();
          alert(response)
         
          // alert("응답확인용")
          // console.log('응답성공')
        }
        
      });//ajax 끝
  
  
     
  
  
    })//addEvent 끝

    //remove 시작
    $('#removeEvent').on('click', function () {
      //alert(info.event.id ) 

      var eventId = $('#eventId').val();
      var event = calendar.getEventById(eventId);

      // alert(eventId)
      // alert(event.title)

      //$('#clender').fullCalendar('removeEvents', eventId);
      event.remove();

      // calendar.refetchEvents ()
      $.ajax({
        url: '/event/json/removeEvent',
        method: 'POST',
        data: JSON.stringify({ id: eventId }),
        dataType: 'json',
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json"

        },
        success: function (res, status) {

          alert('삭제')
        }
        

      });//removeAjax끝




    });//remove끝

    //updateEvent 시작
    $("#updateEvent").on('click', function () {

      var eventId = $('#eventId').val();
      var event = calendar.getEventById(eventId);
      
      var eventData = $('#event').serializeObject();
      if($('#allDay_checkbox').is(":checked")==true ){
        eventData.allDay = true;
        
      }else{
        eventData.allDay = false;
      }

      if($('#dDay').is(":checked")==true ){
        eventData.dDay='1'
      }else{
        eventData.dDay='0'
      }
      // alert($('#eventTitle').val())
      event.setExtendedProp('eventDetail', $('#eventDetail').val())
      event.setExtendedProp('dDay', eventData.dDay)
      event.setProp('title', $('#eventTitle').val());
      event.setStart($('#eventStart').val());
      event.setEnd($('#eventEnd').val());
      event.setAllDay(eventData.allDay);
      // alert(JSON.stringify(eventData))
      console.log('수정된 내용'+eventData)

      // calendar.addEvent({title : title, treeNo : treeNo, start : start, end : end, dDay : dDay, eventDetail : eventDetail});


      alert('post')
      $.ajax({
        method: 'POST',
        url: '/event/json/updateEvent',
        data: JSON.stringify(eventData),
        // data: {title : title, treeNo : treeNo, start : start, end : end, dDay : dDay, eventDetail : eventDetail},
        dataType: 'json',
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json"
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

    


  });

  /*  calendar.on('dateClick', function(info) {
   console.log('clicked on ' + info.dateStr);
 }); */

