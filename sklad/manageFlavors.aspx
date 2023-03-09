<%@ Page Title="" Language="C#" MasterPageFile="~/sklad/Sklad.Master" AutoEventWireup="true" CodeBehind="manageFlavors.aspx.cs" Inherits="BANURNS.sklad.manageFlavors" %>
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
    <div class="page-title">
              <div class="title_left">
                <h3>Управление вкусами</h3>
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
                    <h2>Добавление нового вкуса <small></small></h2>
                   
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                   
                      
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                    <form id="frm2"   class="form-horizontal form-label-left" >

                        
                     

                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Название вкуса<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="FlName" class="form-control col-md-7 col-xs-12 cn"  maxlength="120" data-validate-length-range="120" placeholder="" required="required" type="text"/>
                        </div>
                      </div>
                    
                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Индекс сортировки<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="SortIndex" class="form-control col-md-7 col-xs-12 cn"  min="0" required="required" type="number"/>
                        </div>
                      </div>

                       

                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Цена (kzt)<span class="required">*</span> </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                           
                          <input id="Prise" class="form-control col-md-7 col-xs-12" value="1" required="required"   min="1"  type="number"/>
                        </div>
                      </div>

                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Баркод</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="Barcode" class="form-control col-md-7 col-xs-12 cn"  required="required"  maxlength="120" data-validate-length-range="120" placeholder="" type="text"/>
                        </div>
                      </div>
                         
                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Объем (мл)<span class="required">*</span> </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                           
                          <input id="Size" class="form-control col-md-7 col-xs-12" value="1000" required="required"   min="1"  type="number"/>
                        </div>
                      </div>

                    </form>

                       <form action="../MHDUI.aspx" id="df" class="dropzone"></form>
                    <br />
                    <br />
                    <br />
                    <br />
                        <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          <input type="button" value="Очистить" onclick="javascript: ClearCuntrols()" class="btn btn-primary" />
                          <input id="send" onclick="javascript: SaveNewTemplate()" type="button" value="Добавить новый вкус"  class="btn btn-success" />
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
                    <h2>Список <small></small></h2>
                   
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
                              <p>Вы действительно желаете удалить вкус мороженного ? </p>
                            <p><i>После удаления данный вкус мороженного будет не доступен для заказа</i></p>
                            
                          </div>
                         
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Нет</button>
                          <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="javascript:DeleteFlavor()">Да! Удалить.</button>
                        </div>

                      </div>
                    </div>
                  </div>
                        
                        

                     <table class="table">
                         <thead>
                             <tr>
                                 <th>Название </th>
                                  <th>Цена</th>
                                  <th>Баркод</th>  
                                 <th>Порядок отображения</th>
                                  <th>Изображение</th> 
                                 <th>Управление</th>
                             </tr>
                         </thead>
                         <tbody class="TContent">
                             <asp:Literal runat="server" ID="FlavorDataRows"></asp:Literal>
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
            maxFiles:1,
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
                        formData.append('FlName', $("#FlName").val());
                        formData.append('SortIndex', $("#SortIndex").val());
                        formData.append('Prise', $("#Prise").val());
                        formData.append('Barcode', $("#Barcode").val());
                        formData.append('Size', $("#Size").val());
                       
                    }
                });

                myDropzone.on("complete", function (file) {

                    myDropzone.processQueue();
                    OldFileName = "";
                    if (this.getUploadingFiles().length === 0 && this.getQueuedFiles().length === 0) {
                        window.location.href = "manageFlavors.aspx";
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

        function initDelRowButtons() {
            $('.DelRow').click(function () {
                clikcBtn = $(this);

            });
        }
        initDelRowButtons();

        function ClearCuntrols() {
            Havefiles = false;
            df.dropzone.removeAllFiles();
            $('.cn').val('');
        }

        $('.nmb').keypress(function (e) {


            if (e.which != 13) { return; }
       
            var SendData = {
                RowID: $(this).attr("data-r"), Index:$(this).val()
            }

            $.ajax({
                url: 'manageFlavors.aspx/UpdateOrderIndex',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {
                        window.location.href = "manageFlavors.aspx";
                    } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                    }
                    $('input').removeAttr("disabled");
                }
            });
        });

    </script>
</asp:Content>
