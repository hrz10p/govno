<%@ Page Title="" Language="C#" MasterPageFile="~/mhd/mhd.Master" AutoEventWireup="true" CodeBehind="FirstRequestBonus.aspx.cs" Inherits="BANURNS.mhd.FirstRequestBonus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/vendors/pnotify/dist/pnotify.css" rel="stylesheet"/>
    <link href="/vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet"/>
    <link href="/vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet"/>
   <link href="/vendors/iCheck/skins/flat/green.css" rel="stylesheet"/>
    <link href="/vendors/switchery/dist/switchery.min.css" rel="stylesheet"/>
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
                    <h2>Бонус за первую покупку <small></small></h2>
                   
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                   
                      
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                    <form id="frm2"   class="form-horizontal form-label-left" >

                        
                   

                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Управление<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                              <asp:Literal runat="server" ID="IScheck"></asp:Literal>
                        
                        </div>
                      </div>
                    
                       

                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Наименование<span class="required">*</span> </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                           
                          <select id="FlavorSelector" runat="server" class="form-control col-md-7 col-xs-12" required="required"  >
                             
                          </select>
                        </div>
                      </div>


                         <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Количество<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="BonusCount" class="form-control col-md-7 col-xs-12 cn" runat="server"  min="1" required="required" type="number"/>
                        </div>
                      </div>


                    </form>

                     
                        <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          
                          <input id="send" onclick="javascript: CreateBonus()" type="button" value="Созранить изменения"  class="btn btn-success" />
                        </div>
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

    <script>
        $("#Ch").on('ifChanged',function () {
            if ($(this).prop("checked") == false) {
                $("#ContentPlaceHolder1_FlavorSelector").prop("disabled", true);
                $("#ContentPlaceHolder1_BonusCount").prop("disabled", true);
            } else {
                $("#ContentPlaceHolder1_FlavorSelector").prop("disabled", false);
                $("#ContentPlaceHolder1_BonusCount").prop("disabled", false);
            }
        });

        function CreateBonus()
        {
            $('input').prop("disabled", true);

            var SendData = {
                RefFlavor: $("#ContentPlaceHolder1_FlavorSelector option:selected").val(), IsEnabled: $("#Ch").prop("checked"), Count: $("#ContentPlaceHolder1_BonusCount").val()
            }

            $.ajax({
                url: 'FirstRequestBonus.aspx/CreateBonus',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == false) {
                       
                        new PNotify({ title: 'Ошибка', text: "Изменения не были приняты", type: 'error', styling: 'bootstrap3' });
                    } else {

                        window.location.href = "FirstRequestBonus.aspx";
                    }
                    $('input').removeAttr("disabled");
                }, error: function (err) {
                    alert(err.responseText);
                }
            });
        }
    </script>


     <!-- DateJS -->

</asp:Content>
