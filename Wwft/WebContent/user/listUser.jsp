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
            <th data-field="userRegDate" data-sortable="true">userRegDate</th>
            <th data-field="actions" data-formatter="operateFormatter" data-events="operateEvents">Actions</th>
          </thead>
          <tbody>
            <tr>
              <td>1</td>
              <td>Dakota Rice</td>
              <td>$36,738</td>
              <td>Niger</td>
              <td>Oud-Turnhout</td>
              <td></td>
            </tr>
            <tr>
              <td>2</td>
              <td>Minerva Hooper</td>
              <td>$23,789</td>
              <td>Curaçao</td>
              <td>Sinaai-Waas</td>
              <td></td>
            </tr>
            <tr>
              <td>3</td>
              <td>Sage Rodriguez</td>
              <td>$56,142</td>
              <td>Netherlands</td>
              <td>Baileux</td>
              <td></td>
            </tr>
            <tr>
              <td>4</td>
              <td>Philip Chaney</td>
              <td>$38,735</td>
              <td>Korea, South</td>
              <td>Overland Park</td>
              <td></td>
            </tr>
            <tr>
              <td>5</td>
              <td>Doris Greene</td>
              <td>$63,542</td>
              <td>Malawi</td>
              <td>Feldkirchen in Kärnten</td>
              <td></td>
            </tr>
            <tr>
              <td>6</td>
              <td>Mason Porter</td>
              <td>$78,615</td>
              <td>Chile</td>
              <td>Gloucester</td>
              <td></td>
            </tr>
            <tr>
              <td>7</td>
              <td>Alden Chen</td>
              <td>$63,929</td>
              <td>Finland</td>
              <td>Gary</td>
              <td></td>
            </tr>
            <tr>
              <td>8</td>
              <td>Colton Hodges</td>
              <td>$93,961</td>
              <td>Nicaragua</td>
              <td>Delft</td>
              <td></td>
            </tr>
            <tr>
              <td>9</td>
              <td>Illana Nelson</td>
              <td>$56,142</td>
              <td>Heard Island</td>
              <td>Montone</td>
              <td></td>
            </tr>
            <tr>
              <td>10</td>
              <td>Nicole Lane</td>
              <td>$93,148</td>
              <td>Cayman Islands</td>
              <td>Cottbus</td>
              <td></td>
            </tr>
            <tr>
              <td>11</td>
              <td>Chaim Saunders</td>
              <td>$5,502</td>
              <td>Romania</td>
              <td>New Quay</td>
              <td></td>
            </tr>
            <tr>
              <td>12</td>
              <td>Josiah Simon</td>
              <td>$50,265</td>
              <td>Christmas Island</td>
              <td>Sint-Jans-Molenbeek</td>
              <td></td>
            </tr>
            <tr>
              <td>13</td>
              <td>Ila Poole</td>
              <td>$67,413</td>
              <td>Montenegro</td>
              <td>Pontevedra</td>
              <td></td>
            </tr>
            <tr>
              <td>14</td>
              <td>Shana Mejia</td>
              <td>$58,566</td>
              <td>Afghanistan</td>
              <td>Ballarat</td>
              <td></td>
            </tr>
            <tr>
              <td>15</td>
              <td>Lana Ryan</td>
              <td>$64,151</td>
              <td>Martinique</td>
              <td>Portobuffolè</td>
              <td></td>
            </tr>
            <tr>
              <td>16</td>
              <td>Daquan Bender</td>
              <td>$91,906</td>
              <td>Sao Tome and Principe</td>
              <td>Walhain-Saint-Paul</td>
              <td></td>
            </tr>
            <tr>
              <td>17</td>
              <td>Connor Wagner</td>
              <td>$86,537</td>
              <td>Germany</td>
              <td>Solihull</td>
              <td></td>
            </tr>
            <tr>
              <td>18</td>
              <td>Boris Horton</td>
              <td>$35,094</td>
              <td>Laos</td>
              <td>Saint-Mard</td>
              <td></td>
            </tr>
            <tr>
              <td>19</td>
              <td>Winifred Ryan</td>
              <td>$64,436</td>
              <td>Ireland</td>
              <td>Ronciglione</td>
              <td></td>
            </tr>
          </tbody>
        </table>
      </div>

      <!-- Javascript -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/bootstrap-table/dist/bootstrap-table.min.js"></script>

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

  function operateFormatter(value, row, index) {
    return [
      
      '<a rel="tooltip" title="Edit" class="table-action edit" href="javascript:void(0)" title="Edit">',
        '<i class="fa fa-edit"></i>',
      '</a>'
      
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