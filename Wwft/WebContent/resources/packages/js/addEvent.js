







var addEvent = function (start, end) {
    $("#repeat").prop("checked", false);
    $(".repeat").hide();
    $('#exampleModalLabel').html('일정 등록');
    $('#eventTitle').val('');
    $('#eventStart').val(start);
    $('#eventEnd').val(end);
    $('#dDay').val('0');
    $('#eventDetail').val('');
    $('#removeEvent').hide();
    $('#updateEvent').hide();
    $('#addEvent').show();
    $('#testModal').modal('show');
//반복일정 손봐야함 







};

