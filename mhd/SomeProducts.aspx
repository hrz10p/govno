<%@ Page Title="" Language="C#" MasterPageFile="~/mhd/mhd.Master" AutoEventWireup="true" CodeBehind="SomeProducts.aspx.cs" Inherits="BANURNS.mhd.SomeProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../vendors/pnotify/dist/pnotify.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet"/>
     <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet"/>
     <link href="../vendors/switchery/dist/switchery.min.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="">
        <div class="page-title">
              <div class="title_left">
                <h3>Рубрика 'С этим покупают'</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
               
                </div>
              </div>
            </div>

          <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Главное меню</h2>
                    
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                   
                      
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
             <%--       <p>Для загрузки шаблона укажите тип шаблона и дайте название шаблону.</p>--%>

                            <form id="frm3"  class="form-horizontal form-label-left" >                  
                         
                             
                          <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Рубрика<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select id="RSelector" runat="server" class="form-control"></select>
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
                    <h2>Наименование <small></small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content" style="display: block;">
                    <br/>
                    <form id="dfffs"  class="form-horizontal form-label-left input_mask">
                            <div data-rid="" style="display:none" id="SRID"></div>
                        
                    <table  id="DataTable" class="table">
                      <thead>
                        <tr>
                          <th>Название</th>
                          <th>Цена</th>   
                            <th>Вкл/Выкл</th>                                          
                            
                        </tr>
                      </thead>
                      <tbody class="Trows">
                      <asp:Literal runat="server" ID="TableContent"></asp:Literal>
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

    
    <script src="../vendors/pdfmake/build/vfs_fonts.js"></script>
    <script src="../vendors/jquery.hotkeys/jquery.hotkeys.js"></script>

    <script>
        var ChangeCount = 0;
        var Reverse = true;
        $("#ContentPlaceHolder1_RSelector").change(function () {

            $("select").prop("disabled", true);

            var SendData = { ID: $(this).val() };
            $.ajax({
                url: 'SomeProducts.aspx/GetCheckedProducts',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    Reverse = true;
                    $(".ch").iCheck('uncheck');
                    $("select").prop("disabled", false);





                    $(data.d).each(function (index) {
                        $(".ch").each(function (swIndex) {
                            if ($(this).attr("data-r") == data.d[index]) { $(this).iCheck('check'); }
                        });
                    });


                    Reverse = false;

                }, error: function (err) {
                    new PNotify({ title: 'Ошибка', text: err.responseText, type: 'error', styling: 'bootstrap3' });
                    $('input').removeAttr("disabled");
                }
            });
        });

        $(document).ready(function () {
            Reverse = false;  
        });

        $(".ch").on('ifChanged', function () {
          
            if (Reverse == true) {  return; }
           

            var Chelm = $(this);
          
            $('input').prop("disabled", true);

            var SendData = {
                FromProduct: $("#ContentPlaceHolder1_RSelector option:selected").val(), Product: $(Chelm).attr("data-r"), Operation: $(Chelm).prop('checked')
            }

            $.ajax({
                url: 'SomeProducts.aspx/UpdateSomeProductData',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == false) {
                        Reverse = true;
                       
                        $(Chelm).prop("checked", ReturnSwithcer($(Chelm)));
                        new PNotify({ title: 'Ошибка', text: "Изменения не были приняты", type: 'error', styling: 'bootstrap3' });
                    } else {

                        new PNotify({ title: 'Изменения', text: "Изменения успешно приняты", type: 'info', styling: 'bootstrap3' });
                    }
                    $('input').removeAttr("disabled");
                }, error: function (err) {
                    alert(err.responseText);
                }
            });
        });

        function ReturnSwithcer(elm) {
            
            if ($(elm).prop("checked") == true) { return false; }
            return true;
        }
    </script>
</asp:Content>
