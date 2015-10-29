<%@ Page Language="C#" AutoEventWireup="true" CodeFile="角色管理.aspx.cs" Inherits="Role" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        用户名:<asp:DropDownList ID="DropDownList用户" 
            runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList用户名_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        用户所属角色:<br />
        <asp:ListBox ID="ListBox用户所属角色" runat="server" Height="98px"></asp:ListBox>
        <asp:Button ID="Button将用户从该角色中删除" runat="server" onclick="将用户从该角色中删除_Click" 
            Text="将用户从该角色中删除" />
        <br />
        <br />
        所有角色<br />
        <asp:ListBox ID="ListBox所有角色" runat="server" AutoPostBack="True" Height="93px" 
            onselectedindexchanged="ListBox所有角色_SelectedIndexChanged"></asp:ListBox>
        <asp:Button ID="Button为用户添加新角色" runat="server" onclick="Button为用户添加新角色_Click" 
            Text="为用户添加新角色" />
&nbsp;<asp:Button ID="Button删除选中的角色" runat="server" onclick="Button删除选中的角色_Click" 
            Text="删除选中的角色" />
        <br />
        <br />
        该角色下的用户<br />
        <asp:ListBox ID="ListBox角色中的用户" runat="server"></asp:ListBox>
    
    </div>
    <br />
    <asp:TextBox ID="TextBox新角色" runat="server"></asp:TextBox>
    <asp:Button ID="Button创建新角色" runat="server" onclick="Button创建新角色_Click" 
        Text="创建新角色" />
    </form>
</body>
</html>
