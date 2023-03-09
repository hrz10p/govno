<%@ Page Title="" Language="C#" MasterPageFile="~/TradePointsPages/TPMasterPage.Master" AutoEventWireup="true" CodeBehind="RequestEditor.aspx.cs" Inherits="BANURNS.TradePointsPages.RequestEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <link href="../vendors/pnotify/dist/pnotify.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet"/>
        <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet"/>

        <link href="../vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet"/>
     <style>
        .FlavorContainer {
        float:left; margin:5px;
        }
        .dwc {
            width:90px;
        }
         .sgr {
         cursor:pointer;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="">
          <div class="page-title">
              <div class="title_left">
                <h3>Редактор заявок</h3>
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
                    <h2>Мороженное в контейнерах</h2>
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
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Заявленное мороженное<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                     
                         
                       <asp:Literal runat="server" ID="FlavorShowData"></asp:Literal>

                      
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
                    <h2>Дополнительно</h2>
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

                            <form id="frm3"  class="form-horizontal form-label-left" >                  


                        <div class="item form-group">
                            
                      <table  id="ZTable" class="table">
                      <thead>
                        <tr>
                          <th>Наименование</th> 
                            <th>Количество</th>   
                          <th>Еденица измерения</th>
                                                
                        </tr>
                      </thead>
                      <tbody class="Trows">
                      <asp:Literal runat="server" ID="ZTableContent"></asp:Literal>
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
                    <h2>Обсуждение</h2>
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

                            <form id="frm4"  class="form-horizontal form-label-left" >                  


                        <div class="item form-group">
                         <asp:Literal id="ParamContainer" runat="server"   ></asp:Literal>
                    <ul class="list-unstyled timeline">                  
                   <asp:Literal runat="server" ID="DiscusControl"></asp:Literal>
                   </ul>


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
                    <h2>Коментарий к заявке</h2>
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

                            <form id="frm5"  class="form-horizontal form-label-left" >                  


                        <div class="item form-group">
                  
                    <textarea id="CommentText" style="width:100%; height:150px;"  maxlength="500" placeholder="Текст коментария"></textarea>

                      </div>

                        <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                       
                          <input id="send" onclick="javascript: AddComment()" type="button" value="Отправить"  class="btn btn-success" />
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


    <script>
        function CreateNewRequest() {
            window.location.href = "default.aspx";
        }

        $(document).ready(function () {
            //$('#ZTable').DataTable();
            $('#TopMenu').append("   <li class=\"\"><a class=\"sgr\">Сохранить изменения</a></li>\"");
            $('#TopMenu').append("   <li class=\"\"><a href=\"SendedRequests.aspx\">Показать заявки</a></li>\"");
            $('.sgr').click(function () {

                var Raznoe = [];
                var Morojnoe = [];
                var RaznoeData;
                var MorojnoeData;
                var index = 0;
                $('.dwc').each(function () {
                    RaznoeData = { ValueID: $(this).attr('data-r'), Count: $(this).val() };
                    if ($(this).val().length == 0) { RaznoeData.Count = 0;}
                    Raznoe[index] = RaznoeData;
                    index++;
                });
                index = 0;
                $('.mv').each(function () {
                    MorojnoeData = { RID: $(this).attr('data-rowid'), Count: $(this).val() }
                    if ($(this).val().length == 0) { MorojnoeData.Count = 0; }
                    Morojnoe[index] = MorojnoeData;
                    index++;
                });

                var SendData = { RqID: $('#ParamContainer').text(), DWIR: Raznoe, RDRD: Morojnoe };

                $.ajax({
                    url: 'RequestEditor.aspx/SaveChanges',
                    type: 'POST',
                    contentType: "application/json; charset=utf-8",
                    dataType: "JSON",
                    data: JSON.stringify(SendData),
                    failure: function (response) {
                        $('input').removeAttr("disabled");
                    },
                    success: function (data) {
                        if (data.d.IsDone == true) {

                            new PNotify({ title: 'Сохранение', text: "Ваша заявка успешно изменена", type: 'info', styling: 'bootstrap3' });
                            setTimeout(UpdatePage, 3000);

                        } else {
                            new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                        }
                        $('input').removeAttr("disabled");
                    }
                });


            });
        });

        
        function UpdatePage()
        {
            window.location.href = "RequestEditor.aspx?rid=" + $('#ParamContainer').text();
        }

        function AddComment()
        {
            var SendData = { CommentText: $('#CommentText').val(), RequestID: $('#ParamContainer').text() };

            $.ajax({
                url: 'RequestEditor.aspx/AddComment',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {

                        window.location.href = "RequestEditor.aspx?rid=" + $('#ParamContainer').text();

                    } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                    }
                    $('input').removeAttr("disabled");
                }
            });
        }


      
    </script>
</asp:Content>
