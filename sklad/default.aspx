<%@ Page Title="" Language="C#" MasterPageFile="~/sklad/Sklad.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="BANURNS.sklad._default" %>
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
        .FlavorContainer {
        float:left; margin:5px;
        }
        .dwc {
            width:90px;
        }
        .newRequest {
        background-color: #ff0e0b;
        cursor:pointer;
        }

        .rc {
        cursor:pointer;
        /*width:450px;
        height:250px;
        font-size:30px;*/
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="">
         <div class="page-title">
              <div class="title_left">
                <h3>Поступившие заявки</h3>
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
                    <h2>Заявки</h2>
                    
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
                                  <select runat="server"  class="form-control"  id="DepotSelector">
                        
                      </select>
                                <br />
                        <div class="item form-group">
                        
                      
                  
                      
                         <div class="bs-glyphicons">
        <ul id="RqItems" class="bs-glyphicons-list"> 
            <asp:Literal runat="server" ID="RqItemsContainer"></asp:Literal>
            </ul>
                            
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
        $(document).ready(function () {
            SendtoServerDataStd("default.aspx/GetRequestsbyDepotID", { Value: $("#ContentPlaceHolder1_DepotSelector option:selected").val() }, function (resp) {
                ShowRequests(resp);
            });
            $('#ZTable').DataTable();
            //$('.rc').click(function () {
            //     window.location.href = $(this).attr('data-p')+'?rid=' + $(this).attr('data-r'); return;   });
            
        });

       
        setInterval(function () {
            var SendData = {

            };
            
            //$.ajax({
            //    url: 'default.aspx/GetNewRequests',
            //    type: 'POST',
            //    contentType: "application/json; charset=utf-8",
            //    dataType: "JSON",
            //    data: JSON.stringify(SendData),
            //    failure: function (response) {
            //        $('input').removeAttr("disabled");
            //    },
            //    success: function (data) {
            //        if (data.d.IsDone == true) {

            //            window.location.href = "default.aspx";

            //        } else {

            //            if (data.d.Message == "ACD") { window.location.href = "../login.aspx"; }
            //            if (data.d.Message == "ErSACD") { }
            //        }

            //    }
            //});

            SendtoServerDataStd("default.aspx/GetRequestsbyDepotID", { Value: $("#ContentPlaceHolder1_DepotSelector option:selected").val() }, function (resp) {
                ShowRequests(resp);
            });
        }, 60000);

      
        function ShowRequests(data)
        {
            var SkladType = "";
            $("#RqItems").html("");
            $.each(data.d, function (i) {
                if (data.d[i].SkladType == 0) { SkladType = "raznoe.aspx"; };
                if (data.d[i].SkladType == 1) { SkladType = "ViewRequest.aspx"; };
                if (data.d[i].Status == "new") {
                    $("#RqItems").append("<li class=\"rc\" data-p=\"" + SkladType + "\" style=\"color:#fff;background-color:#1ABB9C\" data-r=\"" + data.d[i].RequestID + "\"><span class=\"glyphicon glyphicon-warning-sign\" aria-hidden=\"true\"></span><br/>" + data.d[i].SendDate + "<br/><b class=\"glyphicon-class\">" + data.d[i].Sender + "</b></li>");
                }

                if (data.d[i].Status == "opened") {
                    $("#RqItems").append("<li data-p=\"" + SkladType + "\" class=\"rc\" data-r=\"" + data.d[i].RequestID + "\"><span class=\"glyphicon glyphicon-ok\" aria-hidden=\"true\"></span><br/>" + data.d[i].SendDate + "<br/><b class=\"glyphicon-class\">" + data.d[i].Sender + "</b></li>");
                }

                if (data.d[i].Status == "delivery") {
                    if (data.d[i].SkladType == 1) {
                        $("#RqItems").append("<li class=\"rc\" data-p=\"deliveryA.aspx\" style=\"color:white;background-color:Red\" data-r=\"" + data.d[i].RequestID + "\"><span class=\"glyphicon glyphicon-warning-sign\" aria-hidden=\"true\"></span><br/>" + data.d[i].SendDate + "<br/><b class=\"glyphicon-class\">" + data.d[i].Sender + "</b></li>");
                    }

                    if (data.d[i].SkladType == 0) {
                        $("#RqItems").append("<li class=\"rc\" data-p=\"deliveryB.aspx\" style=\"color:white;background-color:Red\" data-r=\"" + data.d[i].RequestID + "\"><span class=\"glyphicon glyphicon-warning-sign\" aria-hidden=\"true\"></span><br/>" + data.d[i].SendDate + "<br/><b class=\"glyphicon-class\">" + data.d[i].Sender + "</b></li>");
                    }
                }
            });


            $('.rc').click(function () {
                window.open($(this).attr('data-p') + '?rid=' + $(this).attr('data-r') + "&&dp=" + $("#ContentPlaceHolder1_DepotSelector option:selected").val().split('|')[0], '_blank');
                window.focus();

            });
        }

        $("#ContentPlaceHolder1_DepotSelector").change(function () {

            $("#RqItems").html("");


            var SendData = { Value: $("#ContentPlaceHolder1_DepotSelector option:selected").val() };
            
            $.ajax({
                url: 'default.aspx/GetRequestsbyDepotID',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    ShowRequests(data);
                 
                }, error: function () {

                    new PNotify({ title: 'Ошибка', text: "При получении данных произошла ошибка", type: 'error', styling: 'bootstrap3' });
                }
            });

        });
    </script>
</asp:Content>
