<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="AddNewDevice.aspx.cs" Inherits="BANURNS.AdminPanel.AddNewDevice" %>
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
        .DeleteDev {
        cursor:pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="">
        <div class="page-title">
              <div class="title_left">
                <h3>Управление устройствами</h3>
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
                    <h2>Добавление нового устройства</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                     <%-- <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>--%>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
             <%--       <p>Для загрузки шаблона укажите тип шаблона и дайте название шаблону.</p>--%>

                            <form id="frm2"  class="form-horizontal form-label-left" >                  


                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">ID-устройства <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="Name"   class="form-control col-md-7 col-xs-12" maxlength="256" data-validate-length-range="256" placeholder="Склад #1" required="required" type="text"/>
                        </div>
                      </div>

                   <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Выбор склада <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select id="SkladSelector" class="form-control col-md-7 col-xs-12" runat="server"></select>
                        </div>
                      </div>

                                <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Таймаут свечения светодиодов на вводе (мин) <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="Timeout" value="0"  class="form-control col-md-7 col-xs-12"  min="0"  data-validate-length-range="1" required="required" type="number"/>
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          <input type="button" value="Очистить" onclick=" javascript: Clear();" class="btn btn-primary" />
                          <input id="send" onclick="javascript: AddNewDevice()" type="button" value="Добавить новый склад"  class="btn btn-success" />
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
                    <h2>Список ролей <small></small></h2>
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

                     <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-sm">
                      <div class="modal-content">

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel2">Удаление роли</h4>
                        </div>
                        <div class="modal-body">
                          <h4>Вы действительно хотите удалить?</h4>
                          <p>После удаления устройства оно не сможет обращатса на сайт.</p>
                         
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Нет</button>
                          <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="javascript:DeleteDevice()">Да. Удалить!</button>
                        </div>

                      </div>
                    </div>
                  </div>
                        <div data-rid="" style="display:none" id="SRID"></div>
                    <table  id="DepotTable" class="table">
                      <thead>
                        <tr>
                          <th>Идентификатор устройства</th>
                          <th>Название склада</th>
                          <th>Таймаут (мин)</th>
                           <th>Управление</th>
                        </tr>
                      </thead>
                      <tbody class="Trows">
                      <asp:Literal runat="server" ID="DTContent"></asp:Literal>
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
        $('.DeleteDev').click(function () {
            $('#SRID').attr('data-rid', $(this).attr('data-val'));
        });
        function AddNewDevice() {
            var SendData = {
                DeviceID: $('#Name').val(), SkladName: $('#ContentPlaceHolder1_SkladSelector option:selected').text(), SkladID: $('#ContentPlaceHolder1_SkladSelector option:selected').val(), Timeout: $('#Timeout').val()
            }

            $.ajax({
                url: 'AddNewDevice.aspx/CreateNewDevice',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {
                        window.location.href = "AddNewDevice.aspx";
                    } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                    }
                    $('input').removeAttr("disabled");
                }
            });
        }

        function DeleteDevice()
        {
            var SendData = {
                DevID:   $('#SRID').attr('data-rid')
            }

            $.ajax({
                url: 'AddNewDevice.aspx/DeleteDevice',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {
                        window.location.href = "AddNewDevice.aspx";
                    } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                    }
                    $('input').removeAttr("disabled");
                }
            });
        }
    </script>
</asp:Content>
