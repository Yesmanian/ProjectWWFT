<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���̵� ã��</title>
</head>
<body>
<div class="container">
    <!-- Modal -->
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header" style="padding:35px 50px;">
                    <h4><span class="glyphicon glyphicon-lock"></span>���̵� ã��</h4>
                </div>
                <div class="modal-body" style="padding:40px 50px;">
                    <div style="color: #ac2925">
                        <center>�Էµ� ������ �ӽ� ��й�ȣ�� ���۵˴ϴ�.</center>
                    </div>
                    <hr>
                    <form role="form">
                        <div class="form-group">
                            <label for="email"><span class="glyphicon glyphicon-user"></span>email</label>
                            <input type="text" class="form-control" id="email" placeholder="���Խ� ����� �̸����� �Է��ϼ���.">
                        </div>
                        <button type="button" class="btn btn-success btn-block" id="checkEmail">OK</button>
                    </form>
                    <hr>
                    <div class="text-center small mt-2" id="checkMsg" style="color: red"></div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span
                            class="glyphicon glyphicon-remove"></span> Cancel
                    </button>
                </div>
            </div>

        </div>
    </div>
</div>
</body>
</html>