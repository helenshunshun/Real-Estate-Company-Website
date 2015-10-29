<%@ Page Language="C#" AutoEventWireup="true" CodeFile="工资管理.aspx.cs" Inherits="User1_工资管理" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
            AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="EID" HeaderText="EID" SortExpression="EID" />
                <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                <asp:BoundField DataField="工资等级" HeaderText="工资等级" SortExpression="工资等级" />
                <asp:BoundField DataField="工资" HeaderText="工资" SortExpression="工资" />
                <asp:BoundField DataField="项目ID" HeaderText="项目ID" SortExpression="项目ID" />
                <asp:BoundField DataField="项目名称" HeaderText="项目名称" SortExpression="项目名称" />
                <asp:BoundField DataField="项目资金" HeaderText="项目资金" SortExpression="项目资金" />
                <asp:BoundField DataField="奖金" HeaderText="奖金" SortExpression="奖金" />
                <asp:BoundField DataField="分红" HeaderText="分红" SortExpression="分红" />
                <asp:BoundField DataField="提成比例" HeaderText="提成比例" SortExpression="提成比例" />
                <asp:BoundField DataField="总工资" HeaderText="总工资" ReadOnly="True" 
                    SortExpression="总工资" />
            </Fields>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM [工资查询]">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
