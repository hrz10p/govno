<%@ Page Title="" Language="C#" MasterPageFile="~/sklad/Sklad.Master" AutoEventWireup="true" EnableViewState="false" CodeBehind="ViewRequest.aspx.cs" Inherits="BANURNS.sklad.ViewRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../vendors/pnotify/dist/pnotify.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet"/>
        <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet"/>

    <link href="../vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet"/>
    <style>
        .num {
            width:90px;
        }
        .delRec {
        cursor:pointer;
        }
        .addFlavor {
        width:90px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="">
          <div class="page-title">
              <div class="title_left">
                <h3>Просмотр заявок</h3>
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
                    <h2 runat="server" id="RequestSender"></h2>
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
                  <asp:Literal runat="server" ID="RQIDLiteral"></asp:Literal>
               

                    <div class="modal fade bs-example-modal-lg md2" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content" >

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel3">Наименование</h4>
                        </div>
                        <div class="modal-body">
                           
                    <div id="CellInfoForms">
                    
                       

                        <div  style="height:350px; overflow-y:auto">
                      <table class="table"  id="CellData">
                     <thead>
                         <tr><th>Назвние вкуса</th>
                              <th>Количество</th>
                              <th>Название склада</th>
                         </tr>
                     </thead>
                      <tbody class="CellDataBody">
                   <asp:Literal runat="server" ID="FlavorRows"></asp:Literal>
                      </tbody>
                    </table>
                        </div>

                  
                        </div>
                           
                        </div>
                        <div class="modal-footer">
                           <input  onclick="javascript: AddToRequest()" type="button" value="Добавить к заявке"  class="btn  btn-danger" />
                          <button type="button"  class="btn btn-primary mbtn" data-dismiss="modal">Закрыть</button>
                        </div>

                      </div>
                    </div>
                  </div>

                                
                                               
                <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-sm">
                      <div class="modal-content">

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel2">Удаление</h4>
                        </div>
                        <div class="modal-body">
                          <h4>Вы действительно хотите удалить</h4>
                          <p>После удаления данное наименование будет не доступно для выдачи</p>
                         
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Нет</button>
                          <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="javascript:DeleteFlavor()">Да. Удалить!</button>
                        </div>

                      </div>
                    </div>
                  </div> 


                 <div class="modal fade bs-example-modal-sm" id="CloseRequestModal" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-sm">
                      <div class="modal-content">

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel6">Закрытие заявки</h4>
                        </div>
                        <div class="modal-body">
                          <h4>Вы действительно хотите закрыть текущию заявку?</h4>
                         
                         
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Нет</button>
                          <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="javascript:CloseRequest()">Да. Закрыть!</button>
                        </div>

                      </div>
                    </div>
                  </div>
               
                 <p> Дата отправления:<b runat="server" id="RequestSendDate"></b> </p>
                        <div class="item form-group">
                       
                     <table id="MTable" class="table  table-responsive">
                         <thead>
                             <tr>
                                 <th>Наименование</th>
                                   <th>Количество</th>
                                 <th></th>
                             </tr>
                         </thead>
                         <tbody>
                               <asp:Literal runat="server" ID="FlavorShowData"></asp:Literal>
                         </tbody>
                     </table>
                      
                    
                      </div>

                     <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          <input id="SaveCh" onclick="javascript: SaveData()" type="button" value="Сохранить значения"  class="btn btn-success" />
                               <input  type="button"  data-toggle="modal" data-target=".md2"  value="Добавить к заявке"  class="btn btn-success" />
                             <input  onclick="javascript: window.location.href='deliveryA.aspx?rid='+$('#ParamContainer').text();"  type="button" value="Отправить на выдачу"  class="btn  btn-danger" />
                            <input type="button" id="CloseButton" class="btn btn-danger" value="Закрыть заявку" /> 
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
                    <h2>Обсуждение</h2>
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
                            <form id="frm4"  class="form-horizontal form-label-left" >  
                        <div class="item form-group">
                         <asp:Literal id="ParamContainer" runat="server"   ></asp:Literal>
                    <ul class="list-unstyled timeline">                  
                   <asp:Literal runat="server" ID="DiscusControl"></asp:Literal>
                   </ul>


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
                    <h2>Коментарий к заявке</h2>
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
                            <form id="frm5"  class="form-horizontal form-label-left" >        
                        <div class="item form-group">
                    <textarea id="CommentText" style="width:100%; height:150px;"  maxlength="500" placeholder="Текст коментария"></textarea>
                      </div>
                        <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          <input id="send" onclick="javascript: AddComment()" type="button" value="Отправить"  class="btn btn-success" />
                        </div>
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
    <!-- bootstrap-daterangepicker -->
    <script src="../js/moment/moment.min.js"></script>
    <script src="../js/datepicker/daterangepicker.js"></script>
    <script src="../vendors/pnotify/dist/pnotify.js"></script>
    <script src="../vendors/pnotify/dist/pnotify.buttons.js"></script>
    <script src="../vendors/pnotify/dist/pnotify.nonblock.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>
    <script src="../vendors/pdfmake/build/vfs_fonts.js"></script>

    <script src="../vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
           <script src="../vendors/switchery/dist/switchery.min.js"></script>
        <!-- Parsley -->
    <script src="../vendors/parsleyjs/dist/parsley.min.js"></script>

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
    <script src="../js/sdm.js"></script>
    <script>
        var ClickElm;
        var MainTable;
        $(document).ready(function () {
           
            $('#CellData').DataTable();
            $('#ZTable').DataTable();
            $('.WButton').text('Выполнить заявку');
            $('#TopMenu').append("   <li class=\"\"><a target=\"_blank\" href=\"CellsReport.aspx?rid=" + $('#ParamContainer').text() + "\">Печать заявки</a></li>\"");
            $('#TopMenu').append("   <li class=\"\"><a href=\"default.aspx\">Показать заявки</a></li>\"");
            $('.delRec').click(function () {
                ClickElm = $(this);
               
            });

            $('#deliv').click(function(){  
               
              
            });

           
           MainTable =$("#MTable").DataTable({
                "language": {
                    "url": "../js/RuDataTableD.txt"
                },
                "initComplete": function (settings, json) {

                },
                "scrollY": "400px",
                "scrollCollapse": true,

           });


        
        });

        $("#CloseButton").click(function () {
            $("#CloseRequestModal").modal("show");
        });

        function CloseRequest()
        {
            $("#CloseRequestModal").modal("toggle");
            DisableAllElemets(true);
            SendtoServerDataStd("deliveryA.aspx/CloseRequest", { RequestID: $('#ParamContainer').text(), Comment: "close_button_click", DID: $('#ParamContainer').attr("data-dp") }, function (resp) {
                DisableAllElemets(false);
                if (resp.d.IsDone == true) {
                    alert("Заявка успешно закрыта");
                    window.location.href = "default.aspx";
                } else { ShowNtfError(resp.d.Data); }

            });
        }

        function AddComment() {
            var SendData = { CommentText: $('#CommentText').val(), RequestID: $('#ParamContainer').text() };

            $.ajax({
                url: 'ViewRequest.aspx/AddComment',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {

                        window.location.href = "ViewRequest.aspx?rid=" + $('#ParamContainer').text();

                    } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                    }
                    $('input').removeAttr("disabled");
                }
            });
        }

        function WRequest()
        {

        }

        function DeleteFlavor()
        {
            var SendData = {
                FlID: $(ClickElm).attr('data-r')
            };
            
            $.ajax({
                url: 'ViewRequest.aspx/RemoveFlavor',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {

                        //  window.location.href = "ViewRequest.aspx?rid=" + $('#ParamContainer').text();
                        $(ClickElm).parent().parent().remove();

                    } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                    }
                    $('input').removeAttr("disabled");
                }
            });
        }

        function SaveData()
        {
            var Data = [];
            var index = 0;
            $('.num').each(function () {
                Data[index] = { Count: $(this).val(), RowID: $(this).attr('data-r') };
                index++;
            });

            var SendData = {refRequest: $('#ParamContainer').text(),Data:Data}
         

            $.ajax({
                url: 'ViewRequest.aspx/SaveChanges',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {

                        window.location.href = 'ViewRequest.aspx?rid=' + SendData.refRequest;
                        

                    } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                    }
                    $('input').removeAttr("disabled");
                }
            });
        }


        function AddToRequest()
        {
            var index = 0;
            var Morojnoe = [];
            var MorojnoeData;
            $('.addFlavor').each(function () {
                MorojnoeData = { RID: $(this).attr('data-d'), Count: $(this).val() }
                Morojnoe[index] = MorojnoeData;
                index++;
            });

            var SendData = { refRequest:$('#ParamContainer').text(), RDRD: Morojnoe };

            $.ajax({
                url: 'ViewRequest.aspx/AddToRequest',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {

                        window.location.href = 'ViewRequest.aspx?rid=' + SendData.refRequest;

                    } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                    }
                    $('input').removeAttr("disabled");
                }
            });
        }

    </script>
</asp:Content>
