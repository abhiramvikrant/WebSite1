<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
    .dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 300px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  padding: 12px 16px;
  z-index: 1;
}
.jumbotron{
    height:40px;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
    <meta charset="utf-8"/>
    <title>Cusjo Web</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $("#fader").on("input", function () {
                $('#lblHeader').css("font-size", $(this).val() + "px");
            });
            $("#clrFader").on("input", function () {
                var sliderval = $("#clrFader").val();
                if ($("#clrFader").val() > 20) {

                    $('#lblHeader').css("color", "black");
                }
                if ($("#clrFader").val() > 30) {

                    $('#lblHeader').css("color", "white");
                }
                if ($("#clrFader").val() > 100) {

                    $('#lblHeader').css("color", "blue");
                }
                if ($("#clrFader").val() > 120) {
                    $('#lblHeader').css("color", "orange");
                }
                if ($("#clrFader").val() > 150) {
                    $('#lblHeader').css("color", "yellow");
                }
                if ($("#clrFader").val() > 200) {
                    $('#lblHeader').css("color", "violet");
                }

            });
            $("#chkHeaderBold").click(function () {
                var isChecked = $("#chkHeaderBold").is(":checked");
                if (isChecked) {
                   
                    $('#lblHeader').css("font-weight", "bold");
                }
                else {
                    $('#lblHeader').css("font-weight", "normal");
                }
            });
            $("#chkItalics").click(function () {
                var isChecked = $("#chkItalics").is(":checked");
                if (isChecked) {

                    $('#lblHeader').css("font-style", "italic");
                }
                else {
                    $('#lblHeader').css("font-style", "normal");
                }
            });
            $("#chkHeaderUL").click(function () {
                var isChecked = $("#chkHeaderUL").is(":checked");
                if (isChecked) {

                    $('#lblHeader').css("text-decoration", "underline");
                }
                else {
                    $('#lblHeader').css("text-decoration", "none");
                }
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron text-center" style="margin-bottom:0;line-height:40px">
        <label id="lblHeader" class="float-left">Sample CusjPage</label>
            </div>
        <br />&nbsp;&nbsp;&nbsp;
            <div class="dropdown">
  <span  style="right:10px; float:right" class="btn btn-outline-info"><b>i</b></span>
  <div class="dropdown-content">
    <div class="container">
        <div class="row">
            Change the size of Header font:
            <input type="range" min="12" max="72" value="16" id="fader" />
        </div>

    </div>
    <div class="container">
        <div class="row">
            Change the Font Color of Header :
            <input type="range" min="0" max="255" value="0" step="20" id="clrFader" oninput="amount.value =clrFader.value" />

        </div>

    </div>
    <div class="container">
        
            <div class="row">
          <input type="checkbox" id="chkHeaderBold" />&nbsp;Bold</div>
            <div class="row"><input type="checkbox" id="chkItalics"  />&nbsp;Italics</div>
            <div class="row"><input type="checkbox" id="chkHeaderUL" />&nbsp;Underline</div>   
        

    </div>
      <div class="container">
          <div class="row">
              Select Language
          </div>
          <div class="row">
              <asp:DropDownList ID="ddlLanguages" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlLanguages_SelectedIndexChanged">
<asp:ListItem Text="English" Value="en-us"></asp:ListItem>
<asp:ListItem Text="Chinese" Value="zh"></asp:ListItem>
                  <asp:ListItem Text="Hindi" Value="fr"></asp:ListItem>

              </asp:DropDownList>
          </div>
      </div>
  </div>
</div>

   
  

  

    <div class="container" style="margin-top:30px">
        <div class="row">
            <div class="col-sm-8">
                 <asp:Label ID="Label1" Text="<%$Resources:Resource, Greetings %>" runat="server" Font-Bold="true" />
                 <asp:Label ID="Label2" Text="<%$Resources:Resource, Para %>" runat="server" Font-Bold="true" />
            </div>
        </div>
    </div>

    </form>
</body>
</html>
