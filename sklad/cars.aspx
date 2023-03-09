<%@ Page Title="" Language="C#" MasterPageFile="~/sklad/Sklad.Master" AutoEventWireup="true" CodeBehind="cars.aspx.cs" Inherits="BANURNS.sklad.cars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link href="../vendors/pnotify/dist/pnotify.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet"/>
    <style>
        .DelRow {
        cursor:pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="">
          <div class="title_left">
                <h3>Автомобили</h3>
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
                    <h2>Добавление ТС <small></small></h2>
                   
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                   
                      
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                    <form id="frm2"   class="form-horizontal form-label-left" >

                        
                     

                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">гос. номер ТС<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="NumberTS" class="form-control col-md-7 col-xs-12 cn"  maxlength="10" data-validate-length-range="120" placeholder="856FBV01 или Z753SDF" required="required" type="text"/>
                        </div>
                      </div>
                        
                         <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Марка ТС<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="Car" class="form-control col-md-7 col-xs-12 cn"  maxlength="120" data-validate-length-range="120" placeholder="Газель" required="required" type="text"/>
                        </div>
                      </div>
                       

                         


                        <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                         
                          <input id="send" onclick="javascript: AddNewCar()" type="button" value="Добавить"  class="btn btn-success" />
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
                    <h2>Автомобили <small></small></h2>
                   
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
                              <p>Вы действительно желаете удалить ? </p>
                            <p><i>После уделения ТС текущие заявки не закроютса</i></p>
                            
                          </div>
                         
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Нет</button>
                          <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="javascript:DeleteCar()">Да! Удалить.</button>
                        </div>

                      </div>
                    </div>
                  </div>
                        
                        

                     <table class="table">
                         <thead>
                             <tr>
                                 <th>Марка ТС </th>     
                                 <th>гос. номер</th>                                                       
                                 <th>Управление</th>
                             </tr>
                         </thead>
                         <tbody class="TContent">
                             <asp:Literal runat="server" ID="TSDataRows"></asp:Literal>
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

        var clikcBtn;
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

        $('.DelRow').click(function () {
            clikcBtn = $(this);
        });


        function AddNewCar()
        {
            if (!validator.checkAll($('#frm2'))) {
                return;
            }


            var SendData = {
                Marka: $("#Car").val(), GosNumber: $("#NumberTS").val()
            }

            $.ajax({
                url: 'cars.aspx/AddNewCar',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {
                        window.location.href = "cars.aspx";
                    } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                    }
                    $('input').removeAttr("disabled");
                }
            });
        }

        function DeleteCar()
        {
            var SendData = {
                RowID: clikcBtn.attr("data-r")
            }



            $.ajax({
                url: 'cars.aspx/DeleteCar',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {
                        window.location.href = "cars.aspx";
                    } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                    }
                    $('input').removeAttr("disabled");
                }
            });
        }

     </script>
</asp:Content>
