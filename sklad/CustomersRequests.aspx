<%@ Page Title="" Language="C#" MasterPageFile="~/sklad/Sklad.Master" AutoEventWireup="true" CodeBehind="CustomersRequests.aspx.cs" Inherits="BANURNS.sklad.CustomersRequests" %>
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
    <link href="../css/CheckBox.css"  rel="stylesheet"/>
   
    <style>
        .infobtn {
        cursor:pointer;

      
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
                <h3>Заявки от заказчиков</h3>
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
                    <h2>Поступившие заявки</h2>
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

                  <form id="frm2"   class="form-horizontal form-label-left" > 
                      
                      <div class="modal fade bs-example-modal-sm" tabindex="-1" id="ShowDataModal" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg"  style="width:80%">
                      <div class="modal-content" >

                        <div style="background-color:#73879C" class="modal-header">
                          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                          </button>
                             <p class="modal-title" style="color:whitesmoke" id="myModalLabel">Содержимое заявки</p>               
                        </div>
                        <div class="modal-body">
          
                            <div  class="form-group">
                                <table style="width:100%;   table-layout: fixed; border-collapse: collapse;" id="InfoTable" class="table jambo_table">
                                    <thead>
                                        <tr>
                                            <th>Наименование</th>
                                             <th>Количество</th>
                                            <th>Ед.Изм</th>
                                             <th>Склад</th>
                                              <th></th>
                                        </tr>
                                    </thead>
                                    <tbody class="Mcontent ScrollTable">

                                    </tbody>
                                </table>
                               
                            </div>
                        </div>
                        <div class="modal-footer">
                         <button type="button" class="btn btn-primary mbtn" data-dismiss="modal">Отмена</button>
                          
                        </div>

                      </div>
                    </div>
                  </div>

                      <div class="form-group">
                          <table id="RTable"  class="table jambo_table">
                              <thead>
                                  <tr>
                                      <th>Отправитель заявки</th>
                                      <th>Телефон</th>
                                      <th>Дата отправки</th>
                                      <th>Дата доставки</th>
                                        <th>Время доставки</th>
                                      <th>Счет фактура</th>
                                        <th>Чек</th>
                                       <th>Статус заявки</th>
                                        <th></th>
                                        <th></th>
                                  </tr>
                              </thead>
                              <tbody>
                                  <asp:Literal runat="server" ID="_RequestsTableData"></asp:Literal>
                              </tbody>
                          </table>
                      </div>
                      <div class="form-group">
                      <div id="YMapsIDgeopoint"  style="width:100%; height:450px;"></div>	
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
        validator.message.date = 'not a real date';
        var clickButton;
        // validate a field on "blur" event, a 'select' on 'change' event & a '.reuired' classed multifield on 'keyup':
        $('form')
          .on('blur', 'input[required], input.optional, select.required', validator.checkField)
          .on('change', 'select.required', validator.checkField)
          .on('keypress', 'input[required][pattern]', validator.keypress);

        $('.multi.required').on('keyup blur', 'input', function () {
            validator.checkField.apply($(this).siblings().last()[0]);

        });

        $(".infobtn").click(function () {
            clickButton = $(this);
            $(".Mcontent").html("");
            $(".Mcontent").html("Закгрузка.....");

            var SendData = { requestID: clickButton.attr("data-r") };
            $('input').attr("disabled", "disabled");
            $.ajax({
                url: 'CustomersRequests.aspx/GetCustomerReuqetsInfo',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.length > 0) {
                                        
                        $(".Mcontent").html(data.d);
                    } else {                   
                        $(".Mcontent").html("Нет данных");
                    }
                }
            });
        });


        $("#ShowDataModal").focus(function () {
            ModalTableSetSize();
        });

        function ModalTableSetSize() {
            if ($("#InfoTable").innerWidth() <= 800) {
                $(".ScrollTable").children().children().removeAttr("style");
                $(".ScrollTable").css("width", ($("#ModalTable").innerWidth()) + "px");
                return;
            }
            $(".ScrollTable").children().children().css("width", ($("#InfoTable").innerWidth() / 4) + "px");
            $(".ScrollTable").css("width", ($("#InfoTable").innerWidth()) + "px");
        }

        $(window).resize(function () {
            ModalTableSetSize();
        });

        $(".btnrep").click(function () {
            window.location.href = "CustomerPrintPage.aspx?ID=" + $(this).attr("data-r");
        });
        
        $(".btnclose").click(function () {
            DisableAllElemets(true);
            SendtoServerDataStd("CustomersRequests.aspx/CloseRequest", { ID: $(this).attr("data-r") }, function (resp) {
                DisableAllElemets(false);
                if (resp.d.IsDone == true) {
                    alert("Заявка успешно закрыта");
                    window.location.href = "CustomersRequests.aspx";
                } else { ShowNtfError(resp.d.Message); }
            });
        });
    </script>
</asp:Content>
