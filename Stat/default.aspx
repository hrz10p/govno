<%@ Page Title="" Language="C#" MasterPageFile="~/Stat/stat.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="BANURNS.Stat._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../vendors/pnotify/dist/pnotify.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="">
        
           <div class="row top_tiles" style="margin: 10px 0;">
              <div class="col-md-3 col-sm-3 col-xs-6 tile">
                <span>Всего заявок</span>
                <h2 runat="server" id="CountAllRequets"></h2>
                <span class="sparkline_one" id="SPAll" style="height: 160px;">
                      <canvas width="200" height="60" style="display: inline-block; vertical-align: top; width: 94px; height: 30px;"></canvas>
                  </span>
              </div>
              <div class="col-md-3 col-sm-3 col-xs-6 tile">
                <span>Заявок в текущем году</span>
                <h2 runat="server" id="CounRequestsInNowYear"></h2>
                <span class="sparkline_one" id="SpinYear" style="height: 160px;">
                      <canvas width="200" height="60" style="display: inline-block; vertical-align: top; width: 94px; height: 30px;"></canvas>
                  </span>
              </div>
              <div class="col-md-3 col-sm-3 col-xs-6 tile">
                <span>Заявок в текущем месяце</span>
                <h2 runat="server" id="CountRequestsInNowMonth"></h2>
                <span class="sparkline_two" style="height: 160px;">
                      <canvas width="200" height="60" style="display: inline-block; vertical-align: top; width: 94px; height: 30px;"></canvas>
                  </span>
              </div>
              <div class="col-md-3 col-sm-3 col-xs-6 tile">
                <span>Всего за сегодня</span>
                <h2 runat="server" id="CounRequestsInToday"></h2>
                <span class="sparkline_one" style="height: 160px;">
                      <canvas width="200" height="60" style="display: inline-block; vertical-align: top; width: 94px; height: 30px;"></canvas>
                  </span>
              </div>
            </div>
            <br />

         <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="dashboard_graph x_panel">
                  <div class="row x_title">
                    <div class="col-md-6">
                      <h3>Изменение спроса на вкусы мороженного<small>За период времени</small></h3>
                    </div>
                    <div class="col-md-6">
                     <%-- <div id="reportrange" class="pull-right" style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc">
                        <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
                        <span>December 30, 2014 - January 28, 2015</span> <b class="caret"></b>
                      </div>--%>
                    </div>
                  </div>
                  <div class="x_content">
                    <div class="demo-container" style="height:250px">
                      <div id="placeholder3xx3" class="demo-placeholder" style="width: 100%; height:250px;"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        <br />
  
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
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
             <%--       <p>Для загрузки шаблона укажите тип шаблона и дайте название шаблону.</p>--%>

                          <form id="frm2"  class="form-horizontal form-label-left" > 
                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Выбор вкуса мороженного <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select id="FlavorSelector" required  runat="server" class="form-control required">
                         
                          </select>
                        </div>
                      </div>

                       

                              <div class="form-group">
                                   <label class="control-label col-md-3 col-sm-3 col-xs-12"> Начальная дата <span class="required">*</span></label>
                            <div class="controls">
                              <div class="col-md-6 col-sm-6 col-xs-12 xdisplay_inputx form-group has-feedback">
                                <input type="text" class="form-control has-feedback-left cld" id="single_cal2" required placeholder="" aria-describedby="inputSuccess2Status2">
                                <span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></span>
                                <span id="inputSuccess2Status2" class="sr-only">Выбрать</span>
                              </div>
                            </div>
                          </div>

                               <div class="form-group">
                                   <label class="control-label col-md-3 col-sm-3 col-xs-12"> Конечная дата <span class="required">*</span></label>
                            <div class="controls">
                              <div class="col-md-6 col-sm-6 col-xs-12 xdisplay_inputx form-group has-feedback">
                                <input type="text" class="form-control has-feedback-left cld" id="single_cal2_1" placeholder="" required aria-describedby="inputSuccess2Status2">
                                <span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></span>
                                <span id="inputSuccess2Status2_1" class="sr-only">Выбрать</span>
                              </div>
                            </div>
                          </div>

                     
                  
                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                        
                          <input id="send" onclick="javascript: CreateNewGrapfhData()" type="button" value="Показать"  class="btn btn-success" />
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
         <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="../vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- jQuery Sparklines -->
    <script src="../vendors/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
    <!-- morris.js -->
    <script src="../vendors/raphael/raphael.min.js"></script>
    <script src="../vendors/morris.js/morris.min.js"></script>
    <!-- gauge.js -->
    <script src="../vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- Skycons -->
    <script src="../vendors/skycons/skycons.js"></script>
      <script src="../vendors/validator/validator.js"></script>
    <!-- Flot -->
    <script src="../vendors/Flot/jquery.flot.js"></script>
    <script src="../vendors/Flot/jquery.flot.pie.js"></script>
    <script src="../vendors/Flot/jquery.flot.time.js"></script>
    <script src="../vendors/Flot/jquery.flot.stack.js"></script>
    <script src="../vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="../vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="../vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="../vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="../vendors/DateJS/build/date.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="../js/moment/moment.min.js"></script>
    <script src="../js/datepicker/daterangepicker.js"></script>
       <script src="../vendors/pnotify/dist/pnotify.js"></script>
    <script src="../vendors/pnotify/dist/pnotify.buttons.js"></script>
    <script src="../vendors/pnotify/dist/pnotify.nonblock.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>
   
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

            var SendData = {}

            $.ajax({
                url: 'default.aspx/GetSparklineData',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    $("#SPAll").sparkline(data.d.SparklineAll, {
                        type: 'bar',
                        height: '40',
                        barWidth: 9,
                        colorMap: {
                            '7': '#a1a1a1'
                        },
                        barSpacing: 2,
                        barColor: '#26B99A'
                    });


                    $("#SpinYear").sparkline(data.d.SparklineInYear, {
                        type: 'bar',
                        height: '40',
                        barWidth: 9,
                        colorMap: {
                            '7': '#a1a1a1'
                        },
                        barSpacing: 2,
                        barColor: '#26B99A'
                    });


                    $(".sparkline_two").sparkline(data.d.SparklineInMonth, {
                        type: 'line',
                        width: '200',
                        height: '40',
                        lineColor: '#26B99A',
                        fillColor: 'rgba(223, 223, 223, 0.57)',
                        lineWidth: 2,
                        spotColor: '#26B99A',
                        minSpotColor: '#26B99A'
                    });

                }

               

            });


            //$(".sparkline_one").sparkline([2, 4, 3, 4, 5, 4, 5, 4, 3, 4, 5, 6, 7, 5, 4, 3, 5, 6], {
            //    type: 'bar',
            //    height: '40',
            //    barWidth: 9,
            //    colorMap: {
            //        '7': '#a1a1a1'
            //    },
            //    barSpacing: 2,
            //    barColor: '#26B99A'
            //});

            //$(".sparkline_two").sparkline([2, 4, 3, 4, 5, 4, 5, 4, 3, 4, 5, 6, 7, 5, 4, 3, 5, 6], {
            //    type: 'line',
            //    width: '200',
            //    height: '40',
            //    lineColor: '#26B99A',
            //    fillColor: 'rgba(223, 223, 223, 0.57)',
            //    lineWidth: 2,
            //    spotColor: '#26B99A',
            //    minSpotColor: '#26B99A'
            //});

        

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
        //    $('#single_cal2').daterangepicker
        });

      


        function CreateNewGrapfhData() {
            if (!validator.checkAll($('#frm2'))) {
                return;
            }


            var options = {
                series: {
                    curvedLines: {
                        apply: true,
                        active: true,
                        monotonicFit: true
                    }
                },
                colors: ["#26B99A"],
                grid: {
                    borderWidth: {
                        top: 0,
                        right: 0,
                        bottom: 1,
                        left: 1
                    },
                    borderColor: {
                        bottom: "#7F8790",
                        left: "#7F8790"
                    }
                }
            };

            var SendData = {
                FlavorName: $("#ContentPlaceHolder1_FlavorSelector option:selected").text(),
                StartDate: $("#single_cal2").val(), EndDate: $("#single_cal2_1").val()
            }
           
            $.ajax({
                url: 'default.aspx/GetFlavorData',
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: "JSON",
                data: JSON.stringify(SendData),
                failure: function (response) {
                    $('input').removeAttr("disabled");
                },
                success: function (data) {
                    if (data.d.IsDone == true) {
                      
                        var DataGr = [];
                        for (var i = 0; i < 5; i++)
                        {
                            DataGr[i] = [];
                            
                            DataGr[i][0] = i;
                            DataGr[i][1] =  data.d.Data[i];
                            
                        }
                      
                        var plot = $.plot($("#placeholder3xx3"), [{
                            label: SendData.FlavorName,
                            data: DataGr,
                            lines: {
                                fillColor: "rgba(150, 202, 89, 0.12)"
                            }, //#96CA59 rgba(150, 202, 89, 0.42)
                            points: {
                                fillColor: "#fff"
                            }
                        }], options);

                    } else {
                        new PNotify({ title: 'Ошибка', text: data.d.Message, type: 'error', styling: 'bootstrap3' });

                    }
                    $('input').removeAttr("disabled");
                }
            });
        }

    </script>
</asp:Content>
