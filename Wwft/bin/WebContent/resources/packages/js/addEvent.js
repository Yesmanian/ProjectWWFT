







var addEvent = function (start, end) {
    $("#repeat").prop("checked", false);
   
    $(".repeat").hide();
    $('#exampleModalLabel').html('일정 등록');
    $('#eventTitle').val('');
    $('#eventStart').val(start);
   
    $('#eventEnd').val(end);
    
    $('#dDay').val('0');
    $('input[name=dow]').attr('checked',false);
    $("#dom").val('')
    $('#eventDetail').val('');
    $('#removeEvent').hide();
    $('#updateEvent').hide();
    $('#addEvent').show();
    $('#testModal').modal('show');
//반복일정 손봐야함 

//add시작




};

