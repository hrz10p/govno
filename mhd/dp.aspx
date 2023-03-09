<%@ Page Title="" Language="C#" MasterPageFile="~/mhd/mhd.Master" AutoEventWireup="true" CodeBehind="dp.aspx.cs" Inherits="BANURNS.mhd.dp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link href="../vendors/pnotify/dist/pnotify.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet"/>
    <style>
        .delRow {
        cursor:pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="">
        <div class="title_left">
                <h3>Параметры закрытия заявки</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
               
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
                  <div class="x_content">

                    <form id="frm2"   class="form-horizontal form-label-left" >

                        
                    

                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Название параметра<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="SValue" class="form-control col-md-7 col-xs-12 cn" required="required" type="text"/>
                        </div>
                      </div>
                        
                       


                        <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                         
                          <input id="send" onclick="javascript: SaveParameter()" type="button" value="Сохранить"  class="btn btn-success" />
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
                    <h2>Навзание параметров <small></small></h2>
                   
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                   
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                    <form id="Form1" runat="server"  class="form-horizontal form-label-left" >


                          <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-sm">
                      <div class="modal-content">

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel2">Удаление </h4>
                        </div>
                        <div class="modal-body">
                        
                          <div>
                              <p>Вы действительно желаете удалить параметр ? </p>
                          
                            
                          </div>
                         
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Нет</button>
                          <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="javascript:DeletePR()">Да! Удалить.</button>
                        </div>

                      </div>
                    </div>
                  </div>
                        
                        

                     <table class="table">
                         <thead>
                             <tr>
                                 <th>Параметр </th>
                                                               
                                 <th></th>
                             </tr>
                         </thead>
                         <tbody class="TContent">
                             <asp:Literal runat="server" ID="ParamsDataRows"></asp:Literal>
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
           <script src="../vendors/switchery/dist/switchery.min.js"></script>
        <!-- Parsley -->
    <script src="../vendors/parsleyjs/dist/parsley.min.js"></script>
    <script>
        var DataRow;
        var clickBtn;

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

        $(document).ready(function () {
            InitDeleteButton();
        });
        function InitDeleteButton() {
            $(".delRow").click(function () {
                DataRow = $(this).attr("data-r");
                clickBtn = $(this);
                $(".modal").modal('show');
            });
        }

        function DeletePR()
        {
            var SendData = { ID: DataRow };
            $("input").prop("disabled", true);
            $.ajax({
                url: 'dp.aspx/RemoveParameter',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {

                        
                        $(clickBtn).parent().parent().remove();
                       

                    } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                    }
                    $('input').removeAttr("disabled");
                }
            });
        }

        function SaveParameter()
        {
            if (!validator.checkAll($('#frm2'))) {
                return;
            }
            var SendData = { Parameter: $("#SValue").val() };
            $("input").prop("disabled", true);
            $.ajax({
                url: 'dp.aspx/AddParameter',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {
                        $("#SValue").val("");
                        $(".TContent").append("<tr><td>" + SendData.Parameter + "</td><td><a data-r=\"" + data.d.Message + "\" class=\"delRow\">Удалить</a></td></tr>");
                        InitDeleteButton();
                    } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                    }
                    $('input').removeAttr("disabled");
                }, error: function (err)
                {
                    new PNotify({ title: 'Ошибка', text: err.responseText, type: 'error', styling: 'bootstrap3' });
                }
            });
        }
    </script>
</asp:Content>
