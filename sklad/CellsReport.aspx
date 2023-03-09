<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CellsReport.aspx.cs" Inherits="BANURNS.sklad.CellsReport" %>

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
           <div id="printableArea">
<h4 style="color:black"><b runat="server" id="Sender"></b></h4>
<p>Дата отправления: <b runat="server" id="SendDate"></b></p>
        <p>Дата закрытия: <b runat="server" id="CloseDate"></b></p>

<p>Пользователь отправивший: <b runat="server" id="SenderUserName"></b></p>
<p>Коментарий к заявке:</p>
<div runat="server" id="RequestText">
 
</div>

        <p>Причина закрытия:</p>
<div runat="server" id="CloseText">
 
</div>
        <h4><b>Мороженное в контейнерах</b></h4>
     <table  class="SectionsContainer">
                     <tr>
                         <th>Наименование</th>
                          <th>Количество</th>
                          <th>Статус</th>
                         <th>Название склада</th>
                         
                     </tr>
                      <tbody class="SectionsData">
                      <asp:Literal runat="server" ID="MorojnoeTable"></asp:Literal>
                      </tbody>
                    </table>

      <%--  <h4><b>Разное:</b></h4>
        <table class="SectionsContainer">
            <tr>
                <th>Наименование</th>
                <th>Количество</th>
                <th>Еденица измерения</th>
                  <th>Товарный код</th>
                <th>Название склада</th>
            </tr>
            <tbody class="SectionsData">--%>
            <asp:Literal runat="server" ID="RaznoeTable"></asp:Literal>

      <%--      </tbody>
        </table>--%>
               </div>
    </form>
     <script src="../vendors/jquery/dist/jquery.min.js"></script>       
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script> 
    <script src="../vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
  <script>
      function printDiv(divName) {
          var printContents = document.getElementById(divName).innerHTML;
          var originalContents = document.body.innerHTML;

          document.body.innerHTML = printContents;

          window.print();

          document.body.innerHTML = originalContents;
      }

      
    </script>
</body>
</html>
