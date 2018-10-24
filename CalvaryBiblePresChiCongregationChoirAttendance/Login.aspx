<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calvary Jurong Chinese Congregation Choir Attendance System Login Page</title>
    <style type="text/css">
        .auto-style1 {
            width: 167px;
            height: 40px;
            position: relative;
            float: left;
            font-size: medium;
            left: -9px;
            top: -15px;
        }

        .auto-style2 {
            text-align: center;
            line-height: 200%;
        }

        .auto-style4 {
            text-align: left;
        }

        .auto-style6 {
            height: 96px;
            position: absolute;
            left: 650px;
            top: 250px;
            float: left;
            width: 373px;
        }

        .auto-style7 {
            width: 100px;
            height: 38px;
            position: absolute;
            left: 787px;
            top: 365px;
        }

        .auto-style8 {
            width: 181px;
            height: 33px;
            position: absolute;
            left: 472px;
            top: 442px;
        }

        .auto-style9 {
            font-size: xx-large;
            width: 159px;
            height: 32px;
            position: absolute;
            left: 477px;
            top: 518px;
        }

        .auto-style10 {
            width: 350px;
            height: 35px;
            position: absolute;
            left: 671px;
            top: 437px;
            font-weight: bold;
            font-size: xx-large;
        }

        .auto-style11 {
            width: 350px;
            height: 35px;
            position: absolute;
            left: 673px;
            top: 519px;
            font-size: xx-large;
        }

        .auto-style12 {
            width: 107px;
            height: 41px;
            position: absolute;
            left: 932px;
            top: 641px;
            font-size: xx-large;
        }

        .auto-style13 {
            width: 569px;
            height: 35px;
            position: absolute;
            left: 470px;
            top: 595px;
        }

        /*--- Fixed Background Image --*/
        figure {
            position: absolute;
            width: 100%;
            height: 100%;
            margin: 0 !important;
            top: 0px;
            left: 0px;
            z-index: -1;
        }

        .fixed-wrap {
            clip: rect(0, auto, auto, auto);
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 120%;
        }

        #fixed {
            background-image: url('img/CalvaryBackground.jpg');
            position: fixed;
            display: block;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-size: cover;
            background-position: center center;
            -webkit-transform: translateZ(0);
            transform: translateZ(0);
            will-change: transform;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style4">
            <div>
                <p class="auto-style2">
                    <asp:Label ID="Label3" runat="server" BorderStyle="Solid" BorderWidth="3px" CssClass="auto-style1" Font-Bold="True" Text="Login Page" Font-Size="XX-Large"></asp:Label>
                    <asp:Button ID="LoginButton" runat="server" CssClass="auto-style12" OnClick="LoginButton_Click" Text="Login" />
                    <asp:Label ID="Label4" runat="server" BackColor="#3399FF" CssClass="auto-style7" Font-Bold="True" Font-Size="XX-Large" Text="Log In"></asp:Label>
                    <asp:Label ID="Label5" runat="server" BackColor="#66CCFF" CssClass="auto-style8" Font-Bold="True" Font-Size="XX-Large" Text="User Name :"></asp:Label>
                    <strong>
                        <asp:Label ID="Label6" runat="server" BackColor="#33CCFF" CssClass="auto-style9" Text="Password :"></asp:Label>
                        <asp:TextBox ID="idBox" runat="server" CssClass="auto-style10"></asp:TextBox>
                    </strong>
                    <asp:Label ID="wrongPass" runat="server" CssClass="auto-style13" Font-Bold="True" Font-Size="XX-Large" Font-Strikeout="False" ForeColor="#FF3300" Text="Wrong Id Or Password, Please try again." Visible="False"></asp:Label>
                    <asp:TextBox ID="passwordBox" runat="server" CssClass="auto-style11" TextMode="Password"></asp:TextBox>
                    <asp:Label ID="CalvaryBP" runat="server" Text="Calvary Bible Presbyterian Church Chinese Congregation Choir Attendance System" BorderStyle="Solid" CssClass="auto-style6" Font-Bold="True" Font-Size="X-Large" BackColor="#3399FF"></asp:Label>
                </p>
            </div>
        </div>
    </form>

    <!--- Fixed background -->
    <figure>
        <div class="fixed-wrap">
            <div id="fixed">
            </div>
        </div>
    </figure>

</body>
</html>
