<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerPrintPage.aspx.cs" Inherits="BANURNS.sklad.CustomerPrintPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Печать заявки</title>
      
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet"/>    
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet"/> 
    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet"/>
           <link href="../vendors/pnotify/dist/pnotify.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet"/>
    <link href="../vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet"/>
    <style>
         .cellButton {
        width:80px;
        }

        .SectionsContainer {
        width:100%;
        
        }
         /*#SectionsContainer tr {
            border: black;
            }*/
            .SectionsContainer tr td {
             border:solid;
                border-width:1px;
             background-color: #ddd;
             text-align:center;
           color:black;
            }

            .SectionsContainer tr th {
           border:solid;
           border-width:1px;
             background-color: #ddd;
             text-align:center;
        color:black;
            }

         .SectionsContainer tr td a {
           
            margin: 0 auto;
            }
        .Infotable {
        
        }
        .Infotable tr td {
        color:black;
        font-size:10pt;
        }
    </style>
</head>
<body style="background-color:whitesmoke;" class="nav-md">
    <form id="form1" runat="server">
        <input type="button" onclick="printDiv('printableArea')" value="Распечатать" />
        <div style="margin:0 auto; width:70%; min-width:800px; border:solid; border-width:1px; border-color:black; overflow:auto; background-color:white; padding:10px;">
    <div id="printableArea">
        <div class="col-md-6">
        <table class="Infotable">
            <tr>
                <td>Заказчик: </td>
                <td><b runat="server" id="Sender"></b></td> </tr>
            <tr>
                  <td>Телефон заказчика: </td>
                <td><b runat="server" id="PhoneNumber"></b></td></tr>
            <tr>
                  <td>Адрес доставки: </td>
                <td><b runat="server" id="Adress"></b></td></tr>
                 <tr> <td>Дата доставки: </td>
                <td><b runat="server" id="DelivDAte"></b></td></tr>
                <tr> <td>Счет фактура: </td>
                <td><b runat="server" id="SchetFact"></b></td></tr>
              
           
        </table>

        </div>
        <div class="col-md-6">
            
            <table style="float:right" class="Infotable">
            
                <tr><td>Время достави: </td>
                <td><b runat="server" id="TimeDEliv"></b></td></tr> 
                <tr> <td>Менеджер отправитель: </td>
                <td><b runat="server" id="MngSender"></b></td></tr>
                <tr> <td>Дата и время заявки: </td>
                <td><b runat="server" id="RDAteTime"></b></td></tr>
              <tr> <td>Статус: </td>
                <td><b runat="server" id="Status"></b></td></tr>
                 <tr> <td>Чек: </td>
                <td><b runat="server" id="FiskalCheck"></b></td></tr>
           
        </table>
        </div>
        <br />
        <br />
        <br />
        <table class="table table-bordered table-hover table-condensed table-responsive">
            <thead>
                <tr>
                    <th>Наименование</th>
                      <th>Количество</th>
                      <th>Ед.Изм</th>
                    <th>Склад</th>
                    <th></th>
                </tr>
            </thead>
            <tbody >
 <asp:Literal runat="server" ID="ContentData"></asp:Literal>
            </tbody>
        </table>
   
    </div>

        </div>
    </form> 


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


     <script>
         function printDiv(divName) {
             var printContents = document.getElementById(divName).innerHTML;
             var originalContents = document.body.innerHTML;

             document.body.innerHTML = printContents;

             window.print();

             document.body.innerHTML = originalContents;
         }
         //Вывод на печать по 2 экземпляра

       

    </script>


</body>

</html>
