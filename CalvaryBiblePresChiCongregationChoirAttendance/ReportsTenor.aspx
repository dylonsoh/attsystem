<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ReportsTenor.aspx.cs" Inherits="Reports" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="BodyContent" runat="Server">
    <asp:Chart ID="Chart1" runat="server" DataSourceID="personAttendanceDataSource" Style="z-index: 1; left: 60px; top: 145px; position: absolute">
        <Series>
            <asp:Series Name="Series1">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    <asp:SqlDataSource ID="personAttendanceDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>">
        <SelectParameters>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


