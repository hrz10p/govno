﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="OutletsManagement.aspx.cs" Inherits="BANURNS.AdminPanel.OutletsManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../vendors/pnotify/dist/pnotify.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet"/>
      <link href="../vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet"/>
    <style>
        .DeleteTradePoint {
        cursor:pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="">
          <div class="page-title">
              <div class="title_left">
                <h3>Управление торговыми точками</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                 <%-- <div class="input-group">
                    <input type="text" class="form-control" placeholder="Найти по..."/>
                    <span class="input-group-btn">
                              <button class="btn btn-default" type="button">Ок!</button>
                          </span>
                  </div>--%>
                </div>
              </div>
            </div>

         <div class="clearfix"></div>

           <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Добавление новой торговой точки</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
               
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
             <%--       <p>Для загрузки шаблона укажите тип шаблона и дайте название шаблону.</p>--%>

                            <form id="frm2"  class="form-horizontal form-label-left" >                  


                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Наименование торговой точки <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="TradePointName"  class="form-control col-md-7 col-xs-12" maxlength="256" data-validate-length-range="256" placeholder="Хан шатыр" required="required" type="text"/>
                        </div>
                      </div>

                         

                   

                   

                     
                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          <input type="button" value="Очистить" onclick=" df.dropzone.removeAllFiles();" class="btn btn-primary" />
                          <input id="send" onclick="javascript: CreateNewTradePoint()" type="button" value="Добавить торговую точку"  class="btn btn-success" />
                        </div>
                      </div>
                    </form>
                    
                     
                  </div>
                </div>
              </div>
            </div>

        <div class="clearfix"></div>

             <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                  <div class="x_panel">
                  <div class="x_title">
                    <h2>Список пользователей <small></small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                     
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content" style="display: block;">
                    <br/>
                    <form id="dfffs"  class="form-horizontal form-label-left input_mask">
                            <div data-rid="" style="display:none" id="SRID"></div>
                        <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-sm">
                      <div class="modal-content">

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel2">Удаление пользователя</h4>
                        </div>
                        <div class="modal-body">
                          <h4>Вы действительно хотите удалить?</h4>
                          <p>После удаления торговой точки вся связанная информация будет удалена.</p>
                         
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Нет</button>
                          <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="javascript:DeleteTradePoint()">Да. Удалить!</button>
                        </div>

                      </div>
                    </div>
                  </div>
                    <table  id="TradePointsTable" class="table">
                      <thead>
                        <tr>
                          <th>Название торговой точки</th>
                         
                     
                            <th>Управление</th>
                        </tr>
                      </thead>
                      <tbody class="Trows">
                      <asp:Literal runat="server" ID="Trp"></asp:Literal>
                      </tbody>
                    </table>
                   
               

                    </form>
                  </div>
                </div>
                 </div>
               </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FotterPLaceHolder" runat="server">
         <script src="../vendors/jquery/dist/jquery.min.js"></script>
       
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>

  
 
    <!-- bootstrap-progressbar -->
    <script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="../vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="../vendors/skycons/skycons.js"></script>
      <script src="../vendors/validator/validator.js"></script>
   
  

    <!-- bootstrap-daterangepicker -->
    <script src="../js/moment/moment.min.js"></script>
    <script src="../js/datepicker/daterangepicker.js"></script>

    <script src="../vendors/pnotify/dist/pnotify.js"></script>
    <script src="../vendors/pnotify/dist/pnotify.buttons.js"></script>
    <script src="../vendors/pnotify/dist/pnotify.nonblock.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>

      <script src="../vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="../vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="../vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="../vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="../vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="../vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="../vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="../vendors/datatables.net-scroller/js/datatables.scroller.min.js"></script>
    <script src="../vendors/pdfmake/build/vfs_fonts.js"></script>
    <script src="../vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
    <script>
        validator.message.date = 'not a real date';
        var myDropzone;
        // validate a field on "blur" event, a 'select' on 'change' event & a '.reuired' classed multifield on 'keyup':
        $('form')
          .on('blur', 'input[required], input.optional, select.required', validator.checkField)
          .on('change', 'select.required', validator.checkField)
          .on('keypress', 'input[required][pattern]', validator.keypress);

        $('.multi.required').on('keyup blur', 'input', function () {
            validator.checkField.apply($(this).siblings().last()[0]);

        });

       

        $(document).ready(function () {
            $('#TradePointsTable').DataTable();
            $('.DeleteTradePoint').click(function () {
                $('#SRID').attr('data-rid', $(this).attr('data-val'));
            });
        });


        function CreateNewTradePoint() {
            if (!validator.checkAll($('#frm2'))) {
                return;
            }

            var SendData = {
                TradePointName: $('#TradePointName').val(), EmpName: $('#FIO').val(), UserID: $('#ContentPlaceHolder1_UserSelector option:selected').val()
            }
            
            $.ajax({
                url: 'OutletsManagement.aspx/CreateNewTradePoint',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {
                        window.location.href = "OutletsManagement.aspx";
                    } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                    }
                    $('input').removeAttr("disabled");
                }
            });
        }


        function DeleteTradePoint() {
            var SendData = {
                RowID: $('#SRID').attr('data-rid')
            }

            $.ajax({
                url: 'OutletsManagement.aspx/DeleteTradePoint',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {
                        window.location.href = "OutletsManagement.aspx";
                    } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                    }
                    $('input').removeAttr("disabled");
                }
            });
        }

    </script>
</asp:Content>
