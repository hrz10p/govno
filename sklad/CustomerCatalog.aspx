<%@ Page Title="" Language="C#" MasterPageFile="~/sklad/Sklad.Master" AutoEventWireup="true" CodeBehind="CustomerCatalog.aspx.cs" Inherits="BANURNS.sklad.CustomerCatalog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/vendors/pnotify/dist/pnotify.css" rel="stylesheet"/>
    <link href="/vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet"/>
    <link href="/vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet"/>
    <link href="/vendors/dropzone/dist/min/dropzone.min.css" rel="stylesheet"/>
    <style>
        .CatalogImage {
            width:150px;
            height:100px;
        }

        .DelRow {
        cursor:pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="">
        <div class="page-title">
              <div class="title_left">
                <h3>Управление каталогами</h3>
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
                    <h2>Создание каталогов <small></small></h2>
                   
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    <%--  <li class="dropdown">
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

                    <form id="frm2"   class="form-horizontal form-label-left" >
                     
                     

                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Название каталога<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="cn" class="form-control col-md-7 col-xs-12"  maxlength="120" data-validate-length-range="120" placeholder="" required="required" type="text"/>
                        </div>
                      </div>
                    
                    </form>

                       <form action="../UCCI.aspx" id="df" class="dropzone"></form>
                    <br />
                    <br />
                    <br />
                    <br />
                        <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          <input type="button" value="Очистить" onclick="javascript: ClearCuntrols()" class="btn btn-primary" />
                          <input id="send" onclick="javascript: SaveNewTemplate()" type="button" value="Создать новый каталог"  class="btn btn-success" />
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
                    <h2>Список каталогов <small></small></h2>
                   
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    <%--  <li class="dropdown">
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

                    <form id="Form1" runat="server"  class="form-horizontal form-label-left" >


                          <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-sm">
                      <div class="modal-content">

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel2">Удаление каталога</h4>
                        </div>
                        <div class="modal-body">
                        
                          <div>
                              <p>Вы действительно желаете удалить каталог ?
                             <br/><i>При удалении каталога все связанные данные с этим каталогом будут удалены.</i> </p>
                            
                          </div>
                         
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Нет</button>
                          <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="javascript:DeleteCatalog()">Да! Удалить.</button>
                        </div>

                      </div>
                    </div>
                  </div>

                     <table class="table">
                         <thead>
                             <tr>
                                 <th>Название каталога</th>
                                 <th>Изображение</th>
                                 <th>Управление</th>
                             </tr>
                         </thead>
                         <tbody>
                             <asp:Literal runat="server" ID="CatalogDataRows"></asp:Literal>
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

        <script src="/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="/vendors/nprogress/nprogress.js"></script>
    <!-- Dropzone.js -->
    <script src="/vendors/dropzone/dist/dropzone.js"></script>
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
    <script src="/js/datepicker/daterangepicker.js"></script>
    <script src="/vendors/pnotify/dist/pnotify.js"></script>
    <script src="/vendors/pnotify/dist/pnotify.buttons.js"></script>
    <script src="/vendors/pnotify/dist/pnotify.nonblock.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="/build/js/custom.min.js"></script>

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

          var Havefiles = false;

          var OldFileName = "";

          Dropzone.options.df = {
              acceptedFiles: "image/*",
              maxFileSize: 4,
              parallelUploads: 1,
              uploadMultiple: false,
              autoProcessQueue: false,
              addRemoveLinks: true,
              init: function () {

                  myDropzone = this;

                  myDropzone.on("addedfile", function (file) {
                      //$("#df").attr("action", "Upload.img?ID=" + $("#ContentPlaceHolder1_ImageID").val() + "&Dr=" + $("#DirectoryName option:selected").text() + "&Cv=" + $("#ISCover option:selected").val());
                      //myDropzone.processQueue();
                      Havefiles = true;
                  });

                  myDropzone.on('sending', function (file, xhr, formData) {

                      if (OldFileName != file.Name) {
                          OldFileName = file.Name;
                          formData.append('cn', $("#cn").val());
                         
                      }
                  });

                  myDropzone.on("complete", function (file) {

                      myDropzone.processQueue();
                      OldFileName = "";
                      if (this.getUploadingFiles().length === 0 && this.getQueuedFiles().length === 0) {
                          window.location.href = "CustomerCatalog.aspx";
                      }
                  });
              },
          };

          function SaveNewTemplate() {
              if (!validator.checkAll($('#frm2'))) {
                  return;
              }
              if (Havefiles == false) {
                  new PNotify({ title: 'Ошибка', text: "Добавьте изображения", type: 'error', styling: 'bootstrap3' });
                  return;
              }


              myDropzone.processQueue();

          }

          function ClearCuntrols() {
              Havefiles = false;
              df.dropzone.removeAllFiles();
              $('cn').val('');
          }

          $('.DelRow').click(function () {
               clikcBtn = $(this);
            
          });

          function DeleteCatalog()
          {
              var SendData = {
                  rID: clikcBtn.attr('data-r')
              };
              $('input').attr("disabled", "disabled");
              $.ajax({
                  url: 'CustomerCatalog.aspx/DeleteCatalog',
                  type: 'POST',
                  contentType: "application/json; charset=utf-8",
                  dataType: "JSON",
                  data: JSON.stringify(SendData),
                  failure: function (response) {
                      $('input').removeAttr("disabled");
                  },
                  success: function (data) {
                      if (data.d.IsDone == true) {
                          clikcBtn.parent().parent().remove();

                      } else {
                          new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                      }
                      $('input').removeAttr("disabled");
                  }
              });

          }
    </script>
</asp:Content>
