<%@ Page Language="C#" AutoEventWireup="true" CodeFile="项目成员表.aspx.cs" Inherits="项目成员表" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/工资管理.mdb" 
            DeleteCommand="DELETE FROM [项目成员表] WHERE (([项目ID] = ?) OR ([项目ID] IS NULL AND ? IS NULL)) AND (([成员ID] = ?) OR ([成员ID] IS NULL AND ? IS NULL))" 
            InsertCommand="INSERT INTO [项目成员表] ([项目ID], [成员ID], [任务], [提成比例]) VALUES (?, ?, ?, ?)" 
            SelectCommand="SELECT [项目ID], [成员ID], [任务], [提成比例] FROM [项目成员表]" 
            UpdateCommand="UPDATE [项目成员表] SET [任务] = ?, [提成比例] = ? WHERE (([项目ID] = ?) OR ([项目ID] IS NULL AND ? IS NULL)) AND (([成员ID] = ?) OR ([成员ID] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="项目ID" Type="Int32" />
                <asp:Parameter Name="成员ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="项目ID" Type="Int32" />
                <asp:Parameter Name="成员ID" Type="Int32" />
                <asp:Parameter Name="任务" Type="String" />
                <asp:Parameter Name="提成比例" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="任务" Type="String" />
                <asp:Parameter Name="提成比例" Type="Double" />
                <asp:Parameter Name="项目ID" Type="Int32" />
                <asp:Parameter Name="成员ID" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="项目ID,成员ID" DataSourceID="AccessDataSource1" ForeColor="#333333" 
        GridLines="None" PageSize="8">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="项目ID" HeaderText="项目ID" ReadOnly="True" 
                SortExpression="项目ID" />
            <asp:BoundField DataField="成员ID" HeaderText="成员ID" ReadOnly="True" 
                SortExpression="成员ID" />
            <asp:BoundField DataField="任务" HeaderText="任务" SortExpression="任务" />
            <asp:BoundField DataField="提成比例" HeaderText="提成比例" SortExpression="提成比例" />
            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
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
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
        DataFile="~/App_Data/工资管理.mdb" 
        DeleteCommand="DELETE FROM [项目成员表] WHERE (([项目ID] = ?) OR ([项目ID] IS NULL AND ? IS NULL)) AND (([成员ID] = ?) OR ([成员ID] IS NULL AND ? IS NULL))" 
        InsertCommand="INSERT INTO [项目成员表] ([项目ID], [任务], [成员ID], [提成比例]) VALUES (?, ?, ?, ?)" 
        SelectCommand="SELECT [项目ID], [任务], [成员ID], [提成比例] FROM [项目成员表]" 
        UpdateCommand="UPDATE [项目成员表] SET [任务] = ?, [提成比例] = ? WHERE (([项目ID] = ?) OR ([项目ID] IS NULL AND ? IS NULL)) AND (([成员ID] = ?) OR ([成员ID] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="项目ID" Type="Int32" />
            <asp:Parameter Name="成员ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="项目ID" Type="Int32" />
            <asp:Parameter Name="任务" Type="String" />
            <asp:Parameter Name="成员ID" Type="Int32" />
            <asp:Parameter Name="提成比例" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="任务" Type="String" />
            <asp:Parameter Name="提成比例" Type="Double" />
            <asp:Parameter Name="项目ID" Type="Int32" />
            <asp:Parameter Name="成员ID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
        AutoGenerateRows="False" CellPadding="4" DataKeyNames="项目ID,成员ID" 
        DataSourceID="AccessDataSource2" ForeColor="#333333" GridLines="None" 
        Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="项目ID" HeaderText="项目ID" ReadOnly="True" 
                SortExpression="项目ID" />
            <asp:BoundField DataField="任务" HeaderText="任务" SortExpression="任务" />
            <asp:BoundField DataField="成员ID" HeaderText="成员ID" ReadOnly="True" 
                SortExpression="成员ID" />
            <asp:BoundField DataField="提成比例" HeaderText="提成比例" SortExpression="提成比例" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    </asp:DetailsView>
    </form>
</body>
</html>
