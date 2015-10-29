<%@ Page Language="C#" AutoEventWireup="true" CodeFile="主页右侧.aspx.cs" Inherits="manager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style42
        {
            width: 100%;
        }
        .style43
        {
            width: 33px;
            height: 195px;
        }
        .style46
        {
            width: 195px;
            height: 33px;
        }
        .style45
        {
            height: 242px;
        }
        .style44
        {
            width: 240px;
            height: 240px;
        }
        .style47
        {
            width: 491px;
        }
        .style48
        {
            width: 190px;
            height: 150px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
                <table class="style42">
                    <tr>
                        <td height="175" width="35">
                            <img alt="" class="style43" src="图片/b2.jpg" /></td>
                        <td>

                        <marquee direction="left" onmouseout="start()">
                        <img alt=""  src="图片/销售之首4.jpg" />
                        <img alt=""  src="图片/销售之首2.jpg" />
                        <img alt=""  src="图片/销售之首3.jpg" />
                        <img alt=""  src="图片/s4.jpg" />
                        </marquee>


                            &nbsp;</td>
                        <td height="177" width="35">
                            <img alt="" class="style43" src="图片/b1.jpg" /></td>
                        <td>


                        <marquee direction="left" onmouseout="start()">
                        <img alt=""  src="图片/z1.jpg" />
                        <img alt=""  src="图片/z2.jpg" />
                        <img alt=""  src="图片/z4.jpg" />
                        <img alt=""  src="图片/z5.jpg" />
                        </marquee>





                            &nbsp;</td>
                    </tr>
                </table>
                <table class="style42">
                    <tr>
                        <td width="400">
                            <table class="style42">
                                <tr>
                                    <td height="35">
                                        <img alt="" class="style46" src="图片/b4.jpg" /></td>
                                </tr>
                                <tr>
                                    <td height="238">
                       <marquee direction="up" onmouseout="start()">
                        <p>
                        <a href="http://news.163.com/12/1226/07/8JKQ98R500014JB5.html" target="_blank">住建部：明年将继续严格限购 坚定不移地搞好房产调控 </a> 
                        </p>
                        <p>
                       <a href="http://news.sina.com.cn/c/2012-12-26/033425893504.shtml" target="_blank">明年房地产调控不放松</a> 
                       </p>
                       <p>
                       <a href="http://www.chinadaily.com.cn/hqcj/zxqxb/2012-12-26/content_7865744.html" target="_blank">十年拉动40万亿投资 “城镇化”将缓冲经济增速下滑 </a> 
                       </p>
                       <p>
                       <a href="http://news.hexun.com/2012-12-26/149478223.html" target="_blank">五大因素或致2013年一线城市房价大涨 </a> 
                        </p></marquee>






                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td height="245">
                            <table class="style42">
                                <tr>
                                    <td class="style45" width="35">
                                        <img alt="" class="style43" src="图片/b5.jpg" /></td>
                                    <td class="style45">
                                        <img alt="" class="style44" src="图片/wangtu.gif" /></td>
                                </tr>
                            </table>
                        </td>
                        <td width="220">
                            <table class="style42">
                                <tr>
                                    <td height="35">
                                        <img alt="" class="style46" src="图片/b11.jpg" /></td>
                                </tr>
                                <tr>
                                    <td height="65">
                                        <asp:FileUpload ID="FileUpload1" runat="server" Width="195px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td height="35">
                                        <img alt="" class="style46" src="图片/b11.jpg" /></td>
                                </tr>
                                <tr>
                                    <td height="90">
                                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                                            BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                                            DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                                            ForeColor="#003399" Height="16px" Width="203px">
                                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                            <OtherMonthDayStyle ForeColor="#999999" />
                                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                                                Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                            <WeekendDayStyle BackColor="#CCCCFF" />
                                        </asp:Calendar>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <table class="style42">
                    <tr>
                        <td>
                            <table class="style42">
                                <tr>
                                    <td height="150" width="35">
                                        <img alt="" class="style43" src="图片/b9.jpg" /></td>
                                    <td class="style47" align="left" style="font-size: medium; font-family: 华文新魏">
                                        &nbsp;&nbsp;&nbsp;&nbsp; 
                                        禧年，在房地产市场风生水起的北京，在长安街延展线东端的千年古县——通州，城市化进程悄然展开，潺潺的运河水见证着变化中的点点滴滴。<br />
&nbsp;&nbsp;&nbsp;&nbsp; 一方水土养一方人。立足这片“生于斯长于斯”的热土，心怀“为家乡人民建安居乐土、为都市白领营造理想家园、为未来城市留下艺术杰作”的理想，在，世纪更迭之际，于，京杭运河侧畔，志同道合的地产人聚集到一起，成立了北京盛业房地产开发有限公司。公司建立以来，加华印象街•盛业家园、波菲特行政公寓等一个个精品楼盘的成功开发，推动了北京日新月异的城市化建设，更炼就了盛业人“锐意创新、厚积薄发”的优秀品质。 </td>
                                    <td>
                                        <img alt="" class="style48" src="图片/aa.jpg" /></td>
                                </tr>
                            </table>
                        </td>
                        <td height="150" width="220">
                            <table class="style42">
                                <tr>
                                    <td height="35">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td height="150">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </form>
</body>
</html>
