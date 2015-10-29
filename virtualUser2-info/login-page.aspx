<%@ Page Language="C#" AutoEventWireup="true" CodeFile="系统登录.aspx.cs" Inherits="系统登录" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table >
            <tr>
                <td align="center" class="style1"  >
                <img src="pic/tubiao.jpg" style="width: 439px; margin-left: 0px"></td>
                <td  align="right" width="158.3"> 
                   <a href ="信息公告.aspx" target="content"> <asp:Image ID="Image1" runat="server" 
                        Height="107px" ImageUrl="~/User2/pic/信息公告.jpg" 
                        Width="94px" alt="信息公告" style="margin-top: 4px"/></a>
                </td>
                <td  align="right"  width="158.3"> 
                    <a href="个人设置.aspx" target="content"> 
                    <asp:Image ID="Image2" runat="server" Height="116px" 
                        ImageUrl="~/User2/pic/个人设置 (2).jpg" Width="89px" alt="个人设置"/></a>
                </td>
                <td align="right"  width="158.3"> 
                    <a href="员工专区.aspx" target="content">
                    <asp:Image ID="Image3" runat="server" Height="108px" 
                        ImageUrl="~/User2/pic/员工专区 (2).jpg" Width="97px" alt="员工专区"/></a>
                </td>
                <td align="right"  width="80"> 
                    <a href="主管页面.aspx" target="_self"><asp:Image ID="Image4" runat="server" 
                        Height="39px" ImageUrl="~/User2/pic/退出.png" 
                        Width="34px" alt="退出"/></a>
                </td>

                <td  align="right"  100"> 
                    <embed src="~User2/Music/pipayu.mp3" style="height: 31px; width: 83px"></embed></td>

            </tr>
            </table>
           <iframe name="content"  src="个人设置.aspx" height="600" width="1050" >
           </iframe>
           </div>
           </form>
           </body>

           
</html>
