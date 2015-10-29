<%@ Page Language="C#" AutoEventWireup="true" CodeFile="个人设置.aspx.cs" Inherits="个人设置" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 348px;
        }
        .style2
        {
            width: 564px;
        }
        .style3
        {
            height: 49px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                        BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                        Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="266px" 
                        ondayrender="Calendar1_DayRender" 
                        onselectionchanged="Calendar1_SelectionChanged" Width="432px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>
                    账户修改设置<br />
                    <br />
                    <br />
                    请输入用户名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="用户名不能为空"></asp:RequiredFieldValidator>
                    <br />
                    请输入密码：<asp:TextBox 
                        ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
                    <br />
                    请再次输入密码：<asp:TextBox ID="TextBox3" runat="server" 
                        TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                        ErrorMessage="与之前输入的密码不一致" Type="Integer"></asp:CompareValidator>
                    <br />
                    请输入电子邮件地址：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="输入邮件地址的格式不对" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="确定" />
                    <asp:Button ID="Button2" runat="server" Text="重置" onclick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="style3" colspan="2">
                    <asp:FileUpload ID="fileupload" runat="server" Height="29px" Width="307px" />
                    <asp:Button ID="upload" runat="server" Height="27px" onclick="upload_Click" 
                        Text="上传" Width="106px" />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Message"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
