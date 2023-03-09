
function SendtoServerData(url, SendData, onError, onSuccess, onFailure) {
    $.ajax({
        url: url,
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: "JSON",
        data: JSON.stringify(SendData),
        failure: onFailure,
        success: onSuccess, error: onError
    });
}

$(document).ready(function () {

    $("#ClearCtrl").click(function () {
        ResetElementsByCssClassName("CrClear");

    });
});


function ShowHideAnimationPanel(HideIdPanel, ShowPanel, ShowAnimation, RemovedOldAnimation)
{
    $("#" + HideIdPanel).removeClass(RemovedOldAnimation);
    $("#" + HideIdPanel).attr("style", "display:none");
    $("#" + ShowPanel).removeAttr("style");
    $("#" + ShowPanel).addClass(ShowAnimation);
}

function CreateDate(elm) {
    var from = $(elm).val().split("/");
    var f = new Date(from[2], from[1] - 1, from[0]);
    return f;
}

function ShowNtfError(text)
{
    new PNotify({ title: "Ошибка", text: text, type: "error", styling: 'bootstrap3' });
}

function ShowNtfInfo(title, text)
{
    new PNotify({ title: title, text: text, type: "info", styling: 'bootstrap3' });
}


function ShowNtf(title,text, type)
{
    new PNotify({ title: title, text: text, type: type, styling: 'bootstrap3' });
}
 
    function SendtoServerDataStd(url, SendData, OnSuccess)
    {
        $.ajax({
            url: url,
            type: 'POST',
            contentType: "application/json; charset=utf-8",
            dataType: "JSON",
            data: JSON.stringify(SendData),
            failure: function (err) { DisableAllElemets(false); alert("Ошибка выполнения скрипта запроса на сервер"); },
            success: OnSuccess, error: function (err)
            {
                DisableAllElemets(false);
                new PNotify({ title: 'Ошибка', text: err.responseText, type: 'error', styling: 'bootstrap3' });
            }
        });
    }

    function DisableAllElemets(value) {
        $("select").prop("disabled", value);
        $("input").prop("disabled", value);
        $("button").prop("disabled", value);
    }


    function FillTable(TableData,MainTable) {
        MainTable.clear();
        MainTable.rows.add(TableData);
        MainTable.draw();
    }

    function ResetElementsByCssClassName(Css)
    {
        $("." + Css).each(function (index) {
            if ($(this).attr("type") == "text") {
                $(this).val("");
            }

            if ($(this).attr("type") == "number")
            {
                $(this).val($(this).attr("min"));
            }

            if ($(this).prop("tagName") == "SELECT") {
               
                $(this).prop('selectedIndex', 0);
            }

            if ($(this).prop("tagName") == "TEXTAREA")
            {
                $(this).text("");
            }
           
        });
   
    }


    function DestroyDataTable(DataTable, IDTBody)
    {
        DataTable.destroy();
        $("#" + IDTBody).html("<tr><td colspan=\"9\" style=\"text-align:center\"><b>Загрузка...</b></td></tr>");
    }

    function CreateDataTable(IDTable)
    {
      return  $('#' + IDTable).DataTable({
            "language": {
                "url": "../asset/js/RuDataTableD.txt"
            },
            "initComplete": function (settings, json) {

            }
        });
    }


    function ValidateControls(css, ErrorClass) {

        $("." + css).removeClass(ErrorClass);
        $(".ErrText").remove();

        $("." + css).each(function (index) {
            var elm = this;

            CheckProperty(elm, ErrorClass);
        });
        if ($(".ErrText").size() > 0) { return false; }
        return true;
    }

    function CheckProperty(elm, AddClass) {

        if ($(elm).attr("data-v") == "required" && $(elm).val() == "") {

            $(elm).addClass(AddClass);
            $(elm).parent().append("<span style=\"font-size:10px;\" class=\" text-color-secondary ErrText\"><b>Заполните поле</b></span>");
            return false;
        }
       
        if($(elm).attr("data-v")=="required_email" && validateEmail($(elm).val())==false)
        {
            
            $(elm).addClass(AddClass);
            $(elm).parent().append("<span style=\"font-size:10px;\" class=\" text-color-secondary ErrText\"><b>Укажите 'Email'</b></span>");
            return false;
        }
        return true;
    }


    function validateEmail(sEmail)
    {
        var filter = new RegExp(/^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/);
        if (filter.test(sEmail)) { return true; } else { return false; };
    }
