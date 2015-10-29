<%@ Page Language="C#" AutoEventWireup="true" CodeFile="个人资料.aspx.cs" Inherits="User1_个人资料" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2" DataKeyNames="EID" 
            DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Fields>
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
            </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SqlExpress2005 %>" 
            
            
            SelectCommand="SELECT * FROM [员工表]">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
