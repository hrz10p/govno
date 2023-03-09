<%@ Page Title="" Language="C#" MasterPageFile="~/mhd/mhd.Master" AutoEventWireup="true" CodeBehind="bonus.aspx.cs" Inherits="BANURNS.mhd.bonus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
   
    <link href="/vendors/pnotify/dist/pnotify.css" rel="stylesheet"/>
    <link href="/vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet"/>
    <link href="/vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet"/>
    <link href="/vendors/dropzone/dist/min/dropzone.min.css" rel="stylesheet"/>
  
    <style>
          .DelRow {
        cursor:pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="page-title">
              <div class="title_left">
                <h3>Управление бонусами</h3>
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
                    <h2>Создание бонуса <small></small></h2>
                   
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                   
                      
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                    <form id="frm2"   class="form-horizontal form-label-left" >

                        
                     

                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Наименование в подарок<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select id="GiftName" class="form-control col-md-7 col-xs-12 cn"    runat="server" required="required"/>
                        </div>
                      </div>
                    
                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Краткий текст бонуса<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                         <input id="BonusText" class="form-control col-md-7 col-xs-12 cn"  maxlength="120" data-validate-length-range="120" placeholder="3 литровых ведерка + подарок: 15 вафельных рожков" required="required" type="text"/>
                        </div>
                      </div>

                       

                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Действие бонуса<span class="required">*</span> </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                           
                          <select id="FlSelector" class="form-control col-md-7 col-xs-12" runat="server" required="required"  ></select>
                        </div>
                      </div>

                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Тип бонуса<span class="required">*</span> </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                           
                          <select id="BonusType" class="form-control col-md-7 col-xs-12" required="required"  >
                              <option value="0">Бонус действует от определенного количества заказа</option>
                                <option value="1">Бонус действует на указанное количество заказа</option>
                          </select>
                        </div>
                      </div>


                         <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Количество<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="Count" class="form-control col-md-7 col-xs-12 cn"  min="0" required="required" type="number"/>
                        </div>
                      </div>



                        <div class="item form-group">
                             <label class="control-label col-md-3 col-sm-3 col-xs-12"> Дата завершения действия <span class="required">*</span></label>
                            <div class="controls">
                              <div class="col-md-6 col-sm-6 col-xs-12 xdisplay_inputx form-group has-feedback">
                                <input type="text" class="form-control has-feedback-left cld" id="single_cal2"  placeholder="" aria-describedby="inputSuccess2Status2"/>
                                <span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></span>
                                <span id="inputSuccess2Status2" class="sr-only">Выбрать</span>
                              </div>
                            </div>
                          </div>

                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Время завершения действия бонуса<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            
                             <input type="text" id="t2"  class="form-control input-small" />
                           
                           
                        </div>
                      </div>




                    </form>

                     
                        <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          <input type="button" value="Очистить" onclick="javascript: ClearCuntrols()" class="btn btn-primary" />
                          <input id="send" onclick="javascript: CreateBonus()" type="button" value="Создать бонус"  class="btn btn-success" />
                        </div>
                      </div>
                  </div>
                </div>
              </div>

    </div>

     <div class="clearfix"></div>
       <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Текущий бонус <small></small></h2>
                   
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
                              <p>Вы действительно желаете удалить бонус ? </p>
                            <p><i>Бонус не будет анулирован в текущих заявках</i></p>
                            
                          </div>
                         
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Нет</button>
                          <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="javascript:DeleteBonus()">Да! Удалить.</button>
                        </div>

                      </div>
                    </div>
                  </div>
                        
                        

                     <table class="table">
                         <thead>
                             <tr>
                                 <th>Наименование в подарок </th>
                                  <th>Дата и время завершения</th>
                                  <th>Действие бонуса</th>
                                  <th>Тип бонуса</th>  
                                 <th>Количество</th>
                                  <th>Краткий текст бонуса</th> 
                                 <th>Управление</th>
                             </tr>
                         </thead>
                         <tbody class="TContent">
                             <asp:Literal runat="server" ID="BonusDataRows"></asp:Literal>
                         </tbody>
                     </table>
                     

                       
                    
                    </form>

                     
                   
                  </div>
                </div>
              </div>
            </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FotterPLaceHolder" runat="server">
      <script src="/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="/vendors/nprogress/nprogress.js"></script>
  
    <!-- bootstrap-progressbar -->
    <script src="/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="/vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="/vendors/skycons/skycons.js"></script>
    <script src="/vendors/validator/validator.js"></script>
    <!-- DateJS -->
    <script src="/vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <!-- bootstrap-daterangepicker -->
    <script src="/js/moment/moment.min.js"></script>
  
    <script src="/vendors/pnotify/dist/pnotify.js"></script>
    <script src="/vendors/pnotify/dist/pnotify.buttons.js"></script>
    <script src="/vendors/pnotify/dist/pnotify.nonblock.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="/build/js/custom.min.js"></script>

    <script src="../js/jquery.inputmask.bundle.js" ></script>


     <!-- DateJS -->
    <script src="../vendors/DateJS/build/date.js"></script> 
    <script src="../js/datepicker/daterangepicker.js"></script>

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


        $(function () {
          
            $('.cld').daterangepicker({
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


            $('.DelRow').click(function () {
                clikcBtn = $(this);
            });

            $('#t2').inputmask("hh:mm", {
                placeholder: "hh:mm",
                insertMode: false,
                showMaskOnHover: false
            });
            //single_cal2
            $('#single_cal2').inputmask('mm/dd/yyyy', { placeholder: "mm/dd/yyyy" });
        });


        function DeleteBonus()
        {
            var SendData = {
                RowID: clikcBtn.attr("data-r")
            }
            
            $.ajax({
                url: 'bonus.aspx/DeleteBonus',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {
                        window.location.href = "bonus.aspx";
                    } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                    }
                    $('input').removeAttr("disabled");
                }
            });
        }


        function CreateBonus() {
            if (!validator.checkAll($('#frm2'))) {
                return;
            }
            if ($("#t2").val().indexOf("m") > 0 || $("#t2").val().indexOf("h") > 0) {
                new PNotify({ title: 'Ошибка', text:"Укажите правильно время завершения бонуса", type: 'error', styling: 'bootstrap3' });
                return;
            }

            var SendData = {
                GiftID: $("#ContentPlaceHolder1_GiftName option:selected").val(), BonusAction: $("#ContentPlaceHolder1_FlSelector option:selected").val(), BonusType: $("#BonusType option:selected").val(),
                EndDate: GetEndDate(), Count: $("#Count").val(), BonusText: $("#BonusText").val()
            }
          
            $.ajax({
                url: 'bonus.aspx/AddNewBonus',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {
                        window.location.href = "bonus.aspx";
                    } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                    }
                    $('input').removeAttr("disabled");
                }
            });


        }

        

        function GetEndDate() {
            if ($("#single_cal2").val().length == 0) { return null; }
            return $("#single_cal2").val() + " " + $("#t2").val() + ":00";
        }


        
    </script>
</asp:Content>
