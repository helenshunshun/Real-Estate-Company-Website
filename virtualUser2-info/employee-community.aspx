<%@ Page Language="C#" AutoEventWireup="true" CodeFile="员工专区.aspx.cs" Inherits="员工专区" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 62%;
            height: 767px;
            margin-top: 0px;
            background-image: url('pic/手托房子.jpg');
        }
        .style8
        {
            height: 46px;
            }
        .style11
        {
            width: 89%;
            height: 812px;
            margin-right: 47px;
        }
        .style13
        {
            width: 294px;
        }
        .style14
        {
            width: 209px;
            height: 35px;
        }
        .style15
        {
            width: 249px;
            height: 35px;
        }
        .style19
        {
            width: 90px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:SqlDataSource ID="bumenDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT [部门ID], [部门名称] FROM [部门表]" 
        onselecting="bumenDataSource_Selecting"></asp:SqlDataSource>
    <asp:SqlDataSource ID="yugongDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        
        
        SelectCommand="SELECT [EID], [姓名], [所属部门ID] FROM [员工表] WHERE ([所属部门ID] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="bumendrop" Name="所属部门ID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="bumenyuangongDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        
        
        SelectCommand="SELECT [EID], [姓名], [性别], [所属部门ID], [职务], [工资等级], [奖金], [分红] FROM [员工表] WHERE ([EID] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="yugongdrop" Name="EID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div>
    
        <table  class="style1">
            <tr>
                <td align="center" class="style14">
    <asp:DropDownList ID="bumendrop" runat="server" AutoPostBack="True" 
        DataSourceID="bumenDataSource" DataTextField="部门名称" DataValueField="部门ID" 
        onselectedindexchanged="bumendrop_SelectedIndexChanged" Font-Bold="True" Font-Size="Large">
    </asp:DropDownList>
                </td>
                <td align="center" class="style15">
    <asp:DropDownList ID="yugongdrop" runat="server" AutoPostBack="True" Font-Bold="True" 
                        Font-Size="Large" DataSourceID="yugongDataSource" DataTextField="姓名" 
                        DataValueField="EID">
    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td  align="center" class="style8" colspan="2">
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="EID" 
                        DataSourceID="bumenyuangongDataSource" 
                        style="margin-left: 0px; margin-right: 57px" Width="730px" Height="16px">
                        <EditItemTemplate>
                            EID:
                            <asp:Label ID="EIDLabel1" runat="server" Text='<%# Eval("EID") %>' />
                            <br />
                            姓名:
                            <asp:TextBox ID="姓名TextBox" runat="server" Text='<%# Bind("姓名") %>' />
                            <br />
                            性别:
                            <asp:CheckBox ID="性别CheckBox" runat="server" Checked='<%# Bind("性别") %>' />
                            <br />
                            所属部门ID:
                            <asp:TextBox ID="所属部门IDTextBox" runat="server" Text='<%# Bind("所属部门ID") %>' />
                            <br />
                            职务:
                            <asp:TextBox ID="职务TextBox" runat="server" Text='<%# Bind("职务") %>' />
                            <br />
                            工资等级:
                            <asp:TextBox ID="工资等级TextBox" runat="server" Text='<%# Bind("工资等级") %>' />
                            <br />
                            奖金:
                            <asp:TextBox ID="奖金TextBox" runat="server" Text='<%# Bind("奖金") %>' />
                            <br />
                            分红:
                            <asp:TextBox ID="分红TextBox" runat="server" Text='<%# Bind("分红") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="更新" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;EID:
                            <asp:TextBox ID="EIDTextBox" runat="server" Text='<%# Bind("EID") %>' />
                            <br />
                            姓名:
                            <asp:TextBox ID="姓名TextBox" runat="server" Text='<%# Bind("姓名") %>' />
                            <br />
                            性别:
                            <asp:CheckBox ID="性别CheckBox" runat="server" Checked='<%# Bind("性别") %>' />
                            <br />
                            所属部门ID:
                            <asp:TextBox ID="所属部门IDTextBox" runat="server" Text='<%# Bind("所属部门ID") %>' />
                            <br />
                            职务:
                            <asp:TextBox ID="职务TextBox" runat="server" Text='<%# Bind("职务") %>' />
                            <br />
                            工资等级:
                            <asp:TextBox ID="工资等级TextBox" runat="server" Text='<%# Bind("工资等级") %>' />
                            <br />
                            奖金:
                            <asp:TextBox ID="奖金TextBox" runat="server" Text='<%# Bind("奖金") %>' />
                            <br />
                            分红:
                            <asp:TextBox ID="分红TextBox" runat="server" Text='<%# Bind("分红") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="插入" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <table class="style11">
                                <tr>
                                    <td align="left" class="style19">
                                        <asp:Image ID="Image1" runat="server" Height="240px" 
                                            ImageUrl='<%# Eval("EID", "pic/{0}.bmp") %>' style="margin-top: 15px" 
                                            Width="230px" />
                                    </td>
                                    <td  align="right"class="style13" align="right">
                                       <strong><font size="6" color="red" > EID:<asp:Label ID="EIDLabel" runat="server" Text='<%# Eval("EID") %>' />
                                           </strong> <br />
                                            姓名:
                                        <asp:Label ID="姓名Label" runat="server" Text='<%# Bind("姓名") %>' />
                                            
                                        <br />
                                            
                                        性别:
                                        <asp:CheckBox ID="性别CheckBox" runat="server" Checked='<%# Bind("性别") %>' 
                                            Enabled="false" />
                                            
                                        <br />
                                            
                                        所属部ID:<asp:Label ID="所属部门IDLabel" runat="server" Text='<%# Bind("所属部门ID") %>' />
                                            <br/>
                                       职务:
                                        <asp:Label ID="职务Label" runat="server" Text='<%# Bind("职务") %>' />
                                        <br />
                                        工资等级:<asp:Label ID="工资等级Label" runat="server" Text='<%# Bind("工资等级") %>' />
                                         <br />
                                         奖金:
                                        <asp:Label ID="奖金Label" runat="server" Text='<%# Bind("奖金") %>' />
                                       
                                        <br/>
                                        分红:
                                        <asp:Label ID="分红Label" runat="server" Text='<%# Bind("分红") %>' />
                                        </font>
                                        <br />
                                       
                                      
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </ItemTemplate>
                    </asp:FormView>
                </td>
            </tr>
        </table>
        <br />
    
    </div>
    </form>
</body>
</html>
