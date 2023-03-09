<%@ Page Title="" Language="C#" MasterPageFile="~/sklad/Sklad.Master" AutoEventWireup="true" CodeBehind="CustomerSubCatalog.aspx.cs" Inherits="BANURNS.sklad.CustomerSubCatalog" %>
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
                <h3>Управление подкаталогами</h3>
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
                    <h2>Создание подкаталога <small></small></h2>
                   
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
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Выбор каталога<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                    <select id="CatalogSelector" runat="server" class="form-control col-md-7 col-xs-12" ></select>
                        </div>
                      </div>
                     

                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Название подкаталога<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="scn" class="form-control col-md-7 col-xs-12"  maxlength="120" data-validate-length-range="120" placeholder="" required="required" type="text"/>
                        </div>
                      </div>
                    
                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Еденица измерения<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="edizm" class="form-control col-md-7 col-xs-12"  maxlength="120" data-validate-length-range="120" placeholder="" required="required" type="text"/>
                        </div>
                      </div>

                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Минимальное количество </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <i>Пустое поле- отсутсnтвие минимального заказа</i>
                          <input id="MinCount" class="form-control col-md-7 col-xs-12"  min="1"  type="number"/>
                        </div>
                      </div>

                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Цена (kzt)<span class="required">*</span> </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                           
                          <input id="Prise" class="form-control col-md-7 col-xs-12" value="1"   min="1"  type="number"/>
                        </div>
                      </div>

                            <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Краткое описание</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="Desc" class="form-control col-md-7 col-xs-12"  maxlength="120" data-validate-length-range="120" placeholder="" type="text"/>
                        </div>
                      </div>


                    </form>

                       <form action="../USCCI.aspx" id="df" class="dropzone"></form>
                    <br />
                    <br />
                    <br />
                    <br />
                        <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          <input type="button" value="Очистить" onclick="javascript: ClearCuntrols()" class="btn btn-primary" />
                          <input id="send" onclick="javascript: SaveNewTemplate()" type="button" value="Создать новый подкаталог"  class="btn btn-success" />
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
                    <h2>Список подкаталогов <small></small></h2>
                   
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
                          <h4 class="modal-title" id="myModalLabel2">Удаление подкатлога</h4>
                        </div>
                        <div class="modal-body">
                        
                          <div>
                              <p>Вы действительно желаете удалить подкаталог ?</p>
                            
                            
                          </div>
                         
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Нет</button>
                          <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="javascript:DeleteSubCatalog()">Да! Удалить.</button>
                        </div>

                      </div>
                    </div>
                  </div>
                        
                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Выбор каталога</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                    <select id="CSelector" runat="server" class="form-control col-md-7 col-xs-12" ></select>
                        </div>
                      </div>

                     <table class="table">
                         <thead>
                             <tr>
                                 <th>Название подкаталога</th>
                                  <th>Еденица измерения</th>
                                  <th>Минимальное количество</th>
                                  <th>Цена</th>
                                  <th>Краткое описание</th>
                                 <th>Изображение</th>
                                 <th>Управление</th>
                             </tr>
                         </thead>
                         <tbody class="TContent">
                             <asp:Literal runat="server" ID="SubCatalogDataRows"></asp:Literal>
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
                        formData.append('scn', $("#scn").val());
                        formData.append('cid', $("#ContentPlaceHolder1_CatalogSelector option:selected").val());
                        formData.append('edizm', $("#edizm").val());
                        formData.append('MinCount', $("#MinCount").val());
                        formData.append('prise', $("#Prise").val());
                        formData.append('desc', $("#Desc").val());
                    }
                });

                myDropzone.on("complete", function (file) {

                    myDropzone.processQueue();
                    OldFileName = "";
                    if (this.getUploadingFiles().length === 0 && this.getQueuedFiles().length === 0) {
                        window.location.href = "CustomerSubCatalog.aspx";
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

        function initDelRowButtons()
        {
            $('.DelRow').click(function () {
                clikcBtn = $(this);

            });
        }
        initDelRowButtons();

        function ClearCuntrols() {
            Havefiles = false;
            df.dropzone.removeAllFiles();
            $('cn').val('');
        }

        $('#ContentPlaceHolder1_CSelector').change(function () {
          
            var SendData = {
                CatalogID: $(this).val()
            };
           
            $.ajax({
                url: 'CustomerSubCatalog.aspx/OnCatalogChange',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    $('.TContent').html('');
                    $(data.d).each(function (index) {
                        $(".TContent").append("<tr><td>" + data.d[index].SubCatalogName + "</td><td>" + data.d[index].edIzm + "</td><td>" + data.d[index].minCount + "</td><td>" + data.d[index].Prise + "</td><td>" +
                  data.d[index].Description + "</td><td><img class=\"CatalogImage\" src=\"CustomerImages/" + data.d[index].SubCatalogImageName + "\" alt=\"\"/></td><td><a  data-toggle=\"modal\" data-target=\".bs-example-modal-sm\" class=\"DelRow\" data-r=\"" + data.d[index].ID + "\">Удалить</a></td></tr>");

                    });
                    initDelRowButtons();
                }
            });
        });


        function DeleteSubCatalog()
        {
            var SendData = {
                rid: clikcBtn.attr('data-r')
            };
            $('input').attr("disabled", "disabled");
            $.ajax({
                url: 'CustomerSubCatalog.aspx/RemoveRow',
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
