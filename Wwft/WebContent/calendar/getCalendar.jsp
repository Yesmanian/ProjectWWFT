<%@ page language="java" contentType="text/html; charset=UTF-8" %>
  <%@ page pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset='euc-kr' />

      <!-- <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script> -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css">
      <link rel="stylesheet" href='/resources/packages/css/main.css'>

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/locale/ko.js"></script>
      <script
        src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>

      <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> -->
      <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
      <link href="/resources/packages/bootstrap/bootstrap-datetimepicker.min.css" rel="stylesheet" /> -->
      <!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script> -->
      <!-- <script src='/resources/packages/moment-timezone/main.js'></script> -->
      <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/4.0.0-beta.4/moment/main.js" ></script> -->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" />

      <link href='/resources/packages/core/main.css' rel='stylesheet' />
      <link href='/resources/packages/daygrid/main.css' rel='stylesheet' />
      <link href='/resources/packages/timegrid/main.css' rel='stylesheet' />
      <link href='/resources/packages/list/main.css' rel='stylesheet' />
     



      <script>
        // document.cookie = "crossCookie=bar; SameSite=None; Secure";
        // alert( document.cookie)




        $(document).ready(function () {
          setDateBox();

//           $('.widget-left').on('click',function(){
//   alert('클릭됨')
// $('.widget-left').attr("id","widget");
// });

          $('#eventStart, #eventEnd').datetimepicker({
            format: 'YYYY-MM-DD HH:mm',
            ignoreReadonly: true,
            locale: 'ko'
          });//시간설정

          $('input[name=dow]').on('click', function () {
            alert($(this).val())

          })
          //반복일정 눌렀을떄
          $("#repeat").change(function () {
            if ($("#repeat").is(":checked")) {// 반복이 체크 됬다면
              $('.repeat').attr('disabled', true); // 반복과 관련된 이벤트들을 disavled한다.
              $(".freq").attr('disabled', false);//반복의 년,월,주를 활성화 시킨다
              $(".freq").show();//반복 select창을 보여준다
            } else {
              $('.repeat').attr('disabled', false);//반복과 관련된 tag 비활성화
              $(".repeat").hide();//체크가 해제시 반복과 관련된 form tag를 하이드 시킨다
            }

          });
          //반복일정 눌렀을때
          $("select[name=freq]").change(function () {
            alert($(this).val())
            if ($(this).val() == "yearly") {//매년을 선택시  매월,매주 form tag를 비활성화 시키고 하이드 시킨다.
              $(".dom").hide();
              $('.dom').attr('disabled', true);

              $(".dow").hide();
              $(".dow").attr('disabled', true);

            }
            else if ($(this).val() == "monthly") {//매월을 선택시
              // $("select[name=dow]").attr('disabled',true);
              $('input[name=dow]').attr('checked', false);
              $(".dow").hide();//요일 라디오체크 숨김
              $(".dow").attr('disabled', true);//요일  비활성화
              $('.dow').val('');
              $('.dom').val('');

              $("select[name=byDay]").attr('disabled', false);
              $("select[name=byDay]").val('bymonthday');// by의 값은 bymothday가 된다.  
              $(".dom").show();//며칠날 반복할건지 select창 출력
              // $(".dow").show();
            } else if ($(this).val() == "weekly") {//매주 선택시
              $(".dow").attr('disabled', false);//요일 활성화
              $('input[name=dow]').attr('checked', false);
              $(".dom").attr('disabled', true);//며칠 비활성화
              // $('.dom').prop()
              $("select[name=byDay]").attr('disabled', false);
              $("select[name=byDay]").val('byweekday');//by의 값 설정

              $(".dom").hide();//며칠 select창 숨김

              $(".dow").show();//요일 라디오 체크박스 on
            }

          });


        })

        function setDateBox() {



          var day;
          $("#dom").append("<option value=''>일</option>");
          for (var i = 1; i <= 31; i++) {
            $("#dom").append("<option value='" + i + "'>" + i + " 일" + "</option>");
          }

        }

      </script>
      <style>
        body {
          margin: px 10px;
          padding: 0;
          font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
          font-size: 14px;
        }

        #calendar {
          max-width: 1000px;
          margin: 0 auto;
        }
        div.widget-left {
          margin-left: auto; 
          margin-right: auto;
           display: block; 

        }
        /* header {
	width:100%;
	height:100px;
	display: flex;
	align-items: center;
  justify-content: center;
  padding: 35px;
  border: 1px solid red;
} */



      </style>
    </head>

    <body>
      <!-- <header id="wrap"> 
        
          
        <div class="container">
        
      </div> -->
      <script>
        let latitude;
