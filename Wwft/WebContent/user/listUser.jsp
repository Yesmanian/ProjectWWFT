<%@ page language="java" contentType="text/html; charset=UTF-8" %>
  <%@ page pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!DOCTYPE html>
  <html lang="en">
  <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document</title>
       <!-- Style -->
  
       <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet" />
       <link href="/resources/css/fresh-bootstrap-table.css" rel="stylesheet" />

     
       <!-- Fonts and icons -->
       <link href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" rel="stylesheet">
       <link href="http://fonts.googleapis.com/css?family=Roboto:400,700,300" rel="stylesheet" type="text/css">
       <script src="../resources/javascript/noticemessage/main.js"></script>

  </head>
  <body>
     
      <!-- <header>
      <iframe src="../common/navBar.jsp" style="    position: relative;
      display: -ms-flexbox;
      display: block;
      -ms-flex-wrap: wrap;
      flex-wrap: wrap;
      -ms-flex-align: center;
      align-items: center;
      -ms-flex-pack: justify;
      justify-content: space-between;
       border:none;
       overflow: visible;
       position: relative;  " frameborder="0"    width="100%"
    height="72"  scrolling="no" seamless></iframe>
</header> -->
    <!-- <header id="wrap"> 
        
          
        <jsp:include page="../common/navBar.jsp"/>
      

      </header> -->


    <div class="fresh-table full-color-green">
        <!--
          Available colors for the full background: full-color-blue, full-color-azure, full-color-green, full-color-red, full-color-orange
          Available colors only for the toolbar: toolbar-color-blue, toolbar-color-azure, toolbar-color-green, toolbar-color-red, toolbar-color-orange
        -->
      
        <div class="toolbar">
          <button id="alertBtn" class="btn btn-default">Alert</button>
        </div>
      
        <table id="fresh-table" class="table">
          <thead>
            <th data-field="treeNo" data-sortable="true">treeNo</th>
            <th data-field="userId" data-sortable="true">userId</th>
            <th data-field="email" data-sortable="true">email</th>
            <th data-field="userState" data-sortable="true">userState</th>
            <th data-field="userRegDate" data-sortable="true" data-formatter="dateFormat">userRegDate</th>
            <th data-field="actions" data-formatter="operateFormatter" data-events="operateEvents">Actions</th>
          </thead>
          <tbody>
            <tr>
           
            </tr>
          </tbody>
        </table>
      </div>

      <!-- Javascript -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/bootstrap-table/dist/bootstrap-table.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>

<script type="text/javascript">
// $(document).ready(function () {
//     $('iframe').each(function(){
//         var url = $(this).attr("src");
//         $(this).attr("src",url+"?wmode=transparent");
//     });
// });

  var $table = $('#fresh-table')
  var $alertBtn = $('#alertBtn')

  window.operateEvents = {
    'click .like': function (e, value, row, index) {
      alert('You click like icon, row: ' + JSON.stringify(row))
      console.log(value, row, index)
    },
    'click .edit': function (e, value, row, index) {
      alert('You click edit icon, row: ' + JSON.stringify(row))
      console.log(value, row, index)
    },
    'click .remove': function (e, value, row, index) {
      alert('remove클릭됨')
      $table.bootstrapTable('remove', {
        field: 'id',
        values: [row.id]
      })
    }

  
  }

  function dateFormat(value, row, index) {
   return moment(value).format('YYYY/MM/DD');
}

  function operateFormatter(value, row, index) {
    return [
      
      `<a rel="tooltip" title="Edit" class="table-action edit"  href="/user/getUser?userId=\${row.userId}" title="Edit">
        <i class="fa fa-edit"></i>
      </a>`
      
    ].join('')
  }
  $(function () {
    $table.bootstrapTable({
      classes: 'table table-hover table-striped',
      toolbar: '.toolbar',

      search: true,
      showRefresh: true,
      showToggle: true,
      showColumns: true,
      pagination: true,
      striped: true,
      sortable: true,
      pageSize: 8,
      pageList: [8, 10, 25, 50, 100],
      
      formatShowingRows: function (pageFrom, pageTo, totalRows) {
        console.log(`\${pageFrom}::\${pageTo}::\${totalRows}`)
        return ''
      },
      formatRecordsPerPage: function (pageNumber) {
        return pageNumber + ' rows visible'
      }
    })

    $alertBtn.click(function () {
      alert('You pressed on Alert')
    })
  })

  let userList = [];
    <c:forEach items="${userList.list}" var="list">
          userList.push({ 
            userId  : "${list.userId}",
            email : "${list.email}",
            treeNo : "${list.treeNo}",
            userWithdrawRegDate : "${list.userWithdrawRegDate}",
            userRegDate : "${list.userRegDate}",
            userState : "${list.userState}",
            role : "${list.role}"
        
        });
    </c:forEach>
    console.log(JSON.stringify(userList));
    createUserTag(userList);
    
    $(function() {
    $('#silentSort').change(function () {
      $('#table').bootstrapTable('refreshOptions', {
        silentSort: $('#silentSort').prop('checked')
      })
    })
  })


</script>


      
  </body>
  </html>