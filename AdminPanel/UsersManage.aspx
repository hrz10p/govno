<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="UsersManage.aspx.cs" Inherits="BANURNS.AdminPanel.UsersManage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../vendors/pnotify/dist/pnotify.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet"/>
    <style >
        .DeleteUser {
         cursor:pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="">
           <div class="page-title">
              <div class="title_left">
                <h3>Управление пользователями</h3>
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
                    <h2>Добавление нового пользователя</h2>
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
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Имя пользователя <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="UserName"  class="form-control col-md-7 col-xs-12" maxlength="256" data-validate-length-range="256" placeholder="Admin" required="required" type="text"/>
                        </div>
                      </div>

                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Инициалы <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="FIO"  class="form-control col-md-7 col-xs-12" maxlength="256" data-validate-length-range="256" placeholder="Иванов Иван Иванович" required="required" type="text"/>
                        </div>
                      </div>

                          <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Выбор роли <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select id="RoleSelector" required  runat="server" class="form-control required">
                          
                          </select>
                        </div>
                      </div>

                       <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12"> Тип пользователя <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select id="DTypeSelector" required  runat="server" class="form-control required">
                           <option value="0"  >Администратор системы</option>
                          <option value="1">Торговая точка</option>
                              <option value="2">Торговый представитель</option>
                              <option value="3">Региональный заказчик</option>
                               <option value="4">Отвественный за выдачу</option>
                               <option value="5">Водитель доставки на дом</option>
                               <option value="6">Диспетчер заявок с сайта</option>
                              <option value="7">Управление сайтом доставки</option>
                                 <option value="8">Менеджер заявок ресторанов (магазинов)</option>
                          </select>
                        </div>
                      </div>

                              <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12"> Гоород <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select id="CitiSelector" required   class="form-control required">
                           <option value="Астана"  >Астана</option>
                          
                          </select>
                        </div>
                      </div>

                   <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Пароль <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="Password"   class="form-control col-md-7 col-xs-12" maxlength="256" data-validate-length-range="256" placeholder="" required="required" type="password"/>
                        </div>
                      </div>

                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Повторите пароль <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="ConfirmPassword"   class="form-control col-md-7 col-xs-12" maxlength="256" data-validate-length-range="256" placeholder="" required="required" type="password"/>
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          
                          <input id="send" onclick="javascript: CreateNewUser()" type="button" value="Создать нового пользователя"  class="btn btn-success" />
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
                    <h2>Список пользователей <small></small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                     
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content" style="display: block;">
                    <br/>
                    <form id="dfffs"  class="form-horizontal form-label-left input_mask">
                            <div data-rid="" style="display:none" id="SRID"></div>
                        <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-sm">
                      <div class="modal-content">

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                          <h4  class="modal-title" id="myModalLabel2">Удаление пользователя</h4>
                        </div>
                        <div class="modal-body">
                          <h4>Вы действительно хотите удалить?</h4>
                          <p>После удаления пользователя указанный пользователь не сможет пользоваться ресурсом. Однако информация о пользователе будет сохранена.</p>
                         
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Нет</button>
                          <button type="button"  class="btn btn-primary" data-dismiss="modal" onclick="javascript:DeleteUser()">Да. Удалить!</button>
                        </div>

                      </div>
                    </div>
                  </div>
                    <table  id="UsersTable" class="table">
                      <thead>
                        <tr>
                          <th>Имя пользователя</th>
                          <th>Дата последней активности</th>
                          <th>Текущая роль пользователя</th>
                     
                            <th>Управление</th>
                        </tr>
                      </thead>
                      <tbody class="Trows">
                      <asp:Literal runat="server" ID="UTableBody"></asp:Literal>
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
      <script>

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
              $('#UsersTable').DataTable();
              //$('.DeleteUser').click(function () {
               
              //});
          });

          function clickDelUser(UName)
          {
              
              $('#SRID').attr('data-rid', UName);
          }

          function CreateNewUser()
          {
              if (!validator.checkAll($('#frm2'))) {
                  return;
              }

              var SendData = {
                  Password: $('#Password').val(), ConfirmPassword: $('#ConfirmPassword').val(), UserName: $('#UserName').val(),
                  RoleID: $('#ContentPlaceHolder1_RoleSelector option:selected').val(), DType: $('#ContentPlaceHolder1_DTypeSelector option:selected').val(), FIO: $('#FIO').val(), Citi: $("#CitiSelector option:selected").val()
              }
           
              $.ajax({
                  url: 'UsersManage.aspx/CreateNewUser',
                  type: 'POST',
                  contentType: "application/json; charset=utf-8",
                  dataType: "JSON",
                  data: JSON.stringify(SendData),
                  failure: function (response) {
                      $('input').removeAttr("disabled");
                  },
                  success: function (data) {
                      if (data.d.IsDone == true) {
                          window.location.href = "UsersManage.aspx";
                      } else {
                          new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                      }
                      $('input').removeAttr("disabled");
                  }
              });
          }

          function DeleteUser()
          {
              var SendData = {
                  UserName: $('#SRID').attr('data-rid')
              }

              $.ajax({
                  url: 'UsersManage.aspx/DeleteUser',
                  type: 'POST',
                  contentType: "application/json; charset=utf-8",
                  dataType: "JSON",
                  data: JSON.stringify(SendData),
                  failure: function (response) {
                      $('input').removeAttr("disabled");
                  },
                  success: function (data) {
                      if (data.d.IsDone == true) {
                          window.location.href = "UsersManage.aspx";
                      } else {
                          new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                      }
                      $('input').removeAttr("disabled");
                  }
              });
          }
    </script>
</asp:Content>
