//얼마나 지났는지
function timeForToday(value) {
    const today = new Date();
    const timeValue = new Date(value);
    // alert("타임벨류"+timeValue+"today : "+today)

    const betweenTime = Math.floor((today.getTime() - timeValue.getTime()) / 1000 / 60);
    if (betweenTime < 1) return '방금전';
    if (betweenTime < 60) {
        return `${betweenTime}분전`;
    }

    const betweenTimeHour = Math.floor(betweenTime / 60);
    if (betweenTimeHour < 24) {
        return `${betweenTimeHour}시간전`;
    }

    const betweenTimeDay = Math.floor(betweenTime / 60 / 24);
    if (betweenTimeDay < 365) {
        return `${betweenTimeDay}일전`;
    }

    return `${Math.floor(betweenTimeDay / 365)}년전`;
}
//오전 오후 
function formatAMPM(value) {
    let date = new Date(value);
    var hours = date.getHours();
    var minutes = date.getMinutes();
    var ampm = hours >= 12 ? '오후' : '오전';
    // hours = hours % 12;
    hours = hours ? hours : 12; // the hour '0' should be '12'
    minutes = minutes < 10 ? '0' + minutes : minutes;
    var strTime = hours + ':' + minutes + ' ' + ampm;
    return strTime;
}


function createTag(value) {

    $.each(value, function (index, item) {
        if (item.noticeMessageType == '0') {
            // alert(item.noticeMessageDate);
            let date = timeForToday(item.noticeMessageDate);
            let ampm = formatAMPM(item.noticeMessageDate)

            $(".cbp_tmtimeline").append(` <li>
                        <time class="cbp_tmtime" datetime="${item.noticeMessageDate}"><span>${ampm}</span> <span>${date}</span></time>
                        <div class="cbp_tmicon bg-info"><i class="zmdi zmdi-comment-outline"></i></div>
                        <div class="cbp_tmlabel">
                        <div class="btn-group btg" role="group" aria-label="Basic example">
                                    <input class="noticeMessageNo" type="hidden" name="noticeMessageNo" value="${item.noticeMessageNo}">
                                   <button type="button" class="btn btn-secondary btn-sm" id="remove">삭제</button>
                            </div>
                            <h2><a href="javascript:void(0);">${item.sender}</a></h2>
                            <p>
                            <a href="/post/getPost?postNo=${item.postNo}"  >
                            <img src="/resources/images/uploadFiles/${item.postImage}" width="150px" height="150px"></a>
                            </p>
                           
                            ${item.noticeMessageDetail}
                          
                        </div>
                    </li>`);
        } else if (item.noticeMessageType == '1') {
            let date = timeForToday(item.noticeMessageDate);
            let ampm = formatAMPM(item.noticeMessageDate)

            $(".cbp_tmtimeline").append(`<li>
                        <time class="cbp_tmtime" datetime="${item.noticeMessageDate}"><span>${ampm}</span> <span>${date}</span></time>
                        <div class="cbp_tmicon  bg-blush"><i class="zmdi zmdi-alert-circle""></i></div>
                        <div class="cbp_tmlabel">
                            <div class="btn-group btg" role="group" aria-label="Basic example">
                                    <input class="noticeMessageNo" type="hidden" name="noticeMessageNo" value="${item.noticeMessageNo}">
                                   <button type="button" class="btn btn-secondary btn-sm" id="remove">삭제</button>
                            </div>
                            <h2><a href="javascript:void(0);">${item.sender}</a></h2>
                            <p>${item.noticeMessageDetail}</p>
                        </div>
                    </li>`)

        } else if (item.noticeMessageType == '2') {
            let date = timeForToday(item.noticeMessageDate);
            let ampm = formatAMPM(item.noticeMessageDate)

            $(".cbp_tmtimeline").append(`<li>
                        <time class="cbp_tmtime" datetime="${item.noticeMessageDate}"><span>${ampm}</span> <span>${date}</span></time>
                        <div class="cbp_tmicon bg-orange"><i class="zmdi zmdi-account-add"></i></div>
                        <div class="cbp_tmlabel">
                            
                            <div class="btn-group btg" role="group" aria-label="Basic example">
                                <button type="button" class="btn btn-primary btn-sm" id="accept">수락</button>
                                <input class="noticeMessageNo" type="hidden" name="noticeMessageNo" value="${item.noticeMessageNo}">
                                <input class="forestNo" type="hidden" name="forestNo" value="${item.forestNo}">
                                <input class="forestName" type="hidden" name="forestName" value="${item.sender}">
                                <button type="button" class="btn btn-secondary btn-sm" id="remove">삭제</button>
                            </div>
                            <h2><a href="javascript:void(0);">${item.sender}</a></h2>
                            <p>${item.noticeMessageDetail}</p>
                        </div>
                    </li>`)

        } else if (item.noticeMessageType == '3') {
            let date = timeForToday(item.noticeMessageDate);
            let ampm = formatAMPM(item.noticeMessageDate)

            $(".cbp_tmtimeline").append(`<li>
                        <time class="cbp_tmtime" datetime="${item.noticeMessageDate}"><span>${ampm}</span> <span>${date}</span></time>
                        <div class="cbp_tmicon bg-orange"><i class="zmdi zmdi-account-add"></i></div>
                        <div class="cbp_tmlabel">
                            
                            <div class="btn-group btg" role="group" aria-label="Basic example">
                                <button type="button" class="btn btn-primary btn-sm" id="accept">수락</button>
                                <input class="noticeMessageNo" type="hidden" name="noticeMessageNo" value="${item.noticeMessageNo}">
                                <button type="button" class="btn btn-secondary btn-sm" id="remove">삭제</button>
                            </div>
                            <h2><a href="javascript:void(0);">${item.sender}</a></h2>
                            <p>${item.noticeMessageDetail}</p>
                        </div>
                    </li>`)
            //숲 둘러보기 
        } else if (item.noticeMessageType == '4') {
            let date = timeForToday(item.noticeMessageDate);
            let ampm = formatAMPM(item.noticeMessageDate)

            $(".cbp_tmtimeline").append(`<li>
                        <time class="cbp_tmtime" datetime="${item.noticeMessageDate}"><span>${ampm}</span> <span>${date}</span></time>
                        <div class="cbp_tmicon bg-orange"><i class="zmdi zmdi-account-add"></i></div>
                        <div class="cbp_tmlabel">
                            
                            <div class="btn-group btg" role="group" aria-label="Basic example">
                                <input class="noticeMessageNo" type="hidden" name="noticeMessageNo" value="${item.noticeMessageNo}">
                                <button type="button" class="btn btn-secondary btn-sm" id="remove">삭제</button>
                            </div>
                            <h2><a href="javascript:void(0);">${item.sender}</a></h2>
                            <p>회원님의 나무가 ${item.sender}숲에 속하셨습니다.
                            <a href="/forest/getForest?forestNo=${item.forestNo}">숲 둘러보기</a>
                            </p>
                        </div>
                    </li>`)

        }



    })
}

