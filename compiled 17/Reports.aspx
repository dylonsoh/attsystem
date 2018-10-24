<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Reports.aspx.cs" Inherits="Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" style="width: 1498px; height: 800px; position: absolute; left: 14px; top: 59px" AllowSorting="True" DataSourceID="reportDataSource" BackColor="White" PageSize="50" AllowPaging="True" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" SortExpression="Student_ID" />
            <asp:CheckBoxField DataField="Attend" HeaderText="Attend" SortExpression="Attend" >
            <ControlStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Height="20px" Width="20px" />
            <ItemStyle ForeColor="#FF3300" HorizontalAlign="Center" />
            </asp:CheckBoxField>
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
        </Columns>
        <PagerSettings Position="TopAndBottom" />
    </asp:GridView>
    <asp:SqlDataSource ID="reportDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT PersonalParticulars.Name, [Class Attendance].Student_ID, [Class Attendance].Attend, [Class Attendance].Date FROM PersonalParticulars CROSS JOIN [Class Attendance]
WHERE PersonalParticulars.Student_ID = [Class Attendance].Student_ID"></asp:SqlDataSource>
</asp:Content>

