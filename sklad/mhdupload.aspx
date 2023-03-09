<%@ Page Title="" Language="C#" MasterPageFile="~/sklad/Sklad.Master" AutoEventWireup="true" CodeBehind="mhdupload.aspx.cs" Inherits="BANURNS.sklad.mhdupload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../vendors/pnotify/dist/pnotify.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet"/>
    <style>
        .CU {
        cursor:pointer;
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
                    <h2>Выбор ТС для погрузки</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                     
                     
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
             <%--       <p>Для загрузки шаблона укажите тип шаблона и дайте название шаблону.</p>--%>

                          <form id="frm1"  class="form-horizontal form-label-left" > 
                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Выбор транспорта<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                         <select class="form-control" runat="server" id="CarSelector"></select>
                        </div>
                      </div>


                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Выбор водителя<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                         <select class="form-control" runat="server" id="DriverSelector"></select>
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
                    <h2>Наименование</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                     
                     
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
             <%--       <p>Для загрузки шаблона укажите тип шаблона и дайте название шаблону.</p>--%>
                          <form id="frm2"  class="form-horizontal form-label-left" > 
                        <div class="item form-group">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Название вкуса</th>
                                    <th>Количество</th>
                                     <th>Объем (Л)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Literal runat="server" ID="FlavorDataTable"></asp:Literal>
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
        $("#TopMenu").append(" <li><a class=\"CU\">Отправить авто</a></li>");
        $(".CU").click(function () {
            var NowRowID;
            var ItemID;
            var NmCount;
            var index = 0;
            var CarUploadData=[];
            $(".nm").each(function () {

                if ($(this).val().length != 0) {

                    NowRowID = $(this).attr("data-r");
                    ItemID = $(this).attr("data-i");
                    NmCount = $(this).val();
                    $(".snm").each(function () {
                        if (ItemID == $(this).attr("data-i")) {
                            CarUploadData[index] = { FlavorID: NowRowID, Count: NmCount, Tara: (parseFloat($(this).text()) * 1000) };
                            index++;
                        }
                    });

                }
            });
           
            var SendData = { carID: $("#ContentPlaceHolder1_CarSelector option:selected").val(), MData: CarUploadData, IDu: $("#ContentPlaceHolder1_DriverSelector option:selected").val() }

            $("input").prop("disabled", true);
            $.ajax({
                url: 'mhdupload.aspx/UploadCar',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {

                        new PNotify({ title: 'Сохранение', text: "Данные успешно добавлены", type: 'info', styling: 'bootstrap3' });
                        ClearControls();

                    } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                    }
                    $('input').removeAttr("disabled");
                }, error: function (ex)
                {
                    new PNotify({ title: 'Ошибка', text: ex.responseText, type: 'error', styling: 'bootstrap3' });
                    $('input').removeAttr("disabled");
                }
            });

        });

        function ClearControls() {
            $(".nm").val("");
            $(".snm").val("");
            $("#WH").val("");
        }
            
    </script>
</asp:Content>
