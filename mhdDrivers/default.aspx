<%@ Page Title="" Language="C#" MasterPageFile="~/mhdDrivers/mhddriverMasterPage.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="BANURNS.mhdDrivers._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../vendors/pnotify/dist/pnotify.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet"/>
    <style>
        .HideTable {
        display:none;
        }
        .ActiveRq {
            background-color: #66CCFF;
        }
        .info {
         padding:10px;
         font-size:35pt;
         cursor:pointer;
        }

        
        .BC {
      float:left; width:60px; height:100%
        }

        .AC {
        
        margin-left:5px; margin-top:15px; width:100%; height:100%
        }
        .abg {
        color:#fff;
      
        }
         .St {
        width:100%;
        }
        .NV {
        width:100%;
        }

        .delivElm {
        width:100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <button type="button"  data-toggle="modal"  data-target=".md3" id="SRB" class="btn btn-success St">Отпуск товара без заявки</button>

     <div class="modal fade bs-example-modal-lg md3" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content" >

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" >Содержимое заявки</h4>
                        </div>
                        <div id="DelivModalContent" class="modal-body">
                       <a onclick="javascript: DelivRq()" class="btn btn-app"> <i class="fa fa-shopping-cart"></i> Выдать </a>
                              
                   <hr style="margin:0px;"/>
                            <p id="DelivRqInfo"></p>
                            <hr style="margin:0px;"/>
                   <table class="table" id="RemnantsTable" style="position:relative" >
                            <thead>
                                <tr>
                                    <th>Название</th>                                     
                                    <th>Кол</th>                                   
                                     <th>Цена</th>
                                     <th></th>
                                   
                                </tr>
                            </thead>
                            <tbody class="DelivRcontent">
                   
                            </tbody>
                        </table>
                        </div>
                        <div class="modal-footer">
                        
                       
                        
                        
                        </div>

                      </div>
                    </div>
                  </div>



    <div class="">
            <div class="clearfix"></div>

          <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Мои заявки</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
             <%--       <p>Для загрузки шаблона укажите тип шаблона и дайте название шаблону.</p>--%>
                          <form id="frm2"  class="form-horizontal form-label-left">
                <div class="modal fade bs-example-modal-lg md2" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content" >

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel4">Содержимое заявки</h4>
                        </div>
                        <div id="ModalContent" class="modal-body">
                       <a data-dismiss="modal" onclick="javascript: TakeRQ()" class="btn btn-app"> <i class="fa fa-share"></i> Забрать заявку </a>
                       <a data-dismiss="modal" onclick="javascript: SetRequest()" class="btn btn-app"> <i class="fa fa-check"></i> Начать доставку </a>
                       <a onclick="javascript: SaveChanges()" class="btn btn-app"> <i class="fa fa-save"></i> Сохранить </a>
                             <a onclick="javascript: CloseRequest()" class="btn btn-app"> <i class="fa fa-close"></i> Закрыть заявку </a>
                   <hr style="margin:0px;"/>
                            <p id="RqInfo"></p>
                            <hr style="margin:0px;"/>
                            <p id="SummInfo"></p>
                            <hr style="margin:0px"/>
                   <table class="table" style="position:relative" id="RTable">
                            <thead>
                                <tr>
                                    <th>Название</th>
                                      <th>в хол.</th>
                                    <th>Кол</th>
                                   
                                     <th>Цена</th>
                                     <th></th>
                                   
                                </tr>
                            </thead>
                            <tbody class="Rcontent">
                   
                            </tbody>
                        </table>
                        </div>
                        <div class="modal-footer">
                        
                       <select class="form-control" id="PaySelector">
                           <option value="0">Заказ не доставлен</option>
                           <option value="1">Наличный расчет</option>
                            <option value="2">Безналичный расчет</option>
                       </select>
                        
                        
                        </div>

                      </div>
                    </div>
                  </div>

  


                        <div class="item form-group">
                    <div class="item form-group">
                        
                      
                  
                      
                         <div class="bs-glyphicons">
        <ul id="RqItems" class="bs-glyphicons-list"> 
            <asp:Literal runat="server" ID="RqItemsContainer"></asp:Literal>



      


            </ul>


                            
                      </div>
                    

                      </div>
                      </div>

                              
                    </form>
                    
                     
                  </div>
                </div>
              </div>
            </div>

         <div class="modal fade bs-example-modal-lg" id="UnsubrModal" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel2">Отказ от заявки</h4>
                        </div>
                        <div class="modal-body">
                          <h4>Вы действительно хотите отказаться от заявки</h4>
                          <p>В случае отказа от заявки ваша начисления по заявке будут переданы другому экспедитору</p>
                            <p>Укажите причину отказа</p>
                         <select runat="server" id="DisParameters" class=" form-control"></select>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Нет.Оставить на мне</button>
                          <button type="button" onclick=" Unsunsccribe()" class="btn btn-primary">Да.Отказаться</button>
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
    <script src="../js/jquery.timers.js"></script>
    <script>
        var DataR;
        var ClickItem;
        var socket;
        function TakeRQ () {
            var SendData = { RID: ClickItem.attr("data-r") };

            $.ajax({
                url: 'default.aspx/TakeRequest',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {
                        window.location.href = "default.aspx";
                    } else {
                        if (data.d.Message == "UpdatePage") {
                            window.location.href = "default.aspx";
                        } else {
                            new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });
                        }

                    }
                    $('input').removeAttr("disabled");

                }, error: function (ex) {
                    new PNotify({ title: 'Ошибка', text: ex.responseText, type: 'error', styling: 'bootstrap3' });
                    $('input').removeAttr("disabled");
                }
            });

        }

        function showAllButtons()
        {
            $(".fa").parent().removeClass("HideTable");
        }

        $(".fa-eye").click(function () {
            DataR = $(this).attr("data-r");
            
            FillTable($(this));

        });


        function FillTable(clickEL)
        {
            var SummInfo = 0;
            $("#SummInfo").html("И того: <b>" + SummInfo + "</b> тг");
            showAllButtons();
            ClickItem = clickEL;
            $(".Rcontent").html("");
            $(".infoModal").remove();
            $("#RTable").addClass("HideTable");
            $("#ModalContent").append("<p class=\"infoModal\">Загрузка...</p>");
            var SendData = { ID: $(clickEL).attr("data-r")  }
            if ($(clickEL).attr("data-s") == "active") {  $(".fa-close").parent().removeClass("HideTable"); $(".fa-share").parent().addClass("HideTable"); $(".fa-check").parent().addClass("HideTable"); }
            if ($(clickEL).attr("data-s") == "indriver") { $(".fa-close").parent().addClass("HideTable");  $(".fa-share").parent().addClass("HideTable"); }
            if ($(clickEL).attr("data-s") == "new") { $(".fa-check").parent().addClass("HideTable"); $(".fa-save").parent().addClass("HideTable"); $(".fa-close").parent().addClass("HideTable"); }
            $.ajax({
                url: 'default.aspx/GetRequestContent',
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
                    $("#RqInfo").text(data.d.Info);
                    $(data.d.Content).each(function (index) {
                        if (data.d.Content[index].IsBonus == true) {
                            $(".Rcontent").append("<tr><td>" + data.d.Content[index].FlavorName + "</td><td>" + data.d.Content[index].CountDr + "</td><td>" + data.d.Content[index].Count + "</td><td>" +
                                (data.d.Content[index].Tara / 1000) + "</td><td>Бонус</td><td><img src=\"" + data.d.Content[index].Image + "\" alt=\"\"/></td></tr>");
                        } else {
                            $(".Rcontent").append("<tr><td>" + data.d.Content[index].FlavorName + " ("+ (data.d.Content[index].Tara / 1000) +"л)</td><td>" + data.d.Content[index].CountDr
                                + "</td><td><input class=\"NV\" data-p=\"" + data.d.Content[index].Prise + "\" data-f=\"" + data.d.Content[index].refFlavor + "\" type=\"number\" value=\""
                                + data.d.Content[index].Count + "\" min=\"0\" max=\"" + data.d.Content[index].CountDr + "\"/></td><td>" + data.d.Content[index].Prise + "</td><td><img src=\""
                               + data.d.Content[index].Image + "\" alt=\"\"/></td></tr>");
                            SummInfo = SummInfo + (data.d.Content[index].Prise * data.d.Content[index].Count);
                            $("#SummInfo").html("И того: <b>" + SummInfo + "</b> тг");
                        }

                    });
                    InitNV();
                    $('input').removeAttr("disabled");

                }, error: function (ex) {
                    new PNotify({ title: 'Ошибка', text: ex.responseText, type: 'error', styling: 'bootstrap3' });
                    $('input').removeAttr("disabled");
                }
            });
        }

        function SaveChanges()
        {
            var ContentData = [];
            var CItem = {};
            $(".NV").each(function (index) {
                
                if (parseInt($(this).val()) > 0)
                {
                    CItem = { Count: $(this).val(), RefFlavor: $(this).attr("data-f") };
                    ContentData[index] = CItem;
                }
            });

            var SendData = { RID: DataR, ContentData: ContentData };


            $.ajax({
                url: 'default.aspx/UpdateRequestContent',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {
                        // $(".close").trigger("click");
                        FillTable(ClickItem);
                    }  else {
                            new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });
                        
                    }

                    $('input').removeAttr("disabled");

                }, error: function (ex) {
                    new PNotify({ title: 'Ошибка', text: ex.responseText, type: 'error', styling: 'bootstrap3' });
                    $('input').removeAttr("disabled");
                }
            });


        }


        function SetRequest() {
            var SendData = { RID: DataR };

            $.ajax({
                url: 'default.aspx/SetRequest',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {
                        
                        window.location.href = "default.aspx";
                    } else {
                        if (data.d.Message == "UpdatePage") {
                            window.location.href = "default.aspx";
                        } else {
                            new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });
                        }
                    }

                    $('input').removeAttr("disabled");

                }, error: function (ex) {
                    new PNotify({ title: 'Ошибка', text: ex.responseText, type: 'error', styling: 'bootstrap3' });
                    $('input').removeAttr("disabled");
                }
            });
        }

       

        function CloseReqest()
        {
            var SendData = { RID: DataR };

            $.ajax({
                url: 'default.aspx/CloseRequest',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {
                          $(ClickItem).parent().parent().remove();
                    } else {
                        if (data.d.Message == "UpdatePage") {
                          
                        } else {
                            new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });
                        }
                    }

                    $('input').removeAttr("disabled");

                }, error: function (ex) {
                    new PNotify({ title: 'Ошибка', text: ex.responseText, type: 'error', styling: 'bootstrap3' });
                    $('input').removeAttr("disabled");
                }
            });
        }


        $(".fa-phone-square").click(function () {
            try {

                CallTo($(this).attr("data-p"));
            } catch (err) {
                new PNotify({ title: $(this).attr("data-f"), text: $(this).attr("data-p"), type: 'info', styling: 'bootstrap3' });

            }           
            
        });


        function Unsunsccribe() {
            var SendData = { RID: DataR, DPID: $("#ContentPlaceHolder1_DisParameters option:selected").val() };
           
            $.ajax({
                url: 'default.aspx/Unsubscribe',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {

                    if (data.d.IsDone == true) {
                        
                        window.location.href = "default.aspx";
                        return;
                    } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });
                    }
                    $('input').removeAttr("disabled");

                    $("#UnsubrModal").modal('toggle');
                }, error: function (ex) {
                    new PNotify({ title: 'Ошибка', text: ex.responseText, type: 'error', styling: 'bootstrap3' });
                    $('input').removeAttr("disabled");
                }
            });
        }


        $(document).ready(function () {
            var TotalSec;
            $(".rc").everyTime(1000, function (i) {
                TotalSec = parseInt($(this).attr("data-d"));
                if (parseInt(TotalSec) < 0) { $("#" + $(this).attr("data-id")).text("Просрочено"); return; }
                //    $("#" + $(this).attr("data-id")).text(Delivdate - Date.now());
                var day = Math.floor((TotalSec / 60 / 60) / 24);
                var hour = Math.floor(TotalSec / 60 / 60);
                var mins = Math.floor((TotalSec - hour * 60 * 60) / 60);
                var secs = Math.floor(TotalSec - hour * 60 * 60 - mins * 60);
                var left_hour = Math.floor((TotalSec - day * 24 * 60 * 60) / 60 / 60);
                TotalSec = TotalSec - 1;
                $(this).attr("data-d", TotalSec);
                
                $("#" + $(this).attr("data-id")).text(day + "д " + left_hour + "ч " + mins + "м " + secs + "c");
               
               
            });

            $(".fa-arrow-right").click(function () {

                $("#UnsubrModal").modal('show');
                DataR = $(this).attr("data-r");
            });

           

            $("#SRB").click(function () {
                RedrawHandOverTable();
            });

            //Подключение к веб сокету
            try {
                StartService();
            } catch (err)
            {
                ConnectOnBrouser();
            }

        });

        $(".fa-close").click(function(){
            if ($("#PaySelector option:selected").val() == "0") { new PNotify({ title: 'Ошибка', text: "Выберите способ оплаты", type: 'error', styling: 'bootstrap3' }); return; }
            var SendData = { RID: DataR, PayType: $("#PaySelector option:selected").val() }
            
            $('input').prop("disabled", true);
            $.ajax({
                url: 'default.aspx/CloseRequest',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {

                    if (data.d.IsDone == true) { window.location.href = "default.aspx"; return; } else
                    {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });
                    }
                    $('input').removeAttr("disabled");

                }, error: function (ex) {
                    new PNotify({ title: 'Ошибка', text: ex.responseText, type: 'error', styling: 'bootstrap3' });
                    $('input').removeAttr("disabled");
                }
            });



        });

        function InitdelivNumbers()
        {
          
            $(".delivElm").bind('keyup mouseup', function () {
                $("#DelivRqInfo").html("");
                var AllSumm = 0;
                if (parseInt($(this).val()) > parseInt($(this).attr("max"))) { $(this).val($(this).attr("max")); }
                $(".delivElm").each(function (index) {

                    if (parseInt($(this).val()) > 0) {

                        AllSumm = AllSumm + ($(this).val() * parseInt($(this).attr("data-p")));
                    }
                });
                $("#DelivRqInfo").html("И того: <b>"+AllSumm+" </b>тг");
            });
        }


        function InitNV()
        {
            $(".NV").bind('keyup mouseup', function () {
                if (parseInt($(this).val()) > parseInt($(this).attr("max"))) { $(this).val($(this).attr("max")); }
                var SummInfo = 0;
                $("#SummInfo").html("И того: <b>" + SummInfo + "</b> тг");
                $(".NV").each(function (index) {
                    if (parseInt($(this).val()) > 0) {

                        SummInfo = SummInfo + ($(this).val() * parseInt($(this).attr("data-p")));
                        $("#SummInfo").html("И того: <b>" + SummInfo + "</b> тг");
                    }
                });
            });
        }

        function DelivRq()
        {
            var DelivData = [];
            var Item = {};
            $(".delivElm").each(function (index) {
                
                if (parseInt($(this).val() )> 0)
                {
                  
                    Item = { RefFlavor: $(this).attr("data-r"), Count: $(this).val() };
                    DelivData.push(Item);
                }
            });
            var SendData = { DelivData: DelivData };
            $('input').prop("disabled", true);
            $.ajax({
                url: 'default.aspx/HandOver',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    
                    if (data.d.IsDone == true) { RedrawHandOverTable(); } else
                    {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });
                    }
                    $('input').removeAttr("disabled");

                }, error: function (ex) {
                    new PNotify({ title: 'Ошибка', text: ex.responseText, type: 'error', styling: 'bootstrap3' });
                    $('input').removeAttr("disabled");
                }
            });      
            
        }

            function RedrawHandOverTable()
            {

                $("#RemnantsTable").addClass("HideTable");
                $("#DelivRqInfo").text("Загрузка...");
                $(".DelivRcontent").html("");
                var SendData = {};

                $.ajax({
                    url: 'default.aspx/GetRemnants',
                    type: 'POST',
                    contentType: "application/json; charset=utf-8",
                    dataType: "JSON",
                    data: JSON.stringify(SendData),
                    failure: function (response) {
                        $('input').removeAttr("disabled");
                    },
                    success: function (data) {
                        $("#DelivRqInfo").text("");
                        $("#RemnantsTable").removeClass("HideTable");
                        $(data.d).each(function (index) {
                            if (data.d[index].Tara != null) {
                                $(".DelivRcontent").append("<tr><td>" + data.d[index].FlavorName + " " + (data.d[index].Tara / 1000) +
                                    " л</td><td><input class=\"delivElm\" data-r=\"" + data.d[index].refFlavor
                                    + "\" type=\"number\" data-p=\"" + data.d[index].Prise + "\" max=\"" + data.d[index].Count + "\" min=\"0\"></input></td><td>" + data.d[index].Prise + "</td></tr>");
                            } else {
                                $(".DelivRcontent").append("<tr><td>" + data.d[index].FlavorName + 
                                    "</td><td><input class=\"delivElm\" data-r=\"" + data.d[index].refFlavor
                                   + "\" type=\"number\" data-p=\"" + data.d[index].Prise + "\" max=\"" + data.d[index].Count + "\" min=\"0\"></input></td><td>" + data.d[index].Prise + "</td></tr>");
                            }
                        });
                        InitdelivNumbers();
                        $('input').removeAttr("disabled");

                    }, error: function (ex) {
                        new PNotify({ title: 'Ошибка', text: ex.responseText, type: 'error', styling: 'bootstrap3' });
                        $('input').removeAttr("disabled");
                    }
                });
            }


            function ConnectOnBrouser() {
         
          

                if (typeof (WebSocket) !== 'undefined') {
                    socket = new WebSocket("ws://skladbanurns.kz/MService/WSServer.ashx");
                } else {
                    socket = new MozWebSocket("ws://skladbanurns.kz/MService/WSServer.ashx");
                }

                socket.onmessage = function (msg) {
                    if (msg.data.toString().indexOf("}") == -1) { return; }
                    var InData = JSON.parse(msg.data.toString());
                    if (InData.Client != "*") { return; }
                    if (InData.MessgeType == "unsInfo") { return; }
                
                    window.location.href = "default.aspx";
                
              
               
                };

                socket.onclose = function (event) {
                    if (document.location.hostname == "localhost") { return; }
                    alert('Связь утеряна. Страница будет перезагружена   ' );
                    window.location.href = "default.aspx";
                };
            }
    </script>
</asp:Content>
