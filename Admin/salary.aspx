<%@ Page Language="C#" AutoEventWireup="true" CodeFile="工资等级表.aspx.cs" Inherits="工资等级表" %>

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
            DeleteCommand="DELETE FROM [工资等级表] WHERE (([等级] = ?) OR ([等级] IS NULL AND ? IS NULL))" 
            InsertCommand="INSERT INTO [工资等级表] ([等级], [等级说明], [工资]) VALUES (?, ?, ?)" 
            SelectCommand="SELECT [等级], [等级说明], [工资] FROM [工资等级表]" 
            
            UpdateCommand="UPDATE [工资等级表] SET [等级说明] = ?, [工资] = ? WHERE (([等级] = ?) OR ([等级] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="等级" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="等级" Type="String" />
                <asp:Parameter Name="等级说明" Type="String" />
                <asp:Parameter Name="工资" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="等级说明" Type="String" />
                <asp:Parameter Name="工资" Type="Decimal" />
                <asp:Parameter Name="等级" Type="String" />
            </UpdateParameters>
        </asp:AccessDataSource>
    
    </div>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="等级" 
        DataSourceID="AccessDataSource1" GroupItemCount="2" 
        InsertItemPosition="LastItem">
     
        <EditItemTemplate>
            <td runat="server" style="background-color: #FFCC66;color: #000080;">
                等级:
                <asp:Label ID="等级Label1" runat="server" Text='<%# Eval("等级") %>' />
                <br />等级说明:
                <asp:TextBox ID="等级说明TextBox" runat="server" Text='<%# Bind("等级说明") %>' />
                <br />工资:
                <asp:TextBox ID="工资TextBox" runat="server" Text='<%# Bind("工资") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                <br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" 
                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>
                        未返回数据。</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
<td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr ID="itemPlaceholderContainer" runat="server">
                <td ID="itemPlaceholder" runat="server">
                </td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">
                等级:
                <asp:TextBox ID="等级TextBox" runat="server" Text='<%# Bind("等级") %>' />
                <br />等级说明:
                <asp:TextBox ID="等级说明TextBox" runat="server" Text='<%# Bind("等级说明") %>' />
                <br />工资:
                <asp:TextBox ID="工资TextBox" runat="server" Text='<%# Bind("工资") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                <br />
            </td>
        </InsertItemTemplate>
        <ItemTemplate >
            <td runat="server" style="background-color: #FFFBD6;color: #333333;" width="250">
                等级:
                <asp:Label ID="等级Label" runat="server" Text='<%# Eval("等级") %>' />
                <br />等级说明:
                <asp:Label ID="等级说明Label" runat="server" Text='<%# Eval("等级说明") %>' />
                <br />工资:
                <asp:Label ID="工资Label" runat="server" Text='<%# Eval("工资") %>' />
                <br />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" OnClientClick='return confirm("确定要删除吗？") '/>
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                <br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="groupPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr ID="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                    ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" 
                style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                等级:
                <asp:Label ID="等级Label" runat="server" Text='<%# Eval("等级") %>' />
                <br />等级说明:
                <asp:Label ID="等级说明Label" runat="server" Text='<%# Eval("等级说明") %>' />
                <br />工资:
                <asp:Label ID="工资Label" runat="server" Text='<%# Eval("工资") %>' />
                <br />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                <br />
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
    </form>
</body>
</html>
