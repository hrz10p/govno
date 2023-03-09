<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" CodeBehind="FullReportRequests.aspx.cs" Inherits="BANURNS.sklad.FullReportRequests" %>

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
    </style>
</head>


<body style="background-color:whitesmoke;" class="nav-md">
    <form id="form1" runat="server">
        <input type="button" onclick="printDiv('printableArea')" value="Распечатать" />
        <div style="margin:0 auto; width:70%; min-width:800px; border:solid; border-width:1px; border-color:black; overflow:auto; background-color:white; padding:10px;">
    <div id="printableArea">
    <asp:Literal runat="server" ID="ContentData"></asp:Literal>
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

         $.urlParam = function (name) {
             var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
             if (results == undefined) { return undefined;}
             return results[1] || 0;
         }
      
    </script>


</body>
  
</html>
