<%@ Page Title="" Language="C#" MasterPageFile="~/mhddisp/mhddisp.Master" AutoEventWireup="true" CodeBehind="activer.aspx.cs" Inherits="BANURNS.mhddisp.activer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../vendors/pnotify/dist/pnotify.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet"/>
    <style>
        .HideTable {
        display:none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="">
        <div class="page-title">
              <div class="title_left">
                <h3></h3>
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
                    <h2>Не назначенные заявки</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
             <%--       <p>Для загрузки шаблона укажите тип шаблона и дайте название шаблону.</p>--%>
                          <form id="frm2"  class="form-horizontal form-label-left" >


                                <div class="modal fade bs-example-modal-lg md2" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content" >

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel4">Содержимое заявки</h4>
                        </div>
                        <div id="ModalContent" class="modal-body">
                           
                   <table class="table" id="RTable">
                            <thead>
                                <tr>
                                    <th>Название вкуса</th>
                                    <th>Количество</th>
                                     <th>Тара (Л)</th>
                                     <th>Управление</th>
                                   
                                </tr>
                            </thead>
                            <tbody class="Rcontent">
                   
                            </tbody>
                        </table>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default mbtn"  data-dismiss="modal">Закрыть</button>
                         <%--   <button type="button" onclick="javascript: Save()" class="btn btn-primary mbtn" >Сохранить изменения</button>
                          <button type="button" onclick="javascript: SaveCellsInfo()" class="btn btn-primary mbtn" data-dismiss="modal">Сохранить данные</button>--%>
                        </div>

                      </div>
                    </div>
                  </div>

   <div class="modal fade bs-example-modal-sm cr" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-sm">
                      <div class="modal-content">

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel3">Отмена заявки</h4>
                        </div>
                        <div class="modal-body">
                        
                          <div>
                              <p>Укажите причину отмены заявки</p>
                            <textarea class="form-control" maxlength="450" id="ComentText"></textarea>
                          </div>
                         
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Нет</button>
                          <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="javascript:CloseRequest()">Отменить заявку</button>
                        </div>

                      </div>
                    </div>
                  </div>


                        <div class="item form-group">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>ФИО   отправителя</th>
                                    <th>Дата и время доставки</th>
                                     <th>Дата и время создания</th>
                                     <th>Время ожидания</th>
                                     <th>Адрес доставки</th>
                                     <th>Телефон отправителя</th>
                                      <th>Водитель</th>                                 
                                    <th></th>   
                                     <th></th>                                       
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Literal runat="server" ID="RequestsTableText"></asp:Literal>
                            </tbody>
                        </table>
                      </div>

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
    <!-- DateJS -->
    <script src="../vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <!-- bootstrap-daterangepicker -->
    <script src="../js/moment/moment.min.js"></script> 
       <!-- DateJS -->
    <script src="../vendors/DateJS/build/date.js"></script> 
    <script src="../js/datepicker/daterangepicker.js"></script>
  
    <script src="../vendors/pnotify/dist/pnotify.js"></script>
    <script src="../vendors/pnotify/dist/pnotify.buttons.js"></script>
    <script src="../vendors/pnotify/dist/pnotify.nonblock.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>
    <script>
        var DataR;
        var clickElm;

        $(".dr").click(function () {
            DataR = $(this).attr("data-r");
            clickElm = $(this);
        });

        $(".sr").click(function () {
            DataR = $(this).attr("data-r");
            clickElm = $(this);

            $(".Rcontent").html("");
            $(".infoModal").remove();
            $("#RTable").addClass("HideTable");
            $("#ModalContent").append("<p class=\"infoModal\">Загрузка...</p>");
            var SendData = { ID: DataR }

            $.ajax({
                url: 'freerqs.aspx/GetRequestContent',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    $("#RTable").removeClass("HideTable");
                    $(".infoModal").remove();
                    $(data.d).each(function (index) {
                        $(".Rcontent").append("<tr><td>" + data.d[index].FlavorName + "</td><td>" + data.d[index].Count + "</td><td>" +
                            (data.d[index].Tara / 1000) + "</td><td></td>");

                    });
                    $('input').removeAttr("disabled");

                }, error: function (ex) {
                    new PNotify({ title: 'Ошибка', text: ex.responseText, type: 'error', styling: 'bootstrap3' });
                    $('input').removeAttr("disabled");
                }
            });


        });


        function CloseRequest() {
            if ($("#ComentText").val().length == 0) { new PNotify({ title: 'Ошибка', text: "Укажите причину отмены", type: 'error', styling: 'bootstrap3' }); return; }
            var SendData = { RequestComent: $("#ComentText").val(), ID: DataR }

            $.ajax({
                url: 'freerqs.aspx/DeleteRequest',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {

                        new PNotify({ title: 'Сохранение', text: "Ваша заявка успешно отменена", type: 'info', styling: 'bootstrap3' });
                        $("#ComentText").val("");
                        $(".dr").each(function () {
                            if (SendData.ID == $(this).attr("data-r")) {
                                $(this).parent().parent().remove();
                            }
                        });


                    } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                    }
                    $('input').removeAttr("disabled");
                }, error: function (ex) {
                    new PNotify({ title: 'Ошибка', text: ex.responseText, type: 'error', styling: 'bootstrap3' });
                    $('input').removeAttr("disabled");
                }
            });
        }

    </script>
</asp:Content>
