<%@ Page Language="C#" AutoEventWireup="true" CodeFile="项目表.aspx.cs" Inherits="项目表" %>

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
            DeleteCommand="DELETE FROM [项目表] WHERE (([项目ID] = ?) OR ([项目ID] IS NULL AND ? IS NULL))" 
            InsertCommand="INSERT INTO [项目表] ([项目ID], [项目名称], [项目介绍], [项目资金]) VALUES (?, ?, ?, ?)" 
            SelectCommand="SELECT [项目ID], [项目名称], [项目介绍], [项目资金] FROM [项目表]" 
            
            UpdateCommand="UPDATE [项目表] SET [项目名称] = ?, [项目介绍] = ?, [项目资金] = ? WHERE (([项目ID] = ?) OR ([项目ID] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="项目ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="项目ID" Type="Int32" />
                <asp:Parameter Name="项目名称" Type="String" />
                <asp:Parameter Name="项目介绍" Type="String" />
                <asp:Parameter Name="项目资金" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="项目名称" Type="String" />
                <asp:Parameter Name="项目介绍" Type="String" />
                <asp:Parameter Name="项目资金" Type="Decimal" />
                <asp:Parameter Name="项目ID" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
    
    </div>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="项目ID" 
        DataSourceID="AccessDataSource1" InsertItemPosition="FirstItem">
        <AlternatingItemTemplate>
            <li style="background-color: #FFF8DC;">项目ID:
                <asp:Label ID="项目IDLabel" runat="server" Text='<%# Eval("项目ID") %>' />
                <br />
                项目名称:
                <asp:Label ID="项目名称Label" runat="server" Text='<%# Eval("项目名称") %>' />
                <br />
                项目介绍:
                <asp:Label ID="项目介绍Label" runat="server" Text='<%# Eval("项目介绍") %>' />
                <br />
                项目资金:
                <asp:Label ID="项目资金Label" runat="server" Text='<%# Eval("项目资金") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="background-color: #008A8C;color: #FFFFFF;">项目ID:
                <asp:Label ID="项目IDLabel1" runat="server" Text='<%# Eval("项目ID") %>' />
                <br />
                项目名称:
                <asp:TextBox ID="项目名称TextBox" runat="server" Text='<%# Bind("项目名称") %>' />
                <br />
                项目介绍:
                <asp:TextBox ID="项目介绍TextBox" runat="server" Text='<%# Bind("项目介绍") %>' />
                <br />
                项目资金:
                <asp:TextBox ID="项目资金TextBox" runat="server" Text='<%# Bind("项目资金") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            未返回数据。
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">项目ID:
                <asp:TextBox ID="项目IDTextBox" runat="server" Text='<%# Bind("项目ID") %>' />
                <br />项目名称:
                <asp:TextBox ID="项目名称TextBox" runat="server" Text='<%# Bind("项目名称") %>' />
                <br />项目介绍:
                <asp:TextBox ID="项目介绍TextBox" runat="server" Text='<%# Bind("项目介绍") %>' />
                <br />项目资金:
                <asp:TextBox ID="项目资金TextBox" runat="server" Text='<%# Bind("项目资金") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
<br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="background-color: #DCDCDC;color: #000000;">项目ID:
                <asp:Label ID="项目IDLabel" runat="server" Text='<%# Eval("项目ID") %>' />
                <br />
                项目名称:
                <asp:Label ID="项目名称Label" runat="server" Text='<%# Eval("项目名称") %>' />
                <br />
                项目介绍:
                <asp:Label ID="项目介绍Label" runat="server" Text='<%# Eval("项目介绍") %>' />
                <br />
                项目资金:
                <asp:Label ID="项目资金Label" runat="server" Text='<%# Eval("项目资金") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" OnClientClick='return confirm("确定要删除吗？")' />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul ID="itemPlaceholderContainer" runat="server" 
                style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                            ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">项目ID:
                <asp:Label ID="项目IDLabel" runat="server" Text='<%# Eval("项目ID") %>' />
                <br />
                项目名称:
                <asp:Label ID="项目名称Label" runat="server" Text='<%# Eval("项目名称") %>' />
                <br />
                项目介绍:
                <asp:Label ID="项目介绍Label" runat="server" Text='<%# Eval("项目介绍") %>' />
                <br />
                项目资金:
                <asp:Label ID="项目资金Label" runat="server" Text='<%# Eval("项目资金") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
    </form>
</body>
</html>
