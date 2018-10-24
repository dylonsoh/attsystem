<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogOut.aspx.cs" Inherits="LogOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            line-height: 200%;
        }
        .auto-style7 {
            text-align: left;
        }
        .style4
        {
            width: 100%;
        }
        .auto-style4 {
            width: 600px;
            height: 26px;
            position: absolute;
            left: 10px;
            top: 25px;
        }
        .auto-style5 {
            width: 550px;
            height: 26px;
            position: absolute;
            left: 13px;
            top: 121px;
        }
        .auto-style6 {
            height: 23px;
        }
         
        .auto-style8 {
            z-index: -1;
            position: relative;
            float: left;
           /* width: 1675px;
            height: 940px;
            left: 1px;
            top: 1px;
            right: 1px;
            bottom: 1px;*/
           width : 100%;
           height: 100%;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style7">
        <div>
            <p class="auto-style2">
                <asp:Image ID="Image1" runat="server" CssClass="auto-style8" ImageUrl="~/CalvaryBackground.jpg" />
            </p>
        </div>
        </div>
    </form>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large"
            Text="Thank you for visiting Calvary Bible Presbyterian Church Chinese Congregation Choir Attendance System" CssClass="auto-style4"></asp:Label>
        <table align="center" class="style4">
            <tr>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large"
                        Text="Please wait while we  redirect you to our Login Page..." CssClass="auto-style5"></asp:Label>
                </td>
            </tr>
        </table>
</body>
</html>

