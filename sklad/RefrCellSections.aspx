<%@ Page Title="" Language="C#" MasterPageFile="~/sklad/Sklad.Master" AutoEventWireup="true" CodeBehind="RefrCellSections.aspx.cs" Inherits="BANURNS.sklad.RefrCellSections" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../vendors/pnotify/dist/pnotify.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet"/>

        <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet"/>
 
    <style>
        .cellButton {
        width:80px;
        }

        #SectionsContainer {
        width:100%;
        
        }
         /*#SectionsContainer tr {
            border: black;
            }*/
            #SectionsContainer tr td {
             border:solid;
             background-color: #ddd;
             text-align:center;
           
            }

         #SectionsContainer tr td a {
           
            margin: 0 auto;
            }

.loader {
     margin:0 auto;
  border: 16px solid #f3f3f3;
  border-radius: 50%;
  border-top: 16px solid #3498db;
  border-bottom: 16px solid #3498db;
  width: 120px;
  height: 120px;
  -webkit-animation: spin 2s linear infinite;
  animation: spin 2s linear infinite;
}

@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="">
          <div class="page-title">
              <div class="title_left">
                <h3>Управление секциями</h3>
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
                    <h2>Выбор склада</h2>
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
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Выбор скалада <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select id="DepotSelector" required  runat="server" class="form-control required">
                          
                          </select>
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
                    <h2>Секции <small></small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                     
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                     
                  </div>
                       <p><i>'0'-Количество торговых точек. 'Нет или Да' наличее или отсутсвие вкуса мороженного</i></p>
                  <div class="x_content" style="display: block;">
                    <br/>
                    <form id="dfffs"  class="form-horizontal form-label-left input_mask">

                 


                         
           <div class="modal fade bs-example-modal-lg md2" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content" >

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel2">Настройки секции</h4>
                        </div>
                        <div class="modal-body">
                           
                    <div id="CellInfoForms">
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Вкусы <span class="required"></span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select id="FlavorSelector"    datatextfield="FlovorName" datavaluefield="ID"  runat="server" class="form-control required">
                          
                          </select>
                        </div>                          
                      </div>

                       <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Тип секции <span class="required"></span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select id="CellTypeSelector"    datatextfield="Value" datavaluefield="ID"  runat="server" class="form-control required">
                          
                          </select>
                        </div>                          
                      </div>

                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Количество вагонеток в секции <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="VGCount"   class="form-control col-md-7 col-xs-12"  min="0" value="0" required="required" type="number"/>
                        </div>
                      </div>

                       <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Торговые точки <span class="required"></span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        <div style="height:90px; overflow-y:auto" class="checkbox">                           
                            <asp:Literal runat="server" ID="TradePointContainer"></asp:Literal>

                          </div>
                        </div>
                         </div> 
                        </div>
                            <div  id="LoadMask">
                                <div class="loader"></div>
                              <center>  Загрузка...</center>
                            </div>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default mbtn"  data-dismiss="modal">Отмена</button>
                            <button type="button" onclick="javascript: TestSignal()" class="btn btn-primary mbtn" >Тест индикации</button>
                          <button type="button" onclick="javascript: SaveCellsInfo()" class="btn btn-primary mbtn" data-dismiss="modal">Сохранить данные</button>
                        </div>

                      </div>
                    </div>
                  </div>


                        <div id="flavorsel" style="display:none" data-pos=""></div>
                       <div style="width:100%; height:100%; overflow-x:auto">
                    <table  id="SectionsContainer">
                     
                      <tbody class="SectionsData">
                      <asp:Literal runat="server" ID="SectionsPresenter"></asp:Literal>
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
    <script>
        var ClickButton;
        function InstallClickTP() {
            $('.tp').click(function () {
                ClickButton = $(this);

                HideControls();
                GetCellInfo();
            });
        }


        $("#ContentPlaceHolder1_DepotSelector").change(function () {

            $(".SectionsData").html("");


            var SendData = { DepotID: $("#ContentPlaceHolder1_DepotSelector option:selected").val() };

            $.ajax({
                url: 'RefrCellSections.aspx/GetDepotSectionInfo',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.length > 0) {

                        $(".SectionsData").html(data.d);
                        InstallClickTP();
                    } else {
                        new PNotify({ title: 'Ошибка', text: "Нет данных для отображения", type: 'info', styling: 'bootstrap3' });
                    }


                }, error: function () {

                    new PNotify({ title: 'Ошибка', text: "При получении данных произошла ошибка", type: 'error', styling: 'bootstrap3' });
                }
            });

        });

        $(document).ready(function () {
            InstallClickTP();



        });

        function AddTargetPoint() {

            //   $("button[data-pos='" + $('#flavorsel').attr('data-pos') + "']").text($("#ContentPlaceHolder1_TradePointSelector option:selected").text());
            // $("button[data-pos='" + $('#flavorsel').attr('data-pos') + "']").attr("data-id", $("#ContentPlaceHolder1_TradePointSelector option:selected").val());
            ClickButton.text($("#ContentPlaceHolder1_TradePointSelector option:selected").text());

            $("#D" + ClickButton.attr("data-pos")).attr("data-tpid", $("#ContentPlaceHolder1_TradePointSelector option:selected").val());
            $("#D" + ClickButton.attr("data-pos")).attr("data-tpv", $("#ContentPlaceHolder1_TradePointSelector option:selected").text());
        }

        function RemoveTargetPoint() {
            ClickButton.text("***");
            ClickButton.attr("data-id", "");
            $("#D" + ClickButton.attr("data-pos")).attr("data-flid", "");
            $("#D" + ClickButton.attr("data-pos")).attr("data-fl", "");
            $("#D" + ClickButton.attr("data-pos")).attr("data-tpid", "");
            $("#D" + ClickButton.attr("data-pos")).attr("data-tpv", "");
        }

        function AddFlavor() {
            ClickButton.text($("#ContentPlaceHolder1_FlavorSelector option:selected").text());

            $("#D" + ClickButton.attr("data-pos")).attr("data-flid", $("#ContentPlaceHolder1_FlavorSelector option:selected").val());
            $("#D" + ClickButton.attr("data-pos")).attr("data-fl", $("#ContentPlaceHolder1_FlavorSelector option:selected").text());

        }

        function SaveCellsInfo() {
            var ChData = [];
            var TpInCellItem;
            var Index = 0;
            $(".tpch").each(function () {

                if ($(this).parent().hasClass("checked") == true) {

                    TpInCellItem = { TargetPointName: $(this).parent().parent().text(), TPID: $(this).val() };
                    ChData[Index] = TpInCellItem;
                    Index++;
                }
            });

            var CellData = {
                CellPosition: ClickButton.attr("data-pos"), FlavorName: $("#ContentPlaceHolder1_FlavorSelector option:selected").text(),
                CellTypeName: $("#ContentPlaceHolder1_CellTypeSelector option:selected").text(), Count: $("#VGCount").val(), CellsTPs: ChData
            };
            var SendData = { RefDepot: $("#ContentPlaceHolder1_DepotSelector option:selected").val(), CD: CellData };

            $.ajax({
                url: 'RefrCellSections.aspx/SaveCellsInfo',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {

                        ClickButton.html("<span class=\"badge bg-orange\">" + SendData.CD.Count + "</span> <i class=\"fa fa-inbox\"></i> " + SendData.CD.CellsTPs.length + ":" + GetFlavor(SendData.CD.FlavorName) + "");
                        new PNotify({ title: 'Сохранение', text: "Данные успешно сохранены", type: 'info', styling: 'bootstrap3' });
                    } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                    }
                    $('input').removeAttr("disabled");
                }
            });
        }

        function GetFlavor(FlName) {
            if (FlName == "Не указано") { return "Нет"; }
            return "Да";
        }

        function HideControls() {
            $("#CellInfoForms").attr("style", "display:none");
            $("#LoadMask").attr("style", "");
            $(".mbtn").attr("disabled", "disabled");
        }


        function ShowControls() {
            $("#CellInfoForms").removeAttr("style");
            $("#LoadMask").attr("style", "display:none");
            $(".mbtn").removeAttr("disabled");
        }

        function SetDefaultControls() {
            $("#ContentPlaceHolder1_FlavorSelector").val("");
            $("#ContentPlaceHolder1_CellTypeSelector").val("");
            // $(".tpch").iCheck('check');
            $(".tpch").iCheck('uncheck');

            $("#VGCount").val("0");
        }

        function GetCellInfo() {


            var SendData = { DepotID: $("#ContentPlaceHolder1_DepotSelector option:selected").val(), CellPosition: ClickButton.attr("data-pos") };

            $.ajax({
                url: 'RefrCellSections.aspx/GetCellInformation',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d == null) {
                        ShowControls();
                        SetDefaultControls();
                    } else {
                        // new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });
                        ShowControls();
                        SetDefaultControls();

                        $("#VGCount").val(data.d.Count);
                        if (data.d.FlavorName.length > 0) {
                            $("#ContentPlaceHolder1_FlavorSelector option").each(function () {
                                if ($(this).text() == data.d.FlavorName) { $("#ContentPlaceHolder1_FlavorSelector").val($(this).val()); }
                            });
                        }


                        if (data.d.CellTypeName.length > 0) {
                            $("#ContentPlaceHolder1_CellTypeSelector option").each(function () {
                                if ($(this).text() == data.d.CellTypeName) { $("#ContentPlaceHolder1_CellTypeSelector").val($(this).val()); }
                            });
                        }
                        var index = 0;
                        $.each(data.d.CellsTPs, function () {

                            $(".tpch").each(function () {

                                if ($(this).val() == data.d.CellsTPs[index].TPID) {
                                    $(this).iCheck('check');
                                }
                            });
                            index++;
                        });
                    }
                    $('input').removeAttr("disabled");
                }, error: function () {
                    HideControls();
                    SetDefaultControls();
                    new PNotify({ title: 'Ошибка', text: "При получении данных произошла ошибка", type: 'error', styling: 'bootstrap3' });
                }
            });
        }


        function TestSignal() {
            // ClickButton.attr("data-pos")

            var SendData = { CellInfo: ClickButton.attr("data-pos"), SID: $("#ContentPlaceHolder1_DepotSelector option:selected").val() };

            $.ajax({
                url: 'RefrCellSections.aspx/TestSignal',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {


                        new PNotify({ title: 'Сохранение', text: "Светодеод будет включен через неткорое время", type: 'info', styling: 'bootstrap3' });
                    } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                    }
                    $('input').removeAttr("disabled");
                }
            });
        }
    </script>
</asp:Content>
