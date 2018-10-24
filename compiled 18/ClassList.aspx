<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ClassList.aspx.cs" Inherits="ClassList" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="BodyContent" runat="Server">

    <asp:Label ID="Label1" runat="server" Style="width: 131px; height: 26px; position: absolute; left: 22px; top: 131px" Text="Class List :" Font-Bold="True" Font-Size="X-Large"></asp:Label>
    <asp:Label ID="Label2" runat="server" Style="width: 67px; height: 40px; position: absolute; left: 452px; top: 139px" Text="Class Dates :" Font-Bold="True" Font-Size="Large"></asp:Label>


    <asp:Button ID="addClassButton2" runat="server" Style="width: 118px; height: 26px; position: absolute; left: 177px; top: 199px" Text="Add Class" Font-Bold="True" OnClick="addClassButton2_Click" />
    <asp:Button ID="deleteClassButton3" runat="server" Style="width: 118px; height: 26px; position: absolute; left: 178px; top: 311px" Text="Delete Class" OnClick="deleteClassButton3_Click" Font-Bold="True" />
    <asp:Button ID="updateClassButton4" runat="server" Style="width: 123px; height: 26px; position: absolute; left: 176px; top: 251px" Text="Update Class" Font-Bold="True" OnClick="updateClassButton4_Click" />
    <asp:TextBox ID="datesSelectedTextBox" runat="server" Style="width: 259px; height: 41px; position: absolute; left: 537px; top: 145px" Font-Bold="True" Font-Size="14pt"></asp:TextBox>

    <asp:GridView ID="referenceGridview" runat="server" Style="width: 375px; height: 318px; position: absolute; left: 616px; top: 708px; right: 848px;" DataSourceID="ReferenceDataSource" DataTextField="Date" DataValueField="Date" AutoPostBack="True" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" ShowHeaderWhenEmpty="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" SortExpression="Student_ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="ReferenceDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT DISTINCT [Class Attendance].Student_ID, PersonalParticulars.Name FROM [Class Attendance] INNER JOIN PersonalParticulars ON [Class Attendance].Class_ID = PersonalParticulars.Class_ID AND [Class Attendance].Student_ID = PersonalParticulars.Student_ID INNER JOIN Class ON PersonalParticulars.Class_ID = Class.Class_ID AND [Class Attendance].Date = Class.Date WHERE ([Class Attendance].Class_ID = @Class AND [Class Attendance].Date = @Date)">
        <SelectParameters>
            <asp:ControlParameter ControlID="classListBox" Name="Class" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="datesSelectedListBox" Name="Date" PropertyName="SelectedValue" Type="DateTime" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="datesSelectedLabel4" runat="server" Style="width: 125px; height: 30px; position: absolute; left: 642px; top: 648px" Text="Reference" Font-Bold="True" Font-Size="X-Large" BackColor="#FFCC00"></asp:Label>
    <asp:ListBox ID="classListBox" runat="server" Style="position: absolute; left: 28px; top: 194px; width: 132px; height: 151px;" AutoPostBack="True" DataSourceID="classListDataSource" DataTextField="Class_ID" DataValueField="Class_ID"></asp:ListBox>
    <asp:SqlDataSource ID="classListDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT DISTINCT Class_ID FROM PersonalParticulars"></asp:SqlDataSource>
    <asp:Label ID="songsPractised" runat="server" Font-Size="XX-Large" Style="width: 265px; height: 37px; position: absolute; left: 1301px; top: 38px; margin-top: 0px" Text="Songs Practised :"></asp:Label>
    <asp:Label ID="titleLabel1" runat="server" Font-Size="X-Large" Style="width: 91px; height: 29px; position: absolute; left: 1332px; top: 118px" Text="&lt; Title &gt;" BackColor="#FFCC00"></asp:Label>
    <asp:Label ID="sectionalLabel1" runat="server" Font-Size="X-Large" Style="width: 115px; height: 26px; position: absolute; left: 1379px; top: 152px; bottom: 499px" Text="Sectional" BackColor="#FFCC00"></asp:Label>
    <asp:BulletedList runat="server" Font-Size="X-Large" Style="width: 399px; height: 35px; position: absolute; left: 1350px; top: 179px" ID="sectional1" DataSourceID="sectionalTitleDataSource1" DataTextField="sectionalTitle1" DataValueField="sectionalTitle1" BackColor="#99FF66" RenderWhenDataEmpty="True"></asp:BulletedList>
    <asp:SqlDataSource ID="sectionalTitleDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT [sectionalTitle1] FROM [Class] WHERE (([Class_ID] = @Class_ID) AND ([Date] = @Date))">
        <SelectParameters>
            <asp:ControlParameter ControlID="classListBox" Name="Class_ID" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="datesSelectedListBox" Name="Date" PropertyName="SelectedValue" Type="DateTime" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="combinedLabel1" runat="server" Font-Size="X-Large" Style="width: 125px; height: 27px; position: absolute; left: 1387px; top: 241px" Text="Combined" BackColor="#FFCC00"></asp:Label>
    <asp:BulletedList ID="combined1" runat="server" Font-Size="X-Large" Style="width: 400px; height: 35px; position: absolute; left: 1350px; top: 270px" DataSourceID="combinedTitleDataSource1" DataTextField="combinedTitle1" DataValueField="combinedTitle1" BackColor="#99FF66" RenderWhenDataEmpty="True"></asp:BulletedList>
    <asp:SqlDataSource ID="combinedTitleDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT [combinedTitle1] FROM [Class] WHERE (([Class_ID] = @Class_ID) AND ([Date] = @Date))">
        <SelectParameters>
            <asp:ControlParameter ControlID="classListBox" Name="Class_ID" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="datesSelectedListBox" Name="Date" PropertyName="SelectedValue" Type="DateTime" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="titleLabel2" runat="server" Font-Size="X-Large" Style="width: 91px; height: 25px; position: absolute; left: 1331px; top: 333px" Text="&lt; Title &gt;" BackColor="#FFCC00"></asp:Label>
    <asp:Label ID="sectionalLabel2" runat="server" Font-Size="X-Large" Style="width: 121px; height: 24px; position: absolute; left: 1386px; top: 365px" Text="Sectional" BackColor="#FFCC00"></asp:Label>
    <asp:BulletedList ID="sectional2" runat="server" Font-Size="X-Large" Style="width: 400px; height: 35px; position: absolute; left: 1350px; top: 393px" DataSourceID="sectionalTitleDataSource2" DataTextField="sectionalTitle2" DataValueField="sectionalTitle2" BackColor="#99FF66" RenderWhenDataEmpty="True"></asp:BulletedList>
    <asp:SqlDataSource ID="sectionalTitleDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT [sectionalTitle2] FROM [Class] WHERE (([Class_ID] = @Class_ID) AND ([Date] = @Date))">
        <SelectParameters>
            <asp:ControlParameter ControlID="classListBox" Name="Class_ID" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="datesSelectedListBox" Name="Date" PropertyName="SelectedValue" Type="DateTime" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="combinedTitleDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT [combinedTitle2] FROM [Class] WHERE (([Class_ID] = @Class_ID) AND ([Date] = @Date))">
        <SelectParameters>
            <asp:ControlParameter ControlID="classListBox" Name="Class_ID" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="datesSelectedListBox" Name="Date" PropertyName="SelectedValue" Type="DateTime" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:BulletedList ID="combined2" runat="server" Font-Size="X-Large" Style="width: 400px; height: 35px; position: absolute; left: 1350px; top: 478px" DataSourceID="combinedTitleDataSource2" DataTextField="combinedTitle2" DataValueField="combinedTitle2" BackColor="#99FF66" RenderWhenDataEmpty="True"></asp:BulletedList>
    <asp:Label ID="titleLabel3" runat="server" Font-Size="X-Large" Style="width: 98px; height: 28px; position: absolute; left: 1327px; top: 541px" Text="&lt; Title &gt;" BackColor="#FFCC00"></asp:Label>
    <asp:Label ID="sectionalLabel3" runat="server" Font-Size="X-Large" Style="width: 120px; height: 26px; position: absolute; left: 1388px; top: 572px; margin-top: 1px" Text="Sectional" BackColor="#FFCC00"></asp:Label>
    <asp:BulletedList ID="sectional3" runat="server" Font-Size="X-Large" Style="width: 400px; height: 35px; position: absolute; left: 1350px; top: 600px" DataSourceID="sectionalTitleDataSource3" DataTextField="sectionalTitle3" DataValueField="sectionalTitle3" BackColor="#99FF66" RenderWhenDataEmpty="True"></asp:BulletedList>
    <asp:SqlDataSource ID="sectionalTitleDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT [sectionalTitle3] FROM [Class] WHERE (([Class_ID] = @Class_ID) AND ([Date] = @Date))">
        <SelectParameters>
            <asp:ControlParameter ControlID="classListBox" Name="Class_ID" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="datesSelectedListBox" Name="Date" PropertyName="SelectedValue" Type="DateTime" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="combinedLabel3" runat="server" Font-Size="X-Large" Style="width: 139px; height: 26px; position: absolute; left: 1391px; top: 660px" Text="Combined" BackColor="#FFCC00"></asp:Label>
    <asp:Label ID="combinedLabel2" runat="server" Font-Size="X-Large" Style="width: 126px; height: 30px; position: absolute; left: 1390px; top: 445px" Text="Combined" BackColor="#FFCC00"></asp:Label>
    <asp:BulletedList ID="combined3" runat="server" Font-Size="X-Large" Style="width: 400px; height: 35px; position: absolute; left: 1350px; top: 688px" DataSourceID="combinedTitleDataSource3" DataTextField="combinedTitle3" DataValueField="combinedTitle3" BackColor="#99FF66" RenderWhenDataEmpty="True"></asp:BulletedList>
    <asp:SqlDataSource ID="combinedTitleDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT [combinedTitle3] FROM [Class] WHERE (([Class_ID] = @Class_ID) AND ([Date] = @Date))">
        <SelectParameters>
            <asp:ControlParameter ControlID="classListBox" Name="Class_ID" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="datesSelectedListBox" Name="Date" PropertyName="SelectedValue" Type="DateTime" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="titleLabel4" runat="server" Font-Size="X-Large" Style="width: 98px; height: 28px; position: absolute; left: 1322px; top: 740px" Text="&lt; Title &gt;" BackColor="#FFCC00"></asp:Label>
    <asp:Label ID="sectionalLabel4" runat="server" Font-Size="X-Large" Style="width: 129px; height: 33px; position: absolute; left: 1384px; top: 777px; margin-top: 1px" Text="Sectional" BackColor="#FFCC00"></asp:Label>
    <asp:BulletedList ID="sectional4" runat="server" Font-Size="X-Large" Style="width: 400px; height: 35px; position: absolute; left: 1350px; top: 820px" DataSourceID="sectionalTitleDataSource4" DataTextField="sectionalTitle4" DataValueField="sectionalTitle4" BackColor="#99FF66" RenderWhenDataEmpty="True"></asp:BulletedList>
    <asp:SqlDataSource ID="sectionalTitleDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT [sectionalTitle4] FROM [Class] WHERE (([Class_ID] = @Class_ID) AND ([Date] = @Date))">
        <SelectParameters>
            <asp:ControlParameter ControlID="classListBox" Name="Class_ID" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="datesSelectedListBox" Name="Date" PropertyName="SelectedValue" Type="DateTime" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="combinedLabel4" runat="server" Font-Size="X-Large" Style="width: 130px; height: 27px; position: absolute; left: 1390px; top: 858px" Text="Combined" BackColor="#FFCC00"></asp:Label>
    <asp:BulletedList ID="combined4" runat="server" Font-Size="X-Large" Style="width: 400px; height: 35px; position: absolute; left: 1350px; top: 888px" DataSourceID="combinedTitleDataSource4" DataTextField="combinedTitle4" DataValueField="combinedTitle4" BackColor="#99FF66" RenderWhenDataEmpty="True"></asp:BulletedList>
    <asp:SqlDataSource ID="combinedTitleDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT [combinedTitle4] FROM [Class] WHERE (([Class_ID] = @Class_ID) AND ([Date] = @Date))">
        <SelectParameters>
            <asp:ControlParameter ControlID="classListBox" Name="Class_ID" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="datesSelectedListBox" Name="Date" PropertyName="SelectedValue" Type="DateTime" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:TextBox runat="server" Font-Size="X-Large" Style="width: 320px; height: 35px; position: absolute; left: 1010px; top: 190px" ID="sectionalTitleText1">sectional title 1</asp:TextBox>
    <asp:TextBox ID="combinedTitleText1" runat="server" Font-Size="X-Large" Style="width: 320px; height: 35px; position: absolute; left: 1010px; top: 270px">combined title 1</asp:TextBox>
    <asp:TextBox ID="sectionalTitleText2" runat="server" Font-Size="X-Large" Style="width: 320px; height: 35px; position: absolute; left: 1010px; top: 403px">sectional title 2</asp:TextBox>
    <asp:TextBox ID="combinedTitleText2" runat="server" Font-Size="X-Large" Style="width: 320px; height: 35px; position: absolute; left: 1011px; top: 498px">combined title 2</asp:TextBox>
    <asp:TextBox ID="sectionalTitleText3" runat="server" Font-Size="X-Large" Style="width: 320px; height: 35px; position: absolute; left: 1013px; top: 614px">sectional title 3</asp:TextBox>
    <asp:TextBox ID="combinedTitleText3" runat="server" Font-Size="X-Large" Style="width: 320px; height: 35px; position: absolute; left: 1013px; top: 697px">combined title 3</asp:TextBox>
    <asp:TextBox ID="sectionalTitleText4" runat="server" Font-Size="X-Large" Style="width: 320px; height: 35px; position: absolute; left: 1012px; top: 808px">sectional title 4</asp:TextBox>
    <asp:TextBox ID="combinedTitleText4" runat="server" Font-Size="X-Large" Style="width: 320px; height: 35px; position: absolute; left: 1010px; top: 898px">combined title 4</asp:TextBox>


    <asp:ListBox ID="datesSelectedListBox" runat="server" Style="position: absolute; top: 370px; left: 10px; height: 556px; width: 264px;" AutoPostBack="True" DataSourceID="datesSelectedDataSource" DataTextField="Date" DataValueField="Date" OnSelectedIndexChanged="datesSelectedListBox_SelectedIndexChanged"></asp:ListBox>


    <asp:SqlDataSource ID="datesSelectedDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT Date FROM Class WHERE (Class_ID = @Class)">
        <SelectParameters>
            <asp:ControlParameter ControlID="classListBox" Name="Class" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>


    <asp:ListBox ID="peopleList" runat="server" Style="height: 153px; width: 164px; position: absolute; left: 292px; top: 367px" BackColor="Aqua" BorderColor="Black" BorderStyle="Dotted" BorderWidth="2px" AllowSorting="True" AutoGenerateColumns="False" AutoPostBack="True" DataSourceID="AttDataSource" DataTextField="Student_ID" DataValueField="Student_ID"></asp:ListBox>
    <asp:GridView ID="peopleNameList" runat="server" Style="height: 153px; width: 164px; position: absolute; left: 472px; top: 365px" BackColor="Aqua" BorderColor="Black" BorderStyle="Dotted" BorderWidth="2px" AutoGenerateColumns="False" DataSourceID="pplNameListDataSource" ShowHeaderWhenEmpty="True">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="pplNameListDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT [Name] FROM [PersonalParticulars] WHERE ([Class_ID] = @Class_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="classListBox" Name="Class_ID" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="AttDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Calvary AttendanceConnectionString3 %>" SelectCommand="SELECT [Student_ID] FROM [PersonalParticulars] WHERE ([Class_ID] = @Class_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="classListBox" Name="Class_ID" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Button ID="PeopleAdder" runat="server" Style="width: 112px; height: 26px; position: absolute; left: 408px; top: 195px" Text="Add Person" Font-Bold="True" OnClick="PeopleAdder_Click" />
    <asp:Button ID="PeopleDeleter" runat="server" Style="width: 126px; height: 26px; position: absolute; left: 407px; top: 239px" Text="Delete Person" Font-Bold="True" OnClick="PeopleDeleter_Click" />
    <asp:Label ID="peopleLabel" runat="server" Style="width: 72px; height: 50px; position: absolute; left: 322px; top: 179px" Text="People coming" Font-Bold="True" Font-Size="Large" BackColor="#FFCC00"></asp:Label>
    <asp:Label ID="PersonNote" runat="server" Style="width: 285px; height: 174px; position: absolute; left: 302px; top: 863px; bottom: 9px;" Text="To Facilitate addition and removal of multiple persons using selection</br>The auto-refresh function has been disabled</br>Kindly refresh after every update</br>Thank you" Font-Bold="True" Font-Size="Medium" BackColor="Lime" BorderColor="Black" BorderStyle="Dashed" BorderWidth="3px"></asp:Label>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="Head">
    <link href="style.css" rel="stylesheet" type="text/css" />
</asp:Content>


