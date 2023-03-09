<%@ Page Title="" Language="C#" MasterPageFile="~/mhddisp/mhddisp.Master" AutoEventWireup="true" CodeBehind="CreateRequest.aspx.cs" Inherits="BANURNS.mhddisp.CreateRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../vendors/pnotify/dist/pnotify.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet"/>
    <style>
        .DelRow {
        cursor:pointer;
        }
        .sort {
        width:45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="">
     <div class="title_left">
                <h3>Создание заявки</h3>
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
                    <h2><small></small></h2>
                   
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                   
                      
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                    <form id="frm2"  runat="server"  class="form-horizontal form-label-left" >
                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Адрес<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="Adress" class="form-control col-md-7 col-xs-12 clr"  data-validate-length-range="120" placeholder="ул. Гете 42/ кв 5" required="required" type="text"/>
                        </div>
                      </div>

                     
                        
                         <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Номер телефона<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="PhoneNumber" class="form-control col-md-7 col-xs-12 clr"  maxlength="120" data-validate-length-range="120" placeholder="8 705 427 8936" required="required" type="tel"/>
                        </div>
                         </div>

                           <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">ФИО заявителя<span class="required"></span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="FIO" class="form-control col-md-7 col-xs-12 clr"  data-validate-length-range="120" placeholder=""  type="text"/>
                        </div>
                      </div>

                        
                        

                         <div class="form-group">
                           <label class="control-label col-md-3 col-sm-3 col-xs-12"> Дата доставки<span class="required"></span></label>
                           
                            <div class="controls">  
                                
                              <div class="col-md-6 col-sm-6 col-xs-12 xdisplay_inputx form-group has-feedback">
                                
                                <input type="text" class="form-control has-feedback-left clr" id="single_cal2"  placeholder="" aria-describedby="inputSuccess2Status2"/>
                                <span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></span>
                                <span id="inputSuccess2Status2" class="sr-only">Выбрать</span>
                              </div>
                            </div>
                          </div>

                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Время доставки<span class="required"></span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="ClockFaceContainer">
                             <input type="text" id="t2" value="" class="form-control input-small clr" />
                           
                    
                            </div>
                        </div>
                      </div>


                         <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Примечания<span class="required"></span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="Note" class="form-control col-md-7 col-xs-12 clr"  maxlength="1000"  type="text"/>
                        </div>
                         </div>

                     
                    </form>
                      
                  </div>
                </div>
              </div>
    </div>

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
                          <form id="frm3"  class="form-horizontal form-label-left"> 
                        <div class="item form-group">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Название вкуса</th>
                                    <th>Количество</th>
                                     <th>Объем (Л)</th>
                                    <th>Цена</th>
                                     <th>Порядок</th>
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

          <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>И того с учетом бонуса</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                     
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
             <%--       <p>Для загрузки шаблона укажите тип шаблона и дайте название шаблону.</p>--%>
                          <form id="frm4"  class="form-horizontal form-label-left"> 
                        <div class="item form-group">
                 
                            <div style="width:100%; height:150px; overflow-y:auto; min-height:150px; max-height:150px; max-width:100%; min-width:100%;" id="PriseResult"><b>Итого по счету: 0</b></div>
                      </div>
                     <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          <input type="button" value="Очистить форму" onclick=" javascript: ClearControls();" class="btn btn-primary" />
                            <input id="send" style="width:350px;" onclick="javascript: CreateNewRequest()" type="button" value="Отправить заявку" class="btn btn-success" />
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
    <!-- DateJS -->
    <script src="../vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <!-- bootstrap-daterangepicker -->
    <script src="../js/moment/moment.min.js"></script> 
       <!-- DateJS -->
  
    <script src="../js/datepicker/daterangepicker.js"></script>
  
    <script src="../vendors/pnotify/dist/pnotify.js"></script>
    <script src="../vendors/pnotify/dist/pnotify.buttons.js"></script>
    <script src="../vendors/pnotify/dist/pnotify.nonblock.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>

    <script src="../js/jquery.inputmask.bundle.js"></script>


 
  
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

        $('#single_cal2').daterangepicker({
            singleDatePicker: true,
            calender_style: "picker_2", "locale": {
                "format": "MM/DD/YYYY",
                "separator": " - ",
                "applyLabel": "Apply",
                "cancelLabel": "Cancel",
                "fromLabel": "From",
                "toLabel": "To",
                "customRangeLabel": "Custom",
                "daysOfWeek": [
                    "Вс",
                    "Пн",
                    "Вт",
                    "Ср",
                    "Чт",
                    "Пт",
                    "Сб"
                ],
                "monthNames": [
                    "Январь",
                    "Февраль",
                    "Март",
                    "Апрель",
                    "Май",
                    "Июнь",
                    "Июль",
                    "Авгут",
                    "Сентябрь",
                    "Октябрь",
                    "Ноябрь",
                    "Декабрь"
                ],
                "firstDay": 1
            }
        }, function (start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
        });


        $(".nm").bind('keyup mouseup', function ()
        {
            var AllText = "";
            var Summ=0;
            var Row = "";          
            var RowSum;
            $(".nm").each(function () {
                if ($(this).val() > 0)
                {
                    
                    RowSum = $(this).val() * parseFloat($(this).attr("data-p"));
                    Summ=Summ+RowSum
                    Row = $(this).parent().parent().children().first().text() + " кол: " + $(this).val() + " Итого: "+RowSum;
                    AllText = AllText + "<p>"+Row+"</p>";
                }
            });
            AllText = AllText + "<b>Итого по счету: " + Summ+"</b>";
            $("#PriseResult").html(AllText);
        });



      
        $(function () {

            $('#t2').inputmask("hh:mm", {
                placeholder: "hh:mm",
                insertMode: false,
                showMaskOnHover: false
            });


            var DateNow = new Date();
            $("#single_cal2").val(DateNow.getMonth() + 1 + "/" + DateNow.getDate() + "/" + DateNow.getFullYear());

            $('.DelRow').click(function () {
                clikcBtn = $(this);
            });

        });


        $(".sort").keypress(function (e) {

            if (e.which != 13) { return; }

            var SendData = {
                ID: $(this).attr("data-r"), index: $(this).val()
            }


            $.ajax({
                url: 'CreateRequest.aspx/UpdateSort',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {
                        window.location.href = "CreateRequest.aspx";
                    } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                    }
                    $('input').removeAttr("disabled");
                }
            });
        });

        function CreateNewRequest()
        {
            if (!validator.checkAll($('#frm2'))) {
                return;
            }

            if ($("#single_cal2").val().length > 0) {
                if ($("#t2").val().indexOf("m")!=-1) {
                    new PNotify({ title: 'Ошибка', text: "Укажите время доставки", type: 'error', styling: 'bootstrap3' });
                    return;
                }
            }
          
            var index = 0;
            var FlavorUploadData = [];
            $(".nm").each(function () {
                if (parseInt( $(this).val()) > 0) {
                    FlavorUploadData[index] = { Count: $(this).val(), RefFlavor: $(this).attr("data-r") };
                }
                index++;                
            });
            if (FlavorUploadData.length == 0) { new PNotify({ title: 'Ошибка', text: "Укажите наименование", type: 'error', styling: 'bootstrap3' }); return; }
            $("input").prop("disabled", true);
            var SendData = { Adress: $("#Adress").val(), PhoneNumber: $("#PhoneNumber").val(),  Data: FlavorUploadData, Note: $("#Note").val(), DeliveryDate: GetDelivDate(),FIO:$("#FIO").val() }

        
            $.ajax({
                url: 'CreateRequest.aspx/AddNewMHDRequest',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {

                        new PNotify({ title: 'Сохранение', text: "Ваша заявка успешно отправлена", type: 'info', styling: 'bootstrap3' });
                        ClearControls();

                    } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                    }
                    $('input').removeAttr("disabled");
                }, error: function (ex) {
                    new PNotify({ title: 'Ошибка', text: ex.responseText, type: 'error', styling: 'bootstrap3' });
                    $('input').removeAttr("disabled");
                }
            });
        }


      
        function GetDelivDate() {
            if ($("#single_cal2").val().length == 0) { return null; }
          
            var from = $("#single_cal2").val().split("/");
            var Hour = 0;
            var Minutes = 0
            if ($("#t2").val().indexOf(':') > 0) {
                Hour = $("#t2").val().split(":")[0];
                Minutes = $("#t2").val().split(":")[1];
            }

            var f = new Date(from[2], from[1] - 1, from[0], Hour, Minutes, 0, 0);
            return f;
        }

        function ClearControls() {
            $(".nm").val("");
            $(".snm").val("");
            $(".clr").val("");
            $("#PriseResult").html("<b>Итого по счету: 0</b>");
        }

       
    </script>
</asp:Content>
