<%@ Page Language="C#" AutoEventWireup="true" CodeFile="项目管理.aspx.cs" Inherits="User1_项目管理" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="成员ID" HeaderText="成员ID" SortExpression="成员ID" />
                <asp:BoundField DataField="项目名称" HeaderText="项目名称" SortExpression="项目名称" />
                <asp:BoundField DataField="项目介绍" HeaderText="项目介绍" SortExpression="项目介绍" />
                <asp:BoundField DataField="任务" HeaderText="任务" SortExpression="任务" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM [项目查询]">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
