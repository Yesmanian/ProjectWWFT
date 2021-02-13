






//입력 모달창 초기화 
var addEvent = function (start, end) {
    
    $("#dDay").prop("checked", false);// 디데이 체크 해제
    $("#allDay_checkbox").prop("checked", false); //종일 체크 해제
    $("#repeat").prop("checked", false); // 체크 풀고
    $('input[name=dow]').prop("checked", false); // 요일 체크해제 
    $('.repeat').attr('disabled', true);// 디스에이블드로 바꿈 
    $(".repeat").hide();
    $('#exampleModalLabel').html('일정 등록');
    $('#eventTitle').val('');
    $('#eventStart').val(start);
   
    $('#eventEnd').val(end);
    
    $('#dDay').val('0');
    $('input[name=dow]').attr('checked',false);
    $("#byDay").val('')
    $("#dom").val('')
    $("#dow").val('')
    $('#eventDetail').val('');
    $('#removeEvent').hide();
    $('#updateEvent').hide();
    $('#addEvent').show();
    $('#testModal').modal('show');
//반복일정 손봐야함 

//add시작




};