let longitude;
const KEY = `AIzaSyAJ90m5DaS-QP5YOUT_p4A1sKLSsrhPSRo`;
let cyit_name;
function getLocation() {
	if (navigator.geolocation) { // GPS를 지원하면
	  navigator.geolocation.getCurrentPosition(function(position) {
		latitude = position.coords.latitude;
        longitude = position.coords.longitude;
        let url = `https://maps.googleapis.com/maps/api/geocode/json?latlng=\${latitude},\${longitude}&key=\${KEY}&language=en`
        alert(url)
  fetch(url)
  .then(Response=>Response.json())
  .then(data=>{
      console.log(data.results[3].address_components[2].long_name)
      cyit_name = data.results[3].address_components[2].long_name;
      createCityName(cyit_name );
  })
.catch(Error=>console.warn(Error.message));


        alert(latitude);
  alert(longitude);
		// alert(latitude + ' ' + longitude);
	  }, function(error) {
		console.error(error);
	  }, {
		enableHighAccuracy: false,
		maximumAge: 0,
		timeout: Infinity
	  });
	} else {
	  alert('GPS를 지원하지 않습니다');
    }
    
  }
  getLocation();
  
 
    </script>
<div id="openweathermap-widget-11"></div>



<script src='//openweathermap.org/themes/openweathermap/assets/vendor/owm/js/d3.min.js'></script>
<script>
  
    function createCityName(city){
     let cityName=city;
      alert(cityName)

      window.myWidgetParam ? window.myWidgetParam : window.myWidgetParam = [];  window.myWidgetParam.push({id: 11, city_name : cityName,appid: '9757e2feaa36992cfefe1fef3b91199d',units: 'metric',containerid: 'openweathermap-widget-11',  });  (function() {var script = document.createElement('script');script.async = true;script.charset = "utf-8";script.src = "//openweathermap.org/themes/openweathermap/assets/vendor/owm/js/weather-widget-generator.js";var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(script, s);  })();
      
       
  }