function createUserTag(value) {

    $.each(value, function (index, item) {
        $('tbody').append(`<tr>
      <td>${item.treeNo}</td>
      <td>${item.userId}</td>
      <td>${item.email}</td>
      <td>${item.userState}</td>
      <td>${item.userRegDate}</td>
      <td></td>
    </tr>
    `);
    });
};

function createReportTag(value) {

    $.each(value, function (index, item) {

        if(item.reportType=='0'){
            $('tbody').append(`<tr>
            <td>${item.reportNo}</td>
            <td>${item.reportedPostNo}</td>
            <td>${item.reportedTreeNo}</td>
            <td>${item.reporterTreeNo}</td>
            <td>욕설</td>
            <td>${item.reportRegDate}</td>
            <td></td>
          </tr>
          `);
        }else if(item.reportType=='1'){
            $('tbody').append(`<tr>
            <td>${item.reportNo}</td>
            <td>${item.reportedPostNo}</td>
            <td>${item.reportedTreeNo}</td>
            <td>${item.reporterTreeNo}</td>
            <td>음란물</td>
            <td>${item.reportRegDate}</td>
            <td></td>
          </tr>
          `);
        }else if(item.reportType=='2'){
            $('tbody').append(`<tr>
            <td>${item.reportNo}</td>
            <td>${item.reportedPostNo}</td>
            <td>${item.reportedTreeNo}</td>
            <td>${item.reporterTreeNo}</td>
            <td>도박</td>
            <td>${item.reportRegDate}</td>
            <td></td>
          </tr>
          `);
        }else if(item.reportType=='3'){
            $('tbody').append(`<tr>
            <td>${item.reportNo}</td>
            <td>${item.reportedPostNo}</td>
            <td>${item.reportedTreeNo}</td>
            <td>${item.reporterTreeNo}</td>
            <td>아동학대</td>
            <td>${item.reportRegDate}</td>
            <td></td>
          </tr>
          `);
        }
        

       
    });
};


