<%@ Page Title="" Language="C#" MasterPageFile="~/mhd/mhd.Master" AutoEventWireup="true" CodeBehind="WorkingHours.aspx.cs" Inherits="BANURNS.mhd.WorkingHours" %>
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
                <h3>Режим работы</h3>
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
                    <h2>Управление <small></small></h2>
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
                          <th>День недели</th>
                          <th>Начало работы</th>   
                            <th>Завершение работы</th>                                          
                            
                        </tr>
                      </thead>
                      <tbody class="Trows">
                      <asp:Literal runat="server" ID="TableContent"></asp:Literal>
                      </tbody>
                    </table>
                   
               <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                            <input id="send" style="width:350px;"  onclick="javascript: UpdateWorkingTime()" type="button" value="Сохранить график работы" class="btn btn-success" />
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
    <script src="../js/jquery.inputmask.bundle.js"></script>
    <script>

        validator.message.date = 'not a real date';

        // validate a field on "blur" event, a 'select' on 'change' event & a '.reuired' classed multifield on 'keyup':
        $('form')
          .on('blur', 'input[required], input.optional, select.required', validator.checkField)
          .on('change', 'select.required', validator.checkField)
          .on('keypress', 'input[required][pattern]', validator.keypress);

        $('.multi.required').on('keyup blur', 'input', function () {
            validator.checkField.apply($(this).siblings().last()[0]);

        });


        $(document).ready(function () {

            $('.time').inputmask("hh:mm", {
                placeholder: "hh:mm",
                insertMode: false,
                showMaskOnHover: false
            });
        });

        function UpdateWorkingTime()
        {
            if (!validator.checkAll($('#dfffs'))) {
                new PNotify({ title: 'Ошибка', text: "Заполните время", type: 'error', styling: 'bootstrap3' });
                return;
            }

            $("input").prop("disabled", true);
            var Data = [];
            for (var i = 1; i < 8; i++) {
                if ($("#st" + i).val().indexOf("h") > 0 || $("#st" + i).val().indexOf("m") > 0) { $("input").prop("disabled", false); new PNotify({ title: 'Ошибка', text: "Заполните время", type: 'error', styling: 'bootstrap3' }); return; }
                if ($("#en" + i).val().indexOf("h") > 0 || $("#en" + i).val().indexOf("m") > 0) { $("input").prop("disabled", false); new PNotify({ title: 'Ошибка', text: "Заполните время", type: 'error', styling: 'bootstrap3' }); return; }
                Data.push({ DayNumber: i, IsWork: $("#ch" + i).prop("checked"), StartTimeString: $("#st" + i).val(), EndTimeString: $("#en" + i).val() });
            }


            var SendData = { Data: Data }

            $.ajax({
                url: 'WorkingHours.aspx/UpdateWorkingTime',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == false) {

                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });
                    } else {

                        window.location.href = "WorkingHours.aspx";

                    }
                    $('input').removeAttr("disabled");
                }, error: function (err) {
                    new PNotify({ title: 'Ошибка', text: err.responseText, type: 'error', styling: 'bootstrap3' });
                    $('input').removeAttr("disabled");
                }
            });
        }
    </script>
</asp:Content>
