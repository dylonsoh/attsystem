<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NameList.aspx.cs" Inherits="NameList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" style="width: 114px; height: 30px; position: absolute; left: 1022px; top: 200px" Text="Name :"></asp:Label>
    <asp:Label ID="Label7" runat="server" Font-Size="XX-Large" style="width: 114px; height: 30px; position: absolute; left: 1022px; top: 412px" Text="Student ID :"></asp:Label>
    <asp:TextBox ID="nameTextBox" runat="server" Font-Size="XX-Large" style="width: 260px; position: absolute; left: 1150px; top: 185px; height: 60px"></asp:TextBox>
    <asp:TextBox ID="studentIDTextBox" runat="server" Font-Size="XX-Large" style="width: 260px; position: absolute; left: 1150px; top: 385px; height: 60px"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" Font-Size="XX-Large" style="width: 104px; height: 30px; position: absolute; left: 1034px; top: 310px" Text="Class :"></asp:Label>
    <asp:DropDownList ID="classDropDownList" runat="server" Font-Size="XX-Large" Height="400px" style="width: 268px; height: 50px; position: absolute; left: 1152px; top: 300px" AutoPostBack="True" DataSourceID="classListPersons" DataTextField="Class_ID" DataValueField="Class_ID">
        <asp:ListItem>S1</asp:ListItem>
        <asp:ListItem>S2</asp:ListItem>
        <asp:ListItem>Alto</asp:ListItem>
        <asp:ListItem>Tenor</asp:ListItem>
        <asp:ListItem>Bass</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="classListPersons" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT DISTINCT [Class_ID] FROM [PersonalParticulars]"></asp:SqlDataSource>
    <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Italic="True" Font-Size="XX-Large" style="width: 865px; height: 39px; position: absolute; left: 205px; top: 664px" Text="Note :  Contact your admin if deletion or update is needed"></asp:Label>
    <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Italic="True" Font-Size="XX-Large" style="width: 865px; height: 84px; position: absolute; left: 205px; top: 724px" Text="Note :  Look at latest student ID and add 1 to the back, i.e Alto_08 after Alto_07"></asp:Label>
    <asp:Button ID="addPerson" runat="server" style="width: 197px; height: 44px; position: absolute; left: 1128px; top: 501px" Text="Add Person" Font-Bold="True" Font-Size="XX-Large" OnClick="addPerson_Click" />
    <asp:Button ID="updatePerson" runat="server" style="width: 233px; height: 44px; position: absolute; left: 1128px; top: 561px" Text="Update Person" Font-Bold="True" Font-Size="XX-Large" OnClick="updatePerson_Click" />
    <asp:Button ID="deletePerson" runat="server" style="width: 233px; height: 44px; position: absolute; left: 1128px; top: 631px" Text="Delete Person" Font-Bold="True" Font-Size="XX-Large" OnClick="deletePerson_Click" />
    <asp:ListBox ID="nameListBox" runat="server" AutoPostBack="True" Font-Bold="False" Font-Size="XX-Large" Font-Underline="True" style="width: 472px; height: 398px; position: absolute; left: 53px; top: 182px" DataSourceID="personsList" DataTextField="Name" DataValueField="Name"></asp:ListBox>
    <asp:ListBox ID="studentIDListBox" runat="server" AutoPostBack="True" Font-Bold="False" Font-Size="XX-Large" Font-Underline="True" style="width: 472px; height: 398px; position: absolute; left: 543px; top: 182px" DataSourceID="studentIDDataSource1" DataTextField="Student_ID" DataValueField="Student_ID"></asp:ListBox> 
    <asp:SqlDataSource ID="studentIDDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT [Student_ID] FROM [PersonalParticulars] WHERE ([Class_ID] = @Class_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="classDropDownList" Name="Class_ID" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="personsList" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT [Name] FROM [PersonalParticulars] WHERE ([Class_ID] = @Class_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="classDropDownList" Name="Class_ID" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" style="width: 161px; height: 36px; position: absolute; left: 50px; top: 100px" Text="Name List"></asp:Label>
    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="XX-Large" style="width: 161px; height: 63px; position: absolute; left: 550px; top: 100px" Text="Student ID"></asp:Label>

    </asp:Content>

