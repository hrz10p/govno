<%@ Page Title="" Language="C#" MasterPageFile="~/mhd/mhd.Master" EnableViewState="false" AutoEventWireup="true" CodeBehind="ContentEditor.aspx.cs" Inherits="BANURNS.mhd.ContentEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../vendors/pnotify/dist/pnotify.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet"/>
    <link href="../vendors/switchery/dist/switchery.min.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="">
        <div class="page-title">
              <div class="title_left">
                <h3>Управление контентом</h3>
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
                          <th>Баркод</th>   
                            <th>Видимость на гл.странице</th>                                           
                            <th>Управление</th>
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

         <div class="clearfix"></div>

              <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Редактор</h2>
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
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Название <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="FLName"  class="form-control col-md-7 col-xs-12" maxlength="250" data-validate-length-range="250" placeholder="" required="required" type="text"/>
                        </div>
                      </div>

                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Цена <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="Prise"  class="form-control col-md-7 col-xs-12" min="0"  required="required" type="number"/>
                        </div>
                      </div>

                               <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Старая цена <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="OldPrise"  class="form-control col-md-7 col-xs-12" min="0"  required="required" type="number"/>
                        </div>
                      </div>


                              <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Объем <span class="required"></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="Size"  class="form-control col-md-7 col-xs-12" min="0"  type="number"/>
                        </div>
                      </div>

                         
                 <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">бар-код <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="BarCode"  class="form-control col-md-7 col-xs-12" maxlength="50" data-validate-length-range="50" placeholder="" required="required" type="text"/>
                        </div>
                      </div>
                              
                              <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Описание <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <textarea id="Desc"  class="form-control col-md-7 col-xs-12" maxlength="1024" data-validate-length-range="1024" ></textarea>
                        </div>
                      </div>

                   
                      
                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          <input type="button" value="Очистить" onclick=" ClearCuntrols()" class="btn btn-primary" />
                          <input id="send" onclick="javascript: SaveChanges()" type="button" value="Сохранить изменения"  class="btn btn-success" />
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
                    <h2>Состав <small></small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content" style="display: block;">
                    <br/>
                    <form id="ComposFrom"  class="form-horizontal form-label-left input_mask">

                          <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Состав <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                           <textarea id="ComposValueText" class=" form-control"></textarea>
                        </div>
                      </div>
                       

                          <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">                         
                          <input  onclick="javascript: CreateNewComposition()" type="button" value="Сохранить изменения"  class="btn btn-success" />
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
    <script src="../vendors/pdfmake/build/vfs_fonts.js"></script>
    <script src="../vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
     <script src="../vendors/switchery/dist/switchery.min.js"></script>
    <script>
        var ChangeCount = 0;
        var Reverse = false;
        var ClickElm;
        $(document).ready(function () {
            $('#DataTable').DataTable();
            //$('.DeleteUser').click(function () {

            //});   
         
        });


        validator.message.date = 'not a real date';
       
        // validate a field on "blur" event, a 'select' on 'change' event & a '.reuired' classed multifield on 'keyup':
        $('form')
          .on('blur', 'input[required], input.optional, select.required', validator.checkField)
          .on('change', 'select.required', validator.checkField)
          .on('keypress', 'input[required][pattern]', validator.keypress);

        $('.multi.required').on('keyup blur', 'input', function () {
            validator.checkField.apply($(this).siblings().last()[0]);

        });

        $(".js-switch").change(function () {
            if (Reverse == true) { Reverse = false; return; }
            if (ChangeCount == 0) { ChangeCount++; return; }
           
            var Chelm = $(this);
            //alert($(this).prop("checked"));
            ChangeCount = 0;
            $('input').prop("disabled",true);
            var SendData = {
                RowID: $(this).attr("data-r"), Value: $(this).prop("checked")
            }

            $.ajax({
                url: 'ContentEditor.aspx/ChageShowInMainPage',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.Message == "0") {
                        Reverse = true;
                      
                        $(Chelm).prop("checked", ReturnSwithcer($(Chelm)));
                        new PNotify({ title: 'Ошибка', text: "Изменения не были приняты", type: 'error', styling: 'bootstrap3' });
                    } else {
                        
                        new PNotify({ title: 'Изменения', text: "Изменения успешно приняты", type: 'info', styling: 'bootstrap3' });
                    }
                    $('input').removeAttr("disabled");
                }
            });
        });

        function ReturnSwithcer(elm)
        {
            if($(elm).prop("checked")==true){return false;}
            return true;
        }

        $(".selb").click(function () {
            ClickElm = $(this);
            ClearCuntrols();
            $("input").prop("disabled", true);

            var SendData = {
                ID: $(this).attr("data-r")
            }

            $.ajax({
                url: 'ContentEditor.aspx/GetFlavorInfo',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d == null) {
                        
                        new PNotify({ title: 'Ошибка', text: "Не найдена указанная строка", type: 'error', styling: 'bootstrap3' });
                    } else {
                        $("#FLName").val(data.d.Name);
                        $("#Prise").val(data.d.Prise);
                        $("#Size").val(data.d.Size)
                        $("#BarCode").val(data.d.BarCode);
                        $("#Desc").val(data.d.Desc);
                        $("#ComposValueText").val(data.d.ComposData);
                        $("#OldPrise").val(data.d.OldPrise);
                    }
                    $('input').removeAttr("disabled");
                }, error: function (err) {
                    new PNotify({ title: 'Ошибка', text: err.responseText, type: 'error', styling: 'bootstrap3' });
                    $('input').removeAttr("disabled");
                }
            });


        });

        function InitDelrows()
        {
            $(".DelCompos").click(function () {
                var ClickTag = $(this);
                var SendData = {
                    ID: $(this).attr("data-r")
                }

                $.ajax({
                    url: 'ContentEditor.aspx/DeleteFlavorCompostion',
                    type: 'POST',
                    contentType: "application/json; charset=utf-8",
                    dataType: "JSON",
                    data: JSON.stringify(SendData),
                    failure: function (response) {
                        $('input').removeAttr("disabled");
                    },
                    success: function (data) {
                        if (data.d.Message == "0") {
                           
                            new PNotify({ title: 'Ошибка', text: "Изменения не были приняты", type: 'error', styling: 'bootstrap3' });
                        } else {
                            ClickTag.parent().parent().remove();
                            new PNotify({ title: 'Изменения', text: "Изменения успешно приняты", type: 'info', styling: 'bootstrap3' });

                        }
                        $('input').removeAttr("disabled");
                    }, error: function (err) {
                        new PNotify({ title: 'Ошибка', text: err.responseText, type: 'error', styling: 'bootstrap3' });
                    }
                });
            });
        }

        function CreateNewComposition()
        {
            
            if (ClickElm == undefined) { new PNotify({ title: 'Ошибка', text: "Выберите наименование", type: 'error', styling: 'bootstrap3' }); return; }
            var SendData = { RefFlavor: $(ClickElm).attr("data-r"), Value: $("#ComposValueText").val() }

            $.ajax({
                url: 'ContentEditor.aspx/CreateFlavorComposition',
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
                        new PNotify({ title: 'Изменения', text: "Данные успешно изменены", type: 'info', styling: 'bootstrap3' });
                        
                   
                    }
                    $('input').removeAttr("disabled");
                }, error: function (err) {
                    new PNotify({ title: 'Ошибка', text: err.responseText, type: 'error', styling: 'bootstrap3' });
                    $('input').removeAttr("disabled");
                }
            });

        }

        function ClearCuntrols() {

            $(".form-control").val("");
            $(".CTrows").html("");
        }

        function SaveChanges()
        {
            if (ClickElm == undefined) { new PNotify({ title: 'Ошибка', text: "Выберите наименование", type: 'error', styling: 'bootstrap3' }); return; }
            if (!validator.checkAll($('#frm2'))) {
                return;
            }
            var Size;
            if (parseInt($("#Size").val()) >= 0) { Size = $("#Size").val() } else { Size = null;  }
            var SendObject = {
                ID: $(ClickElm).attr("data-r"), Desc: $("#Desc").val(), Prise: $("#Prise").val(), Size: Size, BarCode: $("#BarCode").val(),
                Name: $("#FLName").val(),OldPrise:$("#OldPrise").val()
            }

            var SendData = { Info: SendObject }

            $.ajax({
                url: 'ContentEditor.aspx/UpdateFlavorInfo',
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

                        //нежное, кремовое мороженое сделанное на основе молока и сливок придется по душе всем любителям классического мороженого.
                        new PNotify({ title: 'Ошибка', text: "Данные были успешно приняты, в случае не корректного отображения информации, обновите страницу", type: 'info', styling: 'bootstrap3' });
                    }
                    $('input').removeAttr("disabled");
                }, error: function (err) {
                    new PNotify({ title: 'Ошибка', text: err.responseText, type: 'error', styling: 'bootstrap3' });
                    $('input').removeAttr("disabled");
                }
            });

        }
        //var changeCheckbox = document.querySelector('.js-switch');

        //changeCheckbox.onchange = function () {
        //    alert(changeCheckbox.checked);
        //};
    </script>
</asp:Content>
