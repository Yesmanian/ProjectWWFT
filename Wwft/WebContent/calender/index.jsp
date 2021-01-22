<%@ page language="java" contentType="text/html; charset=UTF-8" %>
  <%@ page pageEncoding="UTF-8" %>

    <!DOCTYPE html>
    <html>

    <head>
      <meta charset='euc-kr' />

      <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>


      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

      <!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script> -->
      <!-- <script src='/resources/packages/moment-timezone/main.js'></script> -->
      <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/4.0.0-beta.4/moment/main.js" ></script> -->

      <link href='/resources/packages/core/main.css' rel='stylesheet' />
      <link href='/resources/packages/daygrid/main.css' rel='stylesheet' />
      <link href='/resources/packages/timegrid/main.css' rel='stylesheet' />
      <link href='/resources/packages/list/main.css' rel='stylesheet' />



      <script>
        $(document).ready(function () {
          setDateBox();

          $('input[name=dow]').on('click',function(){
            alert($(this).val())
            
          })
          //반복일정 눌렀을떄
          $("#repeat").change(function () {
            if ($("#repeat").is(":checked")) {// 반복이 체크 됬다면
              $('.repeat').attr('disabled', true); // 반복과 관련된 이벤트들을 disavled한다.
              $(".freq").attr('disabled',false);//반복의 년,월,주를 활성화 시킨다
              $(".freq").show();//반복 select창을 보여준다
            } else {
              $('.repeat').attr('disabled', false);//반복과 관련된 tag 비활성화
              $(".repeat").hide();//체크가 해제시 반복과 관련된 form tag를 하이드 시킨다
            }

          });
          //반복일정 눌렀을때
          $("select[name=freq]").change(function(){
            alert($(this).val())
            if($(this).val()=="yearly"){//매년을 선택시  매월,매주 form tag를 비활성화 시키고 하이드 시킨다.
              $(".dom").hide();
              $('.dom').attr('disabled',true);
              
              $(".dow").hide();
              $(".dow").attr('disabled',true);

            }
            else if($(this).val()=="monthly"){//매월을 선택시
              // $("select[name=dow]").attr('disabled',true);
              $('input[name=dow]').attr('checked',false);
              $(".dow").hide();//요일 라디오체크 숨김
              $(".dow").attr('disabled',true);//요일  비활성화
              $('.dow').val('');
              $('.dom').val('');

              $("select[name=byDay]").attr('disabled',false);
              $("select[name=byDay]").val('bymonthday');// by의 값은 bymothday가 된다.  
              $(".dom").show();//며칠날 반복할건지 select창 출력
              // $(".dow").show();
            }else if($(this).val()=="weekly"){//매주 선택시
              $(".dow").attr('disabled',false);//요일 활성화
              $('input[name=dow]').attr('checked',false);
              $(".dom").attr('disabled',true);//며칠 비활성화
              // $('.dom').prop()
               $("select[name=byDay]").attr('disabled',false);
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
          max-width: 900px;
          margin: 0 auto;
        }
      </style>
    </head>

    <body>
      <script>


      </script>

      <div id='calendar'></div>


      <!-- 일정 추가  Modal-->
      <div class="modal fade" id="testModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">

        <form id="event">
          <input type="hidden" name="treeNo" value="1" />
          <div class="modal-dialog" role="document" clas>
            <div class="modal-content">
              <div class="modal-header">
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                  <button type="button" class="close" aria-label="Close"><span
                      aria-hidden="true">&times;</span></button>
                </button>
                <h3 class="modal-title" id="exampleModalLabel">addEvent</h5>
              </div>

              <input type="hidden" name='id' id="eventId">
              <label>title</label>
              <input type="text" name='title' id="eventTitle">

              <label>start</label>
              <input type="text" name='start' id="eventStart">

              <label>end</label>
              <input type="text" name='end' id="eventEnd">

              <!-- 체크시 밑에꺼 나오도록 첨엔다 disable -->
              <label>반복일정<input type="checkbox" value="" id="repeat"></label>

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
              <div class="repeat by" style="display: none;" >
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

              <label>D-DAY</label>
              <input type="text" name='dDay' id="dDay">


              <label>even ntDetail</label>
              <input type="text" ame='eventDetail' id="eventDetail">

              <!-- <label>반복일정</label>
                <input type="number" name= 'dow[]' id="dow"> -->




              <div class="modal-body">내용 입력 !!</div>
      
              <div class="modal-footer modalBtnContainer-modifyEvent">
                <button type="button" class="btn btn-primary"  data-dismiss="modal" id="addEvent">저장</button>
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
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
      <script src='/resources/packages/moment/main.min.js'></script>
      <script src='https://cdn.jsdelivr.net/npm/rrule@2.6.4/dist/es5/rrule.min.js'></script>
      <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.0/moment.min.js"></script> -->
      <script src='/resources/packages/core/main.js'></script>
      <script src='/resources/packages/rrule/main.js'></script>
      <script src='/resources/packages/interaction/main.js'></script>
      <script src='/resources/packages/daygrid/main.js'></script>
      <script src='/resources/packages/timegrid/main.js'></script>
      <script src='/resources/packages/list/main.js'></script>
      <script src='/resources/packages/js/addEvent.js?ver=1'></script>
      <script src='/resources/packages/js/fullcalendar.js?ver=1 '></script>

    </body>

    </html>