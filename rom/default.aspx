<%@ Page Title="" Language="C#" MasterPageFile="~/rom/rommainmaster.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="BANURNS.rom._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../vendors/pnotify/dist/pnotify.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet"/>
    <link href="../css/CheckBox.css" rel="stylesheet" />
    <style>
        @media (max-width: 800px) {
    /*td {
       display:block;
    }
            th {
            display:none;
            }

            tr {
            border-bottom:solid 1px;
            border-color:ActiveBorder;
            }*/

}

        .ScrollTable {
        display:block;  overflow-y: auto;  height:450px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="">
        <div class="page-title">
              <div class="title_left">
                <h3>Создание заявок</h3>
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
                    <h2>Параметры заявки</h2>
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
                    
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
             <%--       <p>Для загрузки шаблона укажите тип шаблона и дайте название шаблону.</p>--%>

                          <form id="frm1"  class="form-horizontal form-label-left" > 
                     <div class="item form-group">
                      <div class="col-md-3">
                          <%=BANURNS.appClasses.TemplateMng.InitCheckbox(BANURNS.appClasses.TemplateMng.LoadTemplate("CheckBox"),"","haveCheck","Чек",false) %>
                      </div>

                          <div class="col-md-3">
                          <%=BANURNS.appClasses.TemplateMng.InitCheckbox(BANURNS.appClasses.TemplateMng.LoadTemplate("CheckBox"),"","haveFact","Счет фактура",false) %>
                      </div>

                         <div class="col-md-3">
                             <div class="xdisplay_inputx form-group has-feedback">
                                <input  type="text" class="form-control has-feedback-left" id="Cl2"  required name="daterange" placeholder="Дата доставки" aria-describedby="inputSuccess2Status3"/>
                                <b class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></b>
                                <b id="inputSuccess2Status4" class="sr-only">(success)</b>
                              </div>
                         </div>
                         <div class="col-md-3">
                             <select class="form-control" id="SelectHours">
                                 <option value="09:00-13:00">09:00-13:00</option>
                                 <option value="13:00-20:00">13:00-20:00</option>
                                  <option value="00:00-00:00">00:00-00:00</option>
                             </select>
                         </div>
                      </div>
                      
                    </form>
                    
                     
                  </div>
                </div>
              </div>
            </div>


         <div class="clearfix"></div>
            <h4>Заявка будет отправлена от: <b   id="SenderInfo" data-r=""></b></h4>
          <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Выбор заказчика</h2>
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
                      <li><a id="FilterButton" href="#" ><i class="fa fa-filter"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
             <%--       <p>Для загрузки шаблона укажите тип шаблона и дайте название шаблону.</p>--%>

                          <form id="frm3"  class="form-horizontal form-label-left" > 
                     <div class="item form-group">
                       
                         <table id="DataTable"  class="table jambo_table">
                             <thead>
                                 <tr>
                                     <th>Телефоннный номер</th>
                                      <th>Закзачик</th>
                                     <th>Название</th>                                     
                                     <th>Инициалы отправителя</th>
                                     <th>Адрес</th>                
                                     <th></th>
                                 </tr>
                             </thead>
                             <tbody>
                                 
                             </tbody>
                         </table>
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
                      
                    </ul>
                       <button type="button" id="SendRequest" class="btn  btn-success">Отправить заявку</button>
                      <button type="button" id="SaveChangesClientTempDataButton" class="btn  btn-info"><b class="fa fa-save"></b></button>
                      <button type="button" id="ShowAddModalButton" class="btn  btn-info"><b class="fa fa-plus"></b></button>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
             <%--       <p>Для загрузки шаблона укажите тип шаблона и дайте название шаблону.</p>--%>

                          <form id="frm4"  class="form-horizontal form-label-left" > 
                     <div class="item form-group">
                       
                         <table id="TempTable"  class="table  jambo_table table-hover">
                             <thead>
                                 <tr>
                                     <th>Наименование</th>
                                      <th>Коичество</th>
                                     <th>Ед.Изм</th>                                     
                                     <th></th>
                                     
                                 </tr>
                             </thead>
                             <tbody>
                                 
                             </tbody>
                         </table>
                      </div>
                      
                    </form>
                    
                     
                  </div>
                </div>
              </div>
            </div>
</div>


        <div class="modal fade bs-example-modal-lg " tabindex="-1" id="AddModal" role="dialog" aria-hidden="true" >
                    <div class="modal-dialog modal-lg" style="width:80%">
                      <div class="modal-content" >

                        <div style="background-color:#73879C" class="modal-header">
                          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                          </button>
                          <p class="modal-title" style="color:whitesmoke" id="myModalLabel">Добавление наименования</p>
                        </div>
                        <div class="modal-body">
                        
                             <form id="frm2"   class="form-horizontal form-label-left" >
                             <select id="DepotSelector"  style="width:250px;" class="form-control" runat="server" ></select>
                              
                               <%--  <div style="height:450px; width:100%; overflow:auto">--%>
                                    
                                     <table id="ModalTable" style="width:100%;   table-layout: fixed; border-collapse: collapse;"  class="table jambo_table table-hover">
                                         <thead>
                                             <tr >
                                                 <th>Наименование</th>
                                                 <th>Коичество</th>
                                                 <th>Ед.Изм</th>
                                                 <th></th>

                                             </tr>
                                         </thead>
                                         <tbody id="ScrollTable" class="ScrollTable">
                                             <asp:Literal runat="server" ID="TableContentDEPOT"></asp:Literal>
                                         </tbody>
                                     </table>
                                <%-- </div>--%>
                              </form>

                        </div>
                        <div class="modal-footer">
                          <button type="button" id="AddTempDataButton" class="btn btn-success" >Применить</button>
                         <button type="button" class="btn btn-danger" data-dismiss="modal">Закрыть</button>
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
        validator.message.date = 'not a real date';
        var MainTable;
        var TempTable;
        var DateSelector;

        $('form')
       //.on('blur', 'input[required], input.optional, select.required', validator.checkField)
       //.on('change', 'select.required', validator.checkField)
       //.on('keypress', 'input[required][pattern]', validator.keypress);

        $('.multi.required').on('keyup blur', 'input', function () {
          //  validator.checkField.apply($(this).siblings().last()[0]);

        });

        $(document).ready(function () {

           

            MainTable = $('#DataTable').DataTable({
                "language": {
                    "url": "../js/RuDataTableD.txt"
                },
                "initComplete": function (settings, json) {

                },
                "scrollY": "400px",              
                "scrollCollapse": true,

            });
            MainTable.on('draw', function () {
                initTableButtons();
            });
            

            TempTable = $("#TempTable").DataTable({
                "language": {
                    "url": "../js/RuDataTableD.txt"
                },
                "initComplete": function (settings, json) {

                },
                "scrollY": "400px",
                "scrollCollapse": true,

            });
        
            SendtoServerDataStd("default.aspx/Show", {}, function (resp) {
                FillTable(resp.d, MainTable);
            });

            SendtoServerDataStd("default.aspx/ShowTempData", {}, function (resp) {
                FillTable(resp.d, TempTable);
            });
        });

        function initTableButtons()
        {
            $(".seluser").click(function () {
                SendtoServerDataStd("default.aspx/CustomerInfo", { ID: $(this).attr("data-r") }, function (resp) {
                    $("#SenderInfo").text(resp.d[1]);
                    $("#SenderInfo").attr("data-r",resp.d[0]);
                });
            });
        }
      


        $("#ShowAddModalButton").click(function () {
           
            $("#AddModal").modal("show");

        });

        DateSelector=    $('input[name="daterange"]').daterangepicker({
            singleDatePicker: true, format: "DD/MM/YYYY",
            "locale": {
                "format": "DD/MM/YYYY",
                "separator": " - ",
                "applyLabel": "Применить",
                "cancelLabel": "Отмена",
                "fromLabel": "От",
                "toLabel": "До",
                "customRangeLabel": "Свой",
                "daysOfWeek": [
                    "Вс",
                    "Пн",
                    "Вт",
                    "Ср",
                    "Чт",
                    "Пт",
                    "Сб"
                ],
                "monthNames": [
                    "Январь",
                    "Февраль",
                    "Март",
                    "Апрель",
                    "Май",
                    "Июнь",
                    "Июль",
                    "Август",
                    "Сентябрь",
                    "Октябрь",
                    "Ноябрь",
                    "Декабрь"
                ],
                "firstDay": 1
            }
        });
        $("#Cl2").change(function () {       
            validator.checkAll($("#frm1"));
        });

        $("#AddModal").focus(function () {
            ModalTableSetSize();
        }); 

        $(window).resize(function () {
            ModalTableSetSize();
        });


        function ModalTableSetSize()
        {
            if ($("#ModalTable").innerWidth() <= 800) {
                $(".ScrollTable").children().children().removeAttr("style");
                $(".ScrollTable").css("width", ($("#ModalTable").innerWidth()) + "px");
                return;
            }
            $(".ScrollTable").children().children().css("width", ($("#ModalTable").innerWidth() / 4) + "px");
            $(".ScrollTable").css("width", ($("#ModalTable").innerWidth()) + "px");
        }


        $("#ContentPlaceHolder1_DepotSelector").change(function () {
            DisableAllElemets(true);
            $("#ScrollTable").html("");
            SendtoServerDataStd("default.aspx/DepotChange", { Value: $("#ContentPlaceHolder1_DepotSelector option:selected").val() }, function (resp) {
                DisableAllElemets(false);
                $("#ScrollTable").html(resp.d);
              
                ModalTableSetSize();
            });
        });

        $("#AddTempDataButton").click(function () {
            var TempData = [];
            $(".DepValues").each(function (index) {
                if (parseInt($(this).val()) > 0)
                {
                    TempData.push({ Count: $(this).val(), ID: $(this).attr("data-r"), DepotType: $(this).attr("data-dtype") });
                }
            });
            DisableAllElemets(true);
            SendtoServerDataStd("default.aspx/ADDTempData", { TempData: TempData }, function (resp) {
                if (resp.d.IsDone == true) {
                    SendtoServerDataStd("default.aspx/ShowTempData", {}, function (resp) {
                        FillTable(resp.d, TempTable);
                    });
                } else (ShowNtfError(resp.d.Message));
                DisableAllElemets(false);
            });
        });

        $("#SaveChangesClientTempDataButton").click(function () {
         
            var Data = [];
            $(".pcount").each(function (index) {
                Data.push({ ID: $(this).attr("data-r"), Count: $(this).val() });
            });

            DisableAllElemets(true);
            SendtoServerDataStd("default.aspx/SaveTempData", { Data: Data }, function (resp) {
                if (resp.d.IsDone == true) {
                    SendtoServerDataStd("default.aspx/ShowTempData", {}, function (resp) {
                        FillTable(resp.d, TempTable);
                    });
                } else { ShowNtfError(resp.d.Message); }
                DisableAllElemets(false);
            });
        });



        function GetSelDate() {
            var DataText = $("#Cl2").val();
          
            var S = DataText.split("/");
            var D = new Date(S[2], S[1], S[0], 0, 0, 0, 0);
            return D;
        }

        $("#SendRequest").click(function () {

            if (validator.checkAll($("#frm1")) == false) { return; }
            if ($("#SenderInfo").attr("data-r") == undefined) { ShowNtfError("Выберите пункт доставки"); return; }
            if ($("#SenderInfo").attr("data-r") == "") { ShowNtfError("Выберите пункт доставки"); return; }
          
           
          
            DisableAllElemets(true);
            SendtoServerDataStd("default.aspx/CreateRequest", {
                CustomerID: $("#SenderInfo").attr("data-r"),
                DelivDate: GetSelDate(), HaveCheck: $(".haveCheck").prop("checked"), HaveFact: $(".haveFact").prop("checked"), TimePeriod: $("#SelectHours option:selected").val()
            }, function (resp) {
                DisableAllElemets(false);
                if (resp.d.IsDone == true) {
                    alert("Заявка успешно отправлена");
                    window.location.href = "default.aspx";
                } else { ShowNtfError(resp.d.Message); }
            });
        });
    </script>

</asp:Content>
