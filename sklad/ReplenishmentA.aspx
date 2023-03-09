<%@ Page Title="" Language="C#" MasterPageFile="~/sklad/Sklad.Master" AutoEventWireup="true" CodeBehind="ReplenishmentA.aspx.cs" Inherits="BANURNS.sklad.ReplenishmentA" %>
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
        .DeleteFlovor {
        cursor:pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="">
         <div class="page-title">
              <div class="title_left">
                <h3>Пополнение холодильника</h3>
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
                    <h2>Параметры пополнения</h2>
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
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Выбор склада <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                       <select runat="server" class="form-control required" id="refrSelector"></select>
                        </div>
                      </div>

                          <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Числовой код <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="FlavorCode"   class="form-control col-md-7 col-xs-12" maxlength="13" data-validate-length-range="256" placeholder="Нажмите здесь для сканирования" required="required" type="text"/>
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
                    <h2>Перечень вкусов <small></small></h2>
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
                          <h4 class="modal-title" id="myModalLabel2">Удаление вкуса</h4>
                        </div>
                        <div class="modal-body">
                          <h4>Вы действительно хотите удалить?</h4>
                          <p>После удаления данные не будут добавлены на склад.</p>
                         
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Нет</button>
                          <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="javascript:DeleteFlavor()">Да. Удалить!</button>
                        </div>

                      </div>
                    </div>
                  </div>
                    <table  id="FlovorTable" class="table">
                      <thead>
                        <tr>
                          <th>Название вкуса</th>
                          <th>Идентификатор вкуса</th>
                           <th>Масса (кг)</th>
                           <th>Управление</th>
                        </tr>
                      </thead>
                      <tbody class="Trows">
                     
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
     
        var table= $('#FlovorTable').DataTable();
        $('.DeleteFlovor').click(function () {
            $('#SRID').attr('data-rid', $(this).attr('data-val'));
        });

        $('#FlavorCode').focus();
        $('#FlavorCode').on('input', function (e) {
            if ($(this).val().length == 13) {
                var SendData = {
                    BarCode: $(this).val(), DI: $('#ContentPlaceHolder1_refrSelector option:selected').val()
                }
                $(this).val('');
                $('input').attr("disabled", "disabled");
                $('#FlavorCode').focus();
                $.ajax({
                    url: 'ReplenishmentA.aspx/GetFlavorByCode',
                    type: 'POST',
                    contentType: "application/json; charset=utf-8",
                    dataType: "JSON",
                    data: JSON.stringify(SendData),
                    failure: function (response) {
                        $('input').removeAttr("disabled");
                        $('#FlavorCode').focus();
                    },
                    success: function (data) {
                        if (data.d.IsDone == true) {
                            //  $('.Trows').append("<tr><td>" + data.d.FlavorName + "</td><td>" + data.d.Code + "</td><td>" + data.d.Mass + "</td><td>Удалить</td></tr>");
                            table.row.add([data.d.FlavorName, data.d.Code, data.d.Mass, "<a href=\"#\">Удалить</a>"]).draw();
                            var audio = new Audio(); 
                            audio.src = 'Sonar.mp3';
                            audio.autoplay = true;
                        } else {
                            new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });
                            var audio = new Audio();
                            audio.src = 'gudok_freetone.mp3';
                            audio.autoplay = true;
                        }
                        $('input').removeAttr("disabled");
                        $('#FlavorCode').focus();
                    }, error: function () {
                        $('input').removeAttr("disabled");
                        new PNotify({ title: 'Ошибка', text: 'Неизвестная ошибка на сервере', type: 'error', styling: 'bootstrap3' });
                        $('#FlavorCode').focus();
                    }
                });
            }
        });
</script>
</asp:Content>
