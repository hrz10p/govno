<%@ Page Title="" Language="C#" MasterPageFile="~/rom/rommainmaster.Master" AutoEventWireup="true" CodeBehind="Rcustomer.aspx.cs" Inherits="BANURNS.rom.Rcustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
           <link href="../vendors/pnotify/dist/pnotify.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet"/>


    <link href="../vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet"/>
    <link href="../css/CheckBox.css" rel="stylesheet" />
    <script src="http://api-maps.yandex.ru/2.1.17/?lang=ru_RU" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="">
        <div class="page-title">
              <div class="title_left">
                <h3>Управление заказчиками</h3>
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
                    <h2>Управление</h2>
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
                      <li><a id="FilterButton" href="#" ><i class="fa fa-filter"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
             <%--       <p>Для загрузки шаблона укажите тип шаблона и дайте название шаблону.</p>--%>

                          <form id="frm3"  class="form-horizontal form-label-left" > 
                     <div class="item form-group">
                       
                         <table id="DataTable"  class="table">
                             <thead>
                                 <tr>
                                     <th>Телефоннный номер</th>
                                      <th>Закзачик</th>
                                     <th>Название</th>                                     
                                     <th>Инициалы отправителя</th>
                                     <th>Адрес</th>
                                      <th>Данные расположения</th>
                                     <th>Дата регистрации</th>
                                      <th>Дата последней активности</th>
                                     <th>Управление доступом</th>
                                     <th></th>
                                 </tr>
                             </thead>
                             <tbody>
                                 <asp:Literal runat="server" ID="TableData"></asp:Literal>
                             </tbody>
                         </table>
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
                    <h2>Добавление нового заказчика</h2>
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

                          <form id="frm2"  class="form-horizontal form-label-left" > 
                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Номер телефона<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="PhoneNumber"  class="form-control col-md-7 col-xs-12" maxlength="256" data-validate-length-range="256" placeholder="+77054278636" required="required" type="text"/>
                        </div>
                      </div>

                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Название <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="SourceName"  class="form-control col-md-7 col-xs-12" maxlength="256" data-validate-length-range="256" placeholder="Магазин 'Звезда'" required="required" type="text"/>
                        </div>
                      </div>

                           <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Инициалы отправителя <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="FIO"  class="form-control col-md-7 col-xs-12" maxlength="256" data-validate-length-range="256" placeholder="Иванов А.И." required="required" type="text"/>
                        </div>
                      </div>

                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Адрес <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="Adress"  class="form-control col-md-7 col-xs-12" maxlength="256" data-validate-length-range="256" placeholder="г. Астана ул.Сауран 7Б" required="required" type="text"/>
                        </div>
                      </div>


                       <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12"> Тип заказкчика <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select id="DTypeSelector" required  runat="server" class="form-control required">
                           <option value="0"  >Кафе(Ресторан)</option>
                          <option value="1">Магазин</option>
                          </select>
                        </div>
                      </div>

                             <%-- <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Широта <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="Lat"  class="form-control col-md-7 col-xs-12" maxlength="256" data-validate-length-range="256" placeholder="" required="required" type="text"/>
                        </div>
                      </div>

                     <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Долгота <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="Lon"  class="form-control col-md-7 col-xs-12" maxlength="256" data-validate-length-range="256" placeholder="" required="required" type="text"/>
                        </div>
                      </div>

                      <div class="form-group">
                      <div id="YMapsIDgeopoint"  style="width:100%; height:450px;"></div>	
                      </div>--%>

                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          <input type="button" value="Очистить" onclick=" df.dropzone.removeAllFiles();" class="btn btn-primary" />
                          <input id="send" onclick="javascript: CreateNewUser()" type="button" value="Добавить нового заказчика"  class="btn btn-success" />
                        </div>
                      </div>
                    </form>
                    
                     
                  </div>
                </div>
              </div>
            </div>
         <div class="clearfix"></div>
      
    </div>


    
    <div class="modal fade bs-example-modal-lg" tabindex="-1" id="FilterModal" role="dialog" aria-hidden="true" style="display: none;">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel">Параметры поиска</h4>
                        </div>
                        <div class="modal-body">
                        
                             <form id="frm5"   class="form-horizontal form-label-left" >
        
                           <div class="item form-group ">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Телефонный номер<span class="required"></span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                       
                                     <div class="checkbox checkbox-primary  " style="position:fixed; ">
            <input id="CH1" data-f="[CustomerPhoneNumber]" data-option="=" data-id="SU" data-class="CH1" class="ch" type="checkbox" />
            <label for="checkbox2">  </label>      

                                     </div>

                          <div style="margin-left:20px;">   
                          <input id="SU" class="form-control   CH1" disabled="disabled"    data-validate-length-range="120" placeholder="" required="required" type="text"/>
                              <select id="SU_Select" disabled="disabled" class="form-control CH1" >
                          <option value="=">Равно</option>
                            <option value="Like">Содержит</option>
                      </select>
                      </div>
                        </div>
                      </div>


                        
                          <div class="item form-group ">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Название<span class="required"></span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                          
                                     <div class="checkbox checkbox-primary  " style="position:fixed; ">
            <input id="CH2" data-f="[CustomerName]" data-option="Like" data-id="cm" data-class="CH2" class="ch" type="checkbox" />
            <label for="checkbox2">  </label>      </div>
                          <div style="margin-left:20px;">
                          <input  class="form-control  CH2 " disabled="disabled"  id="cm"   data-validate-length-range="120" placeholder="" required="required" type="text"/>
                      <select disabled="disabled" id="cm_Select" class="form-control CH2" >
                          <option value="=">Равно</option>
                            <option value="Like">Содержит</option>
                      </select>

                          </div>
                        </div>
                      </div>



                                   <div class="item form-group ">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Отправитель<span class="required"></span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                          
                                     <div class="checkbox checkbox-primary  " style="position:fixed; ">
            <input id="CH7" data-f="[SenderFIO]" data-option="Like"  data-id="ccm" data-class="CH7" class="ch" type="checkbox" />
            <label for="checkbox2">  </label>      </div>
                          <div style="margin-left:20px;">
                          <input  class="form-control  CH7 " disabled="disabled"  id="ccm"   data-validate-length-range="120" placeholder="close_button_click - показывает заявки закрытые заявки" required="required" type="text"/>
                      <select disabled="disabled" id="ccm_Select" class="form-control CH7" >
                          <option value="=">Равно</option>
                            <option value="Like">Содержит</option>
                      </select>

                          </div>
                        </div>
                      </div>



                                     <div class="item form-group ">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Адрес<span class="required"></span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                          
                                     <div class="checkbox checkbox-primary  " style="position:fixed; ">
            <input id="CH10" data-f="[Adress]" data-option="Like"  data-id="Adr" data-class="CH10" class="ch" type="checkbox" />
            <label for="checkbox2">  </label>      </div>
                          <div style="margin-left:20px;">
                          <input  class="form-control  CH7 " disabled="disabled"  id="Adr"   data-validate-length-range="120" placeholder="close_button_click - показывает заявки закрытые заявки" required="required" type="text"/>
                      <select disabled="disabled" id="Adr_Select" class="form-control CH10" >
                          <option value="=">Равно</option>
                            <option value="Like">Содержит</option>
                      </select>

                          </div>
                        </div>
                      </div>



                           <div class="item form-group ">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Дата закрытия<span class="required"></span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                          
                                     <div class="checkbox checkbox-primary  " style="position:fixed; ">
                          <input id="CH3" data-f="[ClosedDate]" data-option="Like" data-id="Cl1" data-class="CH3" class="ch" type="checkbox" />
            <label for="checkbox2">  </label> 
                                     </div>
                          <div style="margin-left:20px;">
                       
                              <div class="xdisplay_inputx form-group has-feedback">
                                <input disabled="disabled" type="text" class="form-control has-feedback-left CH3" name="daterange" id="Cl1" placeholder="" aria-describedby="inputSuccess2Status3"/>
                                <span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></span>
                                <span id="inputSuccess2Status3" class="sr-only">(success)</span>
                              </div>

                      <select disabled="disabled" id="Cl1_Select" class="form-control CH3" >
                          <option value=">">Больше</option>
                            <option value="<">Меньше</option>
                            <option value="=">Равно</option>
                      </select>

                          </div>
                        </div>
                      </div>

                                    <div class="item form-group ">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Дата поступления<span class="required"></span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                          
                                     <div class="checkbox checkbox-primary  " style="position:fixed; ">
                          <input id="CH4" data-f="[RequestSendDate]" data-option="Like" data-id="Cl2" data-class="CH4" class="ch" type="checkbox" />
            <label for="checkbox2">  </label> 
                                     </div>
                          <div style="margin-left:20px;">
                       
                              <div class="xdisplay_inputx form-group has-feedback">
                                <input disabled="disabled" type="text" class="form-control has-feedback-left CH4" id="Cl2" name="daterange" placeholder="" aria-describedby="inputSuccess2Status3"/>
                                <span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></span>
                                <span id="inputSuccess2Status4" class="sr-only">(success)</span>
                              </div>

                      <select disabled="disabled" id="Cl2_Select" class="form-control CH4" >
                          <option value=">">Больше</option>
                            <option value="<">Меньше</option>
                            <option value="=">Равно</option>
                      </select>

                          </div>
                        </div>
                      </div>


                                 <div class="item form-group ">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Статус заявки со склада<span class="required"></span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                          
                                     <div class="checkbox checkbox-primary  " style="position:fixed; ">
                          <input id="CH5" data-f="[SkladStatus]" data-option="Like" data-id="SL1" data-class="CH5" class="ch" type="checkbox" />
            <label for="checkbox2">  </label> 
                                     </div>
                          <div style="margin-left:20px;">
                       
                              <select disabled="disabled" class ="form-control CH5" id="SL1">
                                  <option value="close_-">Принудительно закрыта</option>
                                    <option value="close_+">Выполнена</option>
                                    <option value="new">Новая</option>
                              </select>

                      <select disabled="disabled" id="SL1_Select" class="form-control CH5" >
                     
                            <option value="=">Равно</option>
                           <option value="!=">Неравно</option>
                      </select>

                          </div>
                        </div>
                      </div>


                                    <div class="item form-group ">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Статус заявки с холодильника<span class="required"></span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                          
                                     <div class="checkbox checkbox-primary  " style="position:fixed; ">
                          <input id="CH6" data-f="[RequestStatus]" data-option="Like" data-id="SL2" data-class="CH6" class="ch" type="checkbox" />
            <label for="checkbox2">  </label> 
                                     </div>
                          <div style="margin-left:20px;">
                       
                              <select disabled="disabled" class ="form-control CH6" id="SL2">
                                  <option value="close_-">Принудительно закрыта</option>
                                    <option value="close_+">Выполнена</option>
                                    <option value="new">Новая</option>
                              </select>

                      <select disabled="disabled" id="SL2_Select" class="form-control CH6" >
                     
                            <option value="=">Равно</option>
                           <option value="!=">Неравно</option>
                      </select>

                          </div>
                        </div>
                      </div>

                    </form>

                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Отмена</button>
                          <button type="button" id="Filter" class="btn btn-primary">Показать</button>
                        </div>

                      </div>
                    </div>
                  </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FotterPLaceHolder" runat="server">

        <script src="../vendors/jquery/dist/jquery.min.js"></script>       
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
   
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
          var MainTable;


          $(document).ready(function () {

              MainTable = $("#DataTable").DataTable({
                  "language": {
                      "url": "../js/RuDataTableD.txt"
                  },
                  "initComplete": function (settings, json) {

                  },
                  "scrollY": "400px",
                  "scrollCollapse": true,

              });
          });


          // validate a field on "blur" event, a 'select' on 'change' event & a '.reuired' classed multifield on 'keyup':
          $('form')
            .on('blur', 'input[required], input.optional, select.required', validator.checkField)
            .on('change', 'select.required', validator.checkField)
            .on('keypress', 'input[required][pattern]', validator.keypress);

          $('.multi.required').on('keyup blur', 'input', function () {
              validator.checkField.apply($(this).siblings().last()[0]);

          });

          //ymaps.ready(function () {

          //    var myMapGeo = new ymaps.Map('YMapsIDgeopoint', {
          //        center: [51.156405, 71.431714],
          //        zoom: 14,
          //        controls: ['zoomControl', 'searchControl', 'typeSelector', 'geolocationControl']
          //    });


          //    myMapGeo.events.add('click', function (e) {
          //        var coords = e.get('coords');
          //        //$('#geopoint').val([coords[0].toPrecision(6), coords[1].toPrecision(6)].join(', '));
          //        $("#Lat").val(coords[0].toPrecision(6));
          //        $("#Lon").val(coords[1].toPrecision(6));
          //        myMapGeo.balloon.open(coords, 'Местонахождение отмечено!<br><sup>Вы можете закрыть и выбрать другое местоположение.</sup>');

          //    });
          //});




          $("#FilterButton").click(function () { $("#FilterModal").modal("show"); });

          function CreateNewUser() {
              if (!validator.checkAll($('#frm2'))) {
                  return;
              }


              var SendData = {
                  PhoneNumber: $('#PhoneNumber').val(), SourceName: $('#SourceName').val(),
                  FIO: $('#FIO').val(), Adress: $('#Adress').val(), CustomerType: $('#ContentPlaceHolder1_DTypeSelector option:selected').val(),
                  Lat:"000", Lon: "000"
              };
              $('input').attr("disabled", "disabled");
              $.ajax({
                  url: 'Rcustomer.aspx/CreateNewCustomer',
                  type: 'POST',
                  contentType: "application/json; charset=utf-8",
                  dataType: "JSON",
                  data: JSON.stringify(SendData),
                  failure: function (response) {
                      $('input').removeAttr("disabled");
                  },
                  success: function (data) {
                      if (data.d.IsDone == true) {

                          window.location.href = 'Rcustomer.aspx';

                      } else {
                          new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                      }
                      $('input').removeAttr("disabled");
                  }
              });
          }
    </script>
</asp:Content>
