<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="ContentShelves.aspx.cs" Inherits="BANURNS.AdminPanel.ContentShelves" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../vendors/pnotify/dist/pnotify.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet"/>

    <link href="../vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet"/>

            <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet"/>
    <style>
        .RemoveCell {
        cursor:pointer;
        }
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
                <h3>Управление содержимым полок</h3>
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
                          <select id="DepotSelector" required datatextfield="Name" datavaluefield="ID"  runat="server" class="form-control required">
                          
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
                    <h2>Управление торговыми точками</h2>
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

                            <form id="frm3"  class="form-horizontal form-label-left" >                  


                        <div class="item form-group">
                      
                        <div class="control-label col-md-3 col-sm-3 col-xs-12">
                          <div style="height:90px; overflow-y:auto" class="checkbox">                           
                            <asp:Literal runat="server" ID="TradePointContainer"></asp:Literal>

                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                        
                          <input id="send" onclick="javascript: AddTradePoints()" type="button" value="Сохранить"  class="btn btn-success" />
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
                    <h2>Полки <small></small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                     
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                     
                  </div>
                       <p><i>'0'-Количество содержимого в полке</i></p>
                  <div class="x_content" style="display: block;">
                    <br/>
                    <form id="dfffs"  class="form-horizontal form-label-left input_mask"  >

                 


                         
           <div class="modal fade bs-example-modal-lg md2" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content" >

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel2">Содержимое полки</h4>
                        </div>
                        <div class="modal-body">
                           
                    <div id="CellInfoForms">
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Наименование <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                           <input id="SourceText" required="required"   class="form-control col-md-7 col-xs-12" data-validate-length-range="256" placeholder="Ванильное"   maxlength="500" type="text"/>
                        </div>                          
                      </div>

                        <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Еденица измерения <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                           <input id="EdIzm" required="required"   class="form-control col-md-7 col-xs-12"  maxlength="50" type="text"/>
                        </div>                          
                      </div>
                      

                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Количество <span class="required"></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="VGCount"   class="form-control col-md-7 col-xs-12"  min="1" value="1" type="number"/>
                        </div>
                      </div>

                           <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                        
                          <input id="send" onclick="javascript: AddToCellData()" type="button" value="Добавить "  class="btn btn-success" />
                        </div>
                      </div>

                        <div  style="height:350px; overflow-y:auto">
                      <table class="table" style="width:100%" id="CellData">
                     <thead>
                         <tr><th>Наименование</th>
                             <th>Еденица измерения</th>
                              <th>Количество</th>
                              <th></th>
                         </tr>
                     </thead>
                      <tbody class="CellDataBody">
                   
                      </tbody>
                    </table>
                        </div>

                  
                        </div>
                            <div  id="LoadMask">
                                <div class="loader"></div>
                              <center>  Загрузка...</center>
                            </div>
                        </div>
                        <div class="modal-footer">
                         <button type="button" onclick="javascript: TestSignal()" class="btn btn-primary mbtn" >Тест индикации</button>
                          <button type="button"  class="btn btn-primary mbtn" data-dismiss="modal">Закрыть</button>
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

        var ClickButton;


        function InstallClickTP() {
            $('.tp').click(function () {
                ClickButton = $(this);

                HideControls();
                GetCellInfo();
            });
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




        function AddTradePoints() {
            var ChData = [];
            var TradePointsData;
            var Index = 0;
            $(".tpch").each(function () {

                if ($(this).parent().hasClass("checked") == true) {

                    TradePointsData = { TargetPointName: $(this).parent().parent().text(), TPID: $(this).val() };
                    ChData[Index] = TradePointsData;
                    Index++;
                }
            });

          
            var SendData = { SID: $("#ContentPlaceHolder1_DepotSelector option:selected").val(), TradePointsData: ChData };

            $.ajax({
                url: 'ContentShelves.aspx/AddTradepoints',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {

                    } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });
                        window.location.href = 'ContentShelves.aspx';
                    }
                    $('input').removeAttr("disabled");
                }
            });
        }





        $("#ContentPlaceHolder1_DepotSelector").change(function () {

            $(".SectionsData").html("");
            $(".tpch").iCheck('uncheck');

            var SendData = { DepotID: $("#ContentPlaceHolder1_DepotSelector option:selected").val() };

            $.ajax({
                url: 'ContentShelves.aspx/GetDepotSectionInfo',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d !=null) {

                        $(".SectionsData").html(data.d.TableContent);
                      
                        $.each(data.d.TPsInfo, function (key, value) {
                          
                            $(".tpch").each(function () {
                                if ($(this).val() == value)
                                {
                                    $(this).iCheck('check');
                                }
                            });
                            
                        });
                        
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


        function GetCellInfo() {


            var SendData = { CellID: ClickButton.attr("data-pos") };

            $.ajax({
                url: 'ContentShelves.aspx/GetCellValues',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.length > 0) {
                        ShowControls();
                        SetDefaultControls();


                        ShowControls();
                        var index = 0;
                        var AllCount = 0;
                        $(".CellDataBody").html("");
                        var htmlTableContent = "";
                        $.each(data.d, function () {
                            htmlTableContent = htmlTableContent + "<tr><td>" + data.d[index].Name + "</td><td>" + data.d[index].Edizm + "</td><td>" +
                                data.d[index].Count + "</td><td><a class=\"RemoveCell\" data-row=\"" + data.d[index].RowID + "\" >Удалить</a></td></tr>";

                            index++;
                        });

                        $(".CellDataBody").html(htmlTableContent);
                        InitDeleteCellValueClick();

                    } else { SetDefaultControls(); ShowControls(); }
                }, error: function () {
                    HideControls();
                    SetDefaultControls();
                    new PNotify({ title: 'Ошибка', text: "При получении данных произошла ошибка", type: 'error', styling: 'bootstrap3' });
                }
            });
        }

        function SetDefaultControls() { $("#SourceText").val(""); $("#EdIzm").val(""); $("#VGCount").val(""); $(".CellDataBody").html(""); }

        function InitDeleteCellValueClick()
        {
            $(".RemoveCell").click(function () {
                
                var SendData = {
                    RowID: $(this).attr("data-row")
                }


                $.ajax({
                    url: 'ContentShelves.aspx/RemoveCellValue',
                    type: 'POST',
                    contentType: "application/json; charset=utf-8",
                    dataType: "JSON",
                    data: JSON.stringify(SendData),
                    failure: function (response) {
                        $('input').removeAttr("disabled");
                    },
                    success: function (data) {
                        SetDefaultControls();
                        if (data.d.IsDone == true) {                         
                          
                            window.location.href = "ContentShelves.aspx";


                        } else {
                            new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });
                        }


                    }, error: function () {
                        HideControls();
                        SetDefaultControls();
                        new PNotify({ title: 'Ошибка', text: "При получении данных произошла ошибка", type: 'error', styling: 'bootstrap3' });
                    }
                });
            });
        }

         function AddToCellData()
         {
             if (!validator.checkAll($('#dfffs'))) {
                 new PNotify({ title: 'Ошибка', text: "Заполните поля отмеченные *", type: 'error', styling: 'bootstrap3' });
                 return;
             }
             var SendData = {
                 DryWarehouseID: $("#ContentPlaceHolder1_DepotSelector option:selected").val(), CellID: ClickButton.attr("data-pos"), Name: $("#SourceText").val(),
                 EdIzm: $("#EdIzm").val(), Count: $("#VGCount").val()
             }


             $.ajax({
                 url: 'ContentShelves.aspx/AddToCellData',
                 type: 'POST',
                 contentType: "application/json; charset=utf-8",
                 dataType: "JSON",
                 data: JSON.stringify(SendData),
                 failure: function (response) {
                     $('input').removeAttr("disabled");
                 },
                 success: function (data) {
                     SetDefaultControls();
                     if (data.d.IsDone == true) {
                         ShowControls();
                         var index = 0;
                         var AllCount = 0;
                         $(".CellDataBody").html("");
                         var htmlTableContent = "";
                         $.each(data.d.CellData, function () {
                             htmlTableContent = htmlTableContent + "<tr><td>" + data.d.CellData[index].Name + "</td><td>" + data.d.CellData[index].Edizm + "</td><td>" +
                                 data.d.CellData[index].Count + "</td><td><a class=\"RemoveCell\" data-row=\"" + data.d.CellData[index].RowID + "\" >Удалить</a></td></tr>";  
                             if (data.d.CellData[index].Count > 0)
                                 {
                                 AllCount = AllCount + data.d.CellData[index].Count
                             }
                           index++;
                         });
                         ClickButton.html("<span class=\"badge bg-orange\">" + AllCount + "</span> <i class=\"fa fa-dropbox\"></i>");
                         $(".CellDataBody").html(htmlTableContent);
                         InitDeleteCellValueClick();

                     } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });
                     }


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
                 url: 'ContentShelves.aspx/TestSignal',
                 type: 'POST',
                 contentType: "application/json; charset=utf-8",
                 dataType: "JSON",
                 data: JSON.stringify(SendData),
                 failure: function (response) {
                     $('input').removeAttr("disabled");
                 },
                 success: function (data) {
                     if (data.d.IsDone == true) {


                         new PNotify({ title: 'Сохранение', text: "Светодиод будет включен через некоторое время", type: 'info', styling: 'bootstrap3' });
                     } else {
                         new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                     }
                     $('input').removeAttr("disabled");
                 }
             });
         }

    </script>
</asp:Content>
