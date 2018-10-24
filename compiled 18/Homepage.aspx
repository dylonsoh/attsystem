<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<%-- Add content controls here --%>
<asp:Content ID="BodyContent" runat="server" contentplaceholderid="BodyContent">

    <asp:SqlDataSource ID="calvaryAttendanceDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT DISTINCT Class_ID FROM PersonalParticulars"></asp:SqlDataSource>
    <asp:SqlDataSource ID="songSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT [sectionalTitle1] FROM [Class] WHERE (([Date] = @Date) AND ([Class_ID] = @Class_ID))">
        <SelectParameters>
            <asp:ControlParameter ControlID="songCalendar" DbType="Date" Name="Date" PropertyName="SelectedDate" />
            <asp:ControlParameter ControlID="classPickedDropDownList" Name="Class_ID" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="songSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT [combinedTitle1] FROM [Class] WHERE (([Date] = @Date) AND ([Class_ID] = @Class_ID))">
        <SelectParameters>
            <asp:ControlParameter ControlID="songCalendar" DbType="Date" Name="Date" PropertyName="SelectedDate" />
            <asp:ControlParameter ControlID="classPickedDropDownList" Name="Class_ID" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        </asp:SqlDataSource>
    <asp:SqlDataSource ID="songSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT [sectionalTitle2] FROM [Class] WHERE (([Date] = @Date) AND ([Class_ID] = @Class_ID))">
        <SelectParameters>
            <asp:ControlParameter ControlID="songCalendar" DbType="Date" Name="Date" PropertyName="SelectedDate" />
            <asp:ControlParameter ControlID="classPickedDropDownList" Name="Class_ID" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="songSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT [combinedTitle2] FROM [Class] WHERE (([Class_ID] = @Class_ID) AND ([Date] = @Date))">
        <SelectParameters>
            <asp:ControlParameter ControlID="classPickedDropDownList" Name="Class_ID" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="songCalendar" DbType="Date" Name="Date" PropertyName="SelectedDate" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="songSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT [sectionalTitle3] FROM [Class] WHERE (([Class_ID] = @Class_ID) AND ([Date] = @Date))">
        <SelectParameters>
            <asp:ControlParameter ControlID="classPickedDropDownList" Name="Class_ID" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="songCalendar" DbType="Date" Name="Date" PropertyName="SelectedDate" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="songSource6" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT [combinedTitle3] FROM [Class] WHERE (([Class_ID] = @Class_ID) AND ([Date] = @Date))">
        <SelectParameters>
            <asp:ControlParameter ControlID="classPickedDropDownList" Name="Class_ID" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="songCalendar" DbType="Date" Name="Date" PropertyName="SelectedDate" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="songSource7" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT [sectionalTitle4] FROM [Class] WHERE (([Class_ID] = @Class_ID) AND ([Date] = @Date))">
        <SelectParameters>
            <asp:ControlParameter ControlID="classPickedDropDownList" Name="Class_ID" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="songCalendar" DbType="Date" Name="Date" PropertyName="SelectedDate" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="songSource8" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT [combinedTitle4] FROM [Class] WHERE (([Class_ID] = @Class_ID) AND ([Date] = @Date))">
        <SelectParameters>
            <asp:ControlParameter ControlID="classPickedDropDownList" Name="Class_ID" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="songCalendar" DbType="Date" Name="Date" PropertyName="SelectedDate" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="AttDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT PersonalParticulars.Name, [Class Attendance].Student_ID, [Class Attendance].Attend FROM PersonalParticulars INNER JOIN [Class Attendance] ON PersonalParticulars.Student_ID = [Class Attendance].Student_ID AND PersonalParticulars.Class_ID = [Class Attendance].Class_ID WHERE ([Class Attendance].Class_ID = @Class_ID) AND ([Class Attendance].Date = @Date)">
        <SelectParameters>
            <asp:ControlParameter ControlID="classPickedDropDownList" Name="Class_ID" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="songCalendar" Name="Date" PropertyName="SelectedDate" Type="DateTime" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:Button ID="updateAttendance" runat="server" Text="Update Attendance" Style=" top:687px; left:20px; position : absolute;" BorderColor="#3399FF" BorderStyle="Solid" BorderWidth="5px" Font-Bold="True" OnClick="updateAttendance_Click" />

    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" style="width: 202px; height: 32px; position: absolute; left: 305px; top: 126px" Text="Select Date :"></asp:Label>
    <asp:Label ID="Label3" runat="server" Font-Size="XX-Large" style="width: 240px; height: 23px; position: absolute; left: 634px; top: 40px" Text="Attendance For :"></asp:Label>
    <asp:Label ID="Label4" runat="server" Font-Size="XX-Large" style="width: 265px; height: 37px; position: absolute; left: 1121px; top: 148px; margin-top: 0px" Text="Songs Practised :"></asp:Label>
    <asp:Label ID="Label5" runat="server" Font-Size="X-Large" style="width: 96px; height: 40px; position: absolute; left: 962px; top: 148px" Text="&lt; Title &gt;" BackColor="Yellow" BorderColor="Black" BorderStyle="Dotted" BorderWidth="5px"></asp:Label>
    <asp:Label ID="Label6" runat="server" Font-Size="X-Large" style="width: 125px; height: 36px; position: absolute; left: 989px; top: 202px; bottom: 442px" Text="Sectional" BackColor="Yellow" BorderColor="Black" BorderStyle="Dotted" BorderWidth="5px"></asp:Label>
    <asp:Label ID="Label7" runat="server" Font-Size="X-Large" style="width: 141px; height: 43px; position: absolute; left: 1027px; top: 291px" Text="Combined" BackColor="Yellow" BorderColor="Black" BorderStyle="Dotted" BorderWidth="5px"></asp:Label>
    <asp:Label ID="Label8" runat="server" Font-Size="X-Large" style="width: 98px; height: 36px; position: absolute; left: 976px; top: 392px" Text="&lt; Title &gt;" BackColor="Yellow" BorderColor="Black" BorderStyle="Dotted" BorderWidth="5px"></asp:Label>
    <asp:Label ID="Label9" runat="server" Font-Size="X-Large" style="width: 114px; height: 36px; position: absolute; left: 1008px; top: 439px" Text="Sectional" BackColor="Yellow" BorderColor="Black" BorderStyle="Dotted" BorderWidth="5px"></asp:Label>
    <asp:Label ID="Label10" runat="server" Font-Size="X-Large" style="width: 132px; height: 35px; position: absolute; left: 1030px; top: 523px" Text="Combined" BackColor="Yellow" BorderColor="Black" BorderStyle="Dotted" BorderWidth="5px"></asp:Label>
    <asp:Label ID="Label11" runat="server" Font-Size="X-Large" style="width: 106px; height: 36px; position: absolute; left: 972px; top: 611px" Text="&lt; Title &gt;" BackColor="Yellow" BorderColor="Black" BorderStyle="Dotted" BorderWidth="5px"></asp:Label>
    <asp:Label ID="Label12" runat="server" Font-Size="X-Large" style="width: 125px; height: 39px; position: absolute; left: 1004px; top: 894px; margin-top: 1px" Text="Sectional" BackColor="Yellow" BorderColor="Black" BorderStyle="Dotted" BorderWidth="5px"></asp:Label>
    <asp:Label ID="Label13" runat="server" Font-Size="X-Large" style="width: 140px; height: 38px; position: absolute; left: 1029px; top: 734px" Text="Combined" BackColor="Yellow" BorderColor="Black" BorderStyle="Dotted" BorderWidth="5px"></asp:Label>
    <asp:Label ID="Label14" runat="server" Font-Size="X-Large" style="width: 105px; height: 38px; position: absolute; left: 962px; top: 843px" Text="&lt; Title &gt;" BackColor="Yellow" BorderColor="Black" BorderStyle="Dotted" BorderWidth="5px"></asp:Label>
    <asp:Label ID="Label15" runat="server" Font-Size="X-Large" style="width: 128px; height: 37px; position: absolute; left: 1008px; top: 647px; margin-top: 1px" Text="Sectional" BackColor="Yellow" BorderColor="Black" BorderStyle="Dotted" BorderWidth="5px"></asp:Label>
    <asp:Label ID="Label16" runat="server" Font-Size="X-Large" style="width: 139px; height: 37px; position: absolute; left: 1001px; top: 999px" Text="Combined" BackColor="Yellow" BorderColor="Black" BorderStyle="Dotted" BorderWidth="5px"></asp:Label>
    <asp:Label ID="Label17" runat="server" style =" top : 720px; left : 20px; position :absolute; height: 76px; width: 451px;" BackColor="#33CCFF" Font-Bold="True">Watch here for update success</asp:Label>

    <asp:GridView ID="GridViewAttend" runat="server" Style="position: absolute; left: 535px; top: 193px; height: 309px; width: 328px;" AutoGenerateColumns="False" DataSourceID="AttDataSource5" AllowCustomPaging="True" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" ShowHeaderWhenEmpty="True" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" SortExpression="Student_ID" />
            <asp:TemplateField HeaderText="Update Attendance">
                <ItemTemplate>
                    <asp:CheckBox ID="Attend" runat="server" TextAlign="Left" AutoPostBack="True" />
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:CheckBoxField DataField="Attend" HeaderText="Current Attend" ReadOnly="True" SortExpression="Attend" />
        </Columns>
    </asp:GridView>
    
    <asp:DropDownList ID="classPickedDropDownList" runat="server" AutoPostBack="True" Font-Size="XX-Large" style="width: 275px; height: 37px; position: absolute; left: 632px; top: 134px" DataSourceID="calvaryAttendanceDataSource1" DataTextField="Class_ID" DataValueField="Class_ID">
    <asp:ListItem>S1</asp:ListItem>
    <asp:ListItem>S2</asp:ListItem>
    <asp:ListItem>Alto</asp:ListItem>
    <asp:ListItem>Tenor</asp:ListItem>
    <asp:ListItem>Bass</asp:ListItem>
    </asp:DropDownList>

    <asp:BulletedList ID="sectionalTitleDisplay1" runat="server" DataSourceID="songSource1" DataTextField="sectionalTitle1" DataValueField="sectionalTitle1" style="width: 624px; height: 40px; position: absolute; left: 1010px; top: 252px; margin-top: 0px" RenderWhenDataEmpty="True" BackColor="Yellow" BorderColor="Black" BorderStyle="Dotted" BorderWidth="5px" Font-Bold="True" Font-Size="X-Large"></asp:BulletedList>
    <asp:BulletedList ID="combinedTitleDisplay1" runat="server" style="width: 625px; height: 38px; position: absolute; left: 1010px; top: 343px" ReadOnly="True" DataSourceID="songSource2" DataTextField="combinedTitle1" DataValueField="combinedTitle1" RenderWhenDataEmpty="True" BackColor="Yellow" BorderColor="Black" BorderStyle="Dotted" BorderWidth="5px" Font-Bold="True" Font-Size="X-Large"></asp:BulletedList>
    <asp:BulletedList ID="sectionalTitleDisplay2" runat="server" style="width: 625px; height: 43px; position: absolute; left: 1010px; top: 475px" ReadOnly="True" DataSourceID="songSource3" DataTextField="sectionalTitle2" DataValueField="sectionalTitle2" RenderWhenDataEmpty="True" BackColor="Yellow" BorderColor="Black" BorderStyle="Dotted" BorderWidth="5px" Font-Bold="True" Font-Size="X-Large"></asp:BulletedList>
    <asp:BulletedList ID="combinedTitleDisplay2" runat="server" style="width: 623px; height: 42px; position: absolute; left: 1010px; top: 568px" ReadOnly="True" DataSourceID="songSource4" DataTextField="combinedTitle2" DataValueField="combinedTitle2" RenderWhenDataEmpty="True" BackColor="Yellow" BorderColor="Black" BorderStyle="Dotted" BorderWidth="5px" Font-Bold="True" Font-Size="X-Large"></asp:BulletedList>
    <asp:BulletedList ID="sectionalTitleDisplay3" runat="server" style="width: 620px; height: 43px; position: absolute; left: 1010px; top: 692px" ReadOnly="True" DataSourceID="songSource5" DataTextField="sectionalTitle3" DataValueField="sectionalTitle3" RenderWhenDataEmpty="True" BackColor="Yellow" BorderColor="Black" BorderStyle="Dotted" BorderWidth="5px" Font-Bold="True" Font-Size="X-Large"></asp:BulletedList>
    <asp:BulletedList ID="combinedTitleDisplay3" runat="server" style="width: 624px; height: 44px; position: absolute; left: 1010px; top: 784px" ReadOnly="True" DataSourceID="songSource6" DataTextField="combinedTitle3" DataValueField="combinedTitle3" RenderWhenDataEmpty="True" BackColor="Yellow" BorderColor="Black" BorderStyle="Dotted" BorderWidth="5px" Font-Bold="True" Font-Size="X-Large"></asp:BulletedList>
    <asp:BulletedList ID="sectionalTitleDisplay4" runat="server" style="width: 626px; height: 45px; position: absolute; left: 1010px; top: 950px" ReadOnly="True" DataSourceID="songSource7" DataTextField="sectionalTitle4" DataValueField="sectionalTitle4" RenderWhenDataEmpty="True" BackColor="Yellow" BorderColor="Black" BorderStyle="Dotted" BorderWidth="5px" Font-Bold="True" Font-Size="X-Large"></asp:BulletedList>
    <asp:BulletedList ID="combinedTitleDisplay4" runat="server" style="width: 625px; height: 45px; position: absolute; left: 1010px; top: 1063px" ReadOnly="True" DataSourceID="songSource8" DataTextField="combinedTitle4" DataValueField="combinedTitle4" RenderWhenDataEmpty="True" BackColor="Yellow" BorderColor="Black" BorderStyle="Dotted" BorderWidth="5px" Font-Bold="True" Font-Size="X-Large"></asp:BulletedList>

    <asp:Calendar ID="songCalendar" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" NextPrevFormat="FullMonth" style="position: absolute; left: 15px; top: 169px; color: #000000; height: 500px; width: 500px; border: 4px solid #000000" ShowGridLines="True">
    <DayHeaderStyle Font-Bold="True" Font-Size="Medium" ForeColor="#333333" Height="8pt" />
    <DayStyle BackColor="#CCCCCC" Font-Size="XX-Large" />
    <NextPrevStyle Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="White" />
    <OtherMonthDayStyle Font-Size="X-Large" ForeColor="#999999" />
    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
    <SelectorStyle Font-Size="XX-Large" />
    <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="12pt" />
    <TodayDayStyle BackColor="#999999" Font-Size="X-Large" ForeColor="White" />
    <WeekendDayStyle BorderStyle="Solid" />
</asp:Calendar>

</asp:Content>