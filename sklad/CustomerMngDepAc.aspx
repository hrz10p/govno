<%@ Page Title="" Language="C#" MasterPageFile="~/sklad/Sklad.Master" AutoEventWireup="true" CodeBehind="CustomerMngDepAc.aspx.cs" Inherits="BANURNS.sklad.CustomerMngDepAc" %>
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
        .remac {
        cursor:pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="page-title">
              <div class="title_left">
                <h3>Управление доступом на склады</h3>
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
                    <h2>Управление</h2>
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

                        <form id="frm2"  class="form-horizontal form-label-left">  

                       <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12"> Выбор пользователя <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select id="UserSelector"   runat="server" class="form-control required">
                           
                         
                          </select>
                        </div>
                      </div>

                              <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12"> Выбор склада <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select id="DepotSelector"    class="form-control required">
                           <asp:Literal runat="server" ID="DepotSelectorItems"></asp:Literal>
                         
                          </select>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                        
                          <input id="send" onclick="javascript: CreateNewAccess()" type="button" value="Разрешить доступ"  class="btn btn-success" />
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
                    <h2>Управление доступом <small></small></h2>
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

                     <div class="modal fade bs-example-modal-sm" id="RemoveModal" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-sm">
                      <div class="modal-content">

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel2">Запрет в достпуе</h4>
                        </div>
                        <div class="modal-body">
                          <h4>Вы действительно хотите закрыть доступ?</h4>
                          <p>После запрета пользователь не сможет выдавать по заявкам</p>
                         
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Нет</button>
                          <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="javascript:DeleteAcces()">Да. Закрыть!</button>
                        </div>

                      </div>
                    </div>
                  </div> 
                        <div data-r="" data-t="" style="display:none" id="SRID"></div>
                    <table  id="AcTable" class="table">
                      <thead>
                        <tr>
                          <th>Имя пользователя</th>
                          <th>Название склада</th>
                          <th></th>
                        </tr>
                      </thead>
                      <tbody class="Trows">
                      <asp:Literal runat="server" ID="AccesContent"></asp:Literal>
                       </tbody>
                    </table>
                   
               

                    </form>
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
    <script src="../js/sdm.js"></script>
    <script>
        var MainTable = "";
        $(document).ready(function () {
            MainTable=  $('#AcTable').DataTable({
                "language": {
                    "url": "../js/RuDataTableD.txt"
                },
                "initComplete": function (settings, json) {

                },
                "scrollY": "400px",
                "scrollCollapse": true,

            });

            InitClickButtons();
            
        });

        function InitClickButtons()
        {
            $('.remac').click(function () {
                $('#SRID').attr('data-r', $(this).attr('data-r'));
            });
        }


        function Show()
        {
            SendtoServerDataStd("CustomerMngDepAc.aspx/Show", {}, function (resp) {               
                FillTable(resp.d,MainTable );
                InitClickButtons();
            });
        }


        function DeleteAcces() {
            var SendData = {
                RowID: $('#SRID').attr('data-r')
            }
            DisableAllElemets(true)

            SendtoServerDataStd("CustomerMngDepAc.aspx/DeleteAcces", SendData, function (resp) {
                DisableAllElemets(false);
                $("#RemoveModal").modal("toggle");
                if (resp.d.IsDone == true) {
                    ShowNtfInfo("Сохранение...", "Изменения успешно приняты");
                    Show();
                } else {
                    ShowNtfError(resp.d.Message);
                }

            });


        }

        function CreateNewAccess() {
            var SendData = {
                DepID: $('#DepotSelector option:selected').val(), SkladType: $('#DepotSelector option:selected').attr('data-v'), UserName: $('#ContentPlaceHolder1_UserSelector option:selected').val()
            }

            DisableAllElemets(true)

            SendtoServerDataStd("CustomerMngDepAc.aspx/CreateAcces", SendData, function (resp) {
                DisableAllElemets(false);
                if (resp.d.IsDone == true) {
                    ShowNtfInfo("Сохранение...", "Изменения успешно приняты");
                    Show();
                } else {
                    ShowNtfError(resp.d.Message);
                }

            });
        }

    </script>
</asp:Content>
