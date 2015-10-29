<%@ Page Language="C#" AutoEventWireup="true" CodeFile="部门表.aspx.cs" Inherits="部门表" %>

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
            DeleteCommand="DELETE FROM [部门表] WHERE (([部门ID] = ?) OR ([部门ID] IS NULL AND ? IS NULL))" 
            InsertCommand="INSERT INTO [部门表] ([部门ID], [部门名称], [部门简介]) VALUES (?, ?, ?)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [部门ID], [部门名称], [部门简介] FROM [部门表]" 
            
            UpdateCommand="UPDATE [部门表] SET [部门名称] = ?, [部门简介] = ? WHERE (([部门ID] = ?) OR ([部门ID] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_部门ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="部门ID" Type="Int32" />
                <asp:Parameter Name="部门名称" Type="String" />
                <asp:Parameter Name="部门简介" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="部门名称" Type="String" />
                <asp:Parameter Name="部门简介" Type="String" />
                <asp:Parameter Name="original_部门ID" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
    
    </div>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="部门ID" 
        DataSourceID="AccessDataSource1" GroupItemCount="2" 
        InsertItemPosition="LastItem" oniteminserted="ListView1_ItemInserted" 
        onitemupdated="ListView1_ItemUpdated">
        <AlternatingItemTemplate>
            <td runat="server" style="background-color:#FFF8DC;">
                部门ID:
                <asp:Label ID="部门IDLabel" runat="server" Text='<%# Eval("部门ID") %>' />
                <br />部门名称:
                <asp:Label ID="部门名称Label" runat="server" Text='<%# Eval("部门名称") %>' />
                <br />部门简介:
                <asp:Label ID="部门简介Label" runat="server" Text='<%# Eval("部门简介") %>' />
                <br />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                <br />
            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">
                部门ID:
                <asp:Label ID="部门IDLabel1" runat="server" Text='<%# Eval("部门ID") %>' />
                <br />部门名称:
                <asp:TextBox ID="部门名称TextBox" runat="server" Text='<%# Bind("部门名称") %>' />
                <br />部门简介:
                <asp:TextBox ID="部门简介TextBox" runat="server" Text='<%# Bind("部门简介") %>' />
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
                部门ID:
                <asp:TextBox ID="部门IDTextBox" runat="server" Text='<%# Bind("部门ID") %>' />
                <br />部门名称:
                <asp:TextBox ID="部门名称TextBox" runat="server" Text='<%# Bind("部门名称") %>' />
                <br />部门简介:
                <asp:TextBox ID="部门简介TextBox" runat="server" Text='<%# Bind("部门简介") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                <br />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="background-color:#DCDCDC;color: #000000;">
                部门ID:
                <asp:Label ID="部门IDLabel" runat="server" Text='<%# Eval("部门ID") %>' />
                <br />部门名称:
                <asp:Label ID="部门名称Label" runat="server" Text='<%# Eval("部门名称") %>' />
                <br />部门简介:
                <asp:Label ID="部门简介Label" runat="server" Text='<%# Eval("部门简介") %>' />
                <br />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除"  OnClientClick='return confirm("确定要删除吗？")' />
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
                        style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" 
                style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                部门ID:
                <asp:Label ID="部门IDLabel" runat="server" Text='<%# Eval("部门ID") %>' />
                <br />部门名称:
                <asp:Label ID="部门名称Label" runat="server" Text='<%# Eval("部门名称") %>' />
                <br />部门简介:
                <asp:Label ID="部门简介Label" runat="server" Text='<%# Eval("部门简介") %>' />
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