</script>



      <!-- </header> -->
     
    
      <div id='calendar'>
        
      </div>
    


      <!-- 일정 추가  Modal-->
      <div class="modal fade" id="testModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">

        <form id="event">
          <input type="hidden" name="treeNo" id="treeNo" value="${user.treeNo}" />
          <div class="modal-dialog" role="document" clas>
            <div class="modal-content">
              <div class="modal-header">
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                  <button type="button" class="close" aria-label="Close"><span
                      aria-hidden="true">&times;</span></button>
                </button>
                <h3 class="modal-title" id="exampleModalLabel">일정 등록</h5>
              </div>

              <div class="modal-body">
                
              
                <div class="row">
                  <div class="col-xs-12">           
              <label class="col-xs-4">D-DAY</label>
              <input type="checkbox" name='dDay' id="dDay" value=""> 
            </div>
          </div>
                    
              <div class="row form-group">
                <div class="col-xs-12">
                  <label class="col-xs-4" for="allDay_checkbox">종일</label>
              <input type="checkbox" name="allDay" id="allDay_checkbox"  value=""> 
            </div>
          </div>


          <div class="row">
            <div class="col-xs-12">
              <label class="col-xs-4" for="eventTitle">일정명</label>
                <input type="text" class="inputModal" name='title' id="eventTitle">
                <input type="hidden" name='id' id="eventId">
              </div>
            </div>


              <!-- <div class="form-group" > 
               
              <div class="input-group date" id="datetimepicker">
              
              
     
              <span class="input-group-addon"> 
                <span class="glyphicon-calendar glyphicon"></span>            
              </span>
            </div>
              </div> -->
              <!-- <div class="row">
                <div class="col-xs-12"> -->
              <div class="row form-group">
                <div class='col-xs-12' id='datetimepicker1'>
                  <label class="col-xs-4">시작 시간</label>
                    <input type="text" class="inputModal" name='start' id="eventStart" readonly>
                  <!-- <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                  </span> -->
                </div><!--/inputGroup-->
              </div>
            <!-- </div>
          </div>/row -->


          <!-- <div class="row">
            <div class="col-xs-12"> -->
              <div class="row  form-group">
                <div class='col-xs-12' id='datetimepicker2'>
                  <label class="col-xs-4">종료 시간</label>
                    <input type="text" class="inputModal" name='end' id="eventEnd" readonly>
                </div>
              </div>
            <!-- </div>
          </div>/row -->

              
              <!-- <div>
              <label>종료 시간</label>
              <input type="text" name='end' id="eventEnd">
            </div> -->

              <!-- 체크시 밑에꺼 나오도록 첨엔다 disable -->
              <div>
                <label>반복일정<input type="checkbox" value="" id="repeat"></label>
              </div>
              <div class="repeat freq" id="repeatr" style="display: none;">
                <label>반복</label>
                <select class='freq' type="text" name="freq" disabled>
                  <option value="yearly">매년</option>
                  <option value="monthly">매월</option>
                  <option value="weekly">매주</option>
                </select>
              </div>
              <!-- 매월(monthly) 선택시 월(bymonthday)
                  매주(weekly) 선택시 일(byweekday) 일 선택은 한개 ? 여러개 ?
                  우선 한개만 
            -->
              <div class="repeat by" style="display: none;">
                <label>며칠</label>
                <select type="hidden" name="byDay" id="byDay" disabled>
                  <option value="bymonthday">월</option>
                  <option value="byweekday">일</option>
                </select>
              </div>



              <div class="repeat dow" style="display: none;">
                <label>요일</label>
                <label class="radio-inline">
                  <input type="radio" name="dow" value="0"> 월
                </label>
                <label class="radio-inline">
                  <input type="radio" name="dow" value="1"> 화
                </label>
                <label class="radio-inline">
                  <input type="radio" name="dow" value="2"> 수
                </label>
                <label class="radio-inline">
                  <input type="radio" name="dow" value="3"> 목
                </label>
                <label class="radio-inline">
                  <input type="radio" name="dow" value="4"> 금
                </label>
                <label class="radio-inline">
                  <input type="radio" name="dow" value="5"> 토
                </label>
                <label class="radio-inline">
                  <input type="radio" name="dow" value="6"> 일
                </label>
              </div><!-- /.bs-example -->

              <!-- 2월이나 그럴경우는 어떻게 하나 ?? 추후 생각  -->
              <div class="repeat dom" style="display: none;">
                <label>일</label>
                <select type="text" name="dom" id="dom">

                </select>
              </div>
  



              <div class="row">
                <div class="col-xs-12">
                  <label class="col-xs-4" for="eventDetail">일정내용</label>
                  <textarea rows="4" cols="50" class="inputModal" name="eventDetail" id="eventDetail"></textarea>
                </div>


              </div><!-- model-body end-->

              <!-- <label>반복일정</label>
                <input type="number" name= 'dow[]' id="dow"> -->




              <!-- <div class="modal-body">내용 입력 !!</div> -->

              <div class="modal-footer modalBtnContainer-modifyEvent">
                <button type="button" class="btn btn-primary" data-dismiss="modal" id="addEvent">저장</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" id="updateEvent">수정</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal" id="removeEvent">삭제</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
              </div>
            </div> <!-- modal-content -->
          </div><!-- modal-dialog -->
        </form>
      </div><!-- modal -->





      <script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery-serialize-object/2.5.0/jquery.serialize-object.min.js"></script>
      <!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->
      <!-- <script src='/resources/packages/moment/main.min.js'></script> -->
      <!-- <script src='/resources/packages/bootstrap/bootstrap-datetimepicker.min.js'></script> -->
      <script src='https://cdn.jsdelivr.net/npm/rrule@2.6.4/dist/es5/rrule.min.js'></script>
      <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.0/moment.min.js"></script> -->
      <script src='/resources/packages/core/main.js'></script>
      <script src='/resources/packages/rrule/main.js'></script>
      <script src='/resources/packages/interaction/main.js'></script>
      <script src='/resources/packages/daygrid/main.js'></script>
      <script src='/resources/packages/timegrid/main.js'></script>
      <script src='/resources/packages/list/main.js'></script>
      <script src='/resources/packages/js/fullcalendar.js?ver=1 '></script>
      <script src='/resources/packages/js/addEvent.js?ver=1'></script>

     

    </body>

    </html>