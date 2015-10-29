<%@ Page Language="C#" AutoEventWireup="true" CodeFile="编辑员工表.aspx.cs" Inherits="编辑员工表" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/工资管理.mdb" 
        DeleteCommand="DELETE FROM [员工表] WHERE (([EID] = ?) OR ([EID] IS NULL AND ? IS NULL))" 
        InsertCommand="INSERT INTO [员工表] ([EID], [姓名], [性别], [所属部门ID], [职务], [工资等级], [奖金], [分红]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" 
        SelectCommand="SELECT [EID], [姓名], [性别], [所属部门ID], [职务], [工资等级], [奖金], [分红] FROM [员工表]" 
        
        UpdateCommand="UPDATE [员工表] SET [姓名] = ?, [性别] = ?, [所属部门ID] = ?, [职务] = ?, [工资等级] = ?, [奖金] = ?, [分红] = ? WHERE (([EID] = ?) OR ([EID] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="EID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="EID" Type="Int32" />
            <asp:Parameter Name="姓名" Type="String" />
            <asp:Parameter Name="性别" Type="Boolean" />
            <asp:Parameter Name="所属部门ID" Type="Int32" />
            <asp:Parameter Name="职务" Type="String" />
            <asp:Parameter Name="工资等级" Type="String" />
            <asp:Parameter Name="奖金" Type="Decimal" />
            <asp:Parameter Name="分红" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="姓名" Type="String" />
            <asp:Parameter Name="性别" Type="Boolean" />
            <asp:Parameter Name="所属部门ID" Type="Int32" />
            <asp:Parameter Name="职务" Type="String" />
            <asp:Parameter Name="工资等级" Type="String" />
            <asp:Parameter Name="奖金" Type="Decimal" />
            <asp:Parameter Name="分红" Type="Decimal" />
            <asp:Parameter Name="EID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="EID" DataSourceID="AccessDataSource1" ForeColor="#333333" 
        GridLines="None" onprerender="GridView1_PreRender" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="7" 
        Width="500px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="EID" HeaderText="EID" ReadOnly="True" 
                SortExpression="EID" />
            <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
            <asp:CheckBoxField DataField="性别" HeaderText="性别" SortExpression="性别" />
            <asp:BoundField DataField="所属部门ID" HeaderText="所属部门ID" 
                SortExpression="所属部门ID" />
            <asp:BoundField DataField="职务" HeaderText="职务" SortExpression="职务" />
            <asp:BoundField DataField="工资等级" HeaderText="工资等级" SortExpression="工资等级" />
            <asp:BoundField DataField="奖金" HeaderText="奖金" SortExpression="奖金" />
            <asp:BoundField DataField="分红" HeaderText="分红" SortExpression="分红" />
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
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        CellPadding="4" DataKeyNames="EID" DataSourceID="AccessDataSource2" 
        ForeColor="#333333" GridLines="None" Height="50px" Width="200px" 
        AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="EID" HeaderText="EID" ReadOnly="True" 
                SortExpression="EID" />
            <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
            <asp:CheckBoxField DataField="性别" HeaderText="性别" SortExpression="性别" />
            <asp:TemplateField HeaderText="所属部门ID" SortExpression="所属部门ID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("所属部门ID") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="AccessDataSource3" DataTextField="部门名称" DataValueField="部门ID" 
                        SelectedValue='<%# Bind("所属部门ID") %>'>
                    </asp:DropDownList>
                    <br />
                    <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
                        DataFile="~/App_Data/工资管理.mdb" 
                        SelectCommand="SELECT [部门ID], [部门名称] FROM [部门表] ORDER BY [部门名称]">
                    </asp:AccessDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("所属部门ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="职务" HeaderText="职务" SortExpression="职务" />
            <asp:BoundField DataField="工资等级" HeaderText="工资等级" SortExpression="工资等级" />
            <asp:BoundField DataField="奖金" HeaderText="奖金" SortExpression="奖金" />
            <asp:BoundField DataField="分红" HeaderText="分红" SortExpression="分红" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" 
            HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
        DataFile="~/App_Data/工资管理.mdb" 
        DeleteCommand="DELETE FROM [员工表] WHERE (([EID] = ?) OR ([EID] IS NULL AND ? IS NULL))" 
        InsertCommand="INSERT INTO [员工表] ([EID], [姓名], [性别], [所属部门ID], [职务], [工资等级], [奖金], [分红]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" 
        SelectCommand="SELECT [EID], [姓名], [性别], [所属部门ID], [职务], [工资等级], [奖金], [分红] FROM [员工表]" 
        
        UpdateCommand="UPDATE [员工表] SET [姓名] = ?, [性别] = ?, [所属部门ID] = ?, [职务] = ?, [工资等级] = ?, [奖金] = ?, [分红] = ? WHERE (([EID] = ?) OR ([EID] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="EID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="EID" Type="Int32" />
            <asp:Parameter Name="姓名" Type="String" />
            <asp:Parameter Name="性别" Type="Boolean" />
            <asp:Parameter Name="所属部门ID" Type="Int32" />
            <asp:Parameter Name="职务" Type="String" />
            <asp:Parameter Name="工资等级" Type="String" />
            <asp:Parameter Name="奖金" Type="Decimal" />
            <asp:Parameter Name="分红" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="姓名" Type="String" />
            <asp:Parameter Name="性别" Type="Boolean" />
            <asp:Parameter Name="所属部门ID" Type="Int32" />
            <asp:Parameter Name="职务" Type="String" />
            <asp:Parameter Name="工资等级" Type="String" />
            <asp:Parameter Name="奖金" Type="Decimal" />
            <asp:Parameter Name="分红" Type="Decimal" />
            <asp:Parameter Name="EID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
    </form>
</body>
</html>
