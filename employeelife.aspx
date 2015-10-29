<%@ Page Title="" Language="C#" MasterPageFile="~/母板1.master" AutoEventWireup="true" CodeFile="员工风采.aspx.cs" Inherits="Default2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server" >
<table>
<tr>
<td>



<script type="text/javascript" src="js/zns_script.js"></script>
<link href="style/zns_style.css" rel="stylesheet" type="text/css" />


<div id="automatic">

	<div class="prev_div"></div>
    <a class="prev" href="#">
        <span class="ico1"></span>
        <span class="ico"></span>
        <span class="txt"></span>
    </a>
	
	<div class="next_div"></div>
    <a class="next" href="#">
        <span class="ico1"></span>
        <span class="ico"></span>
        <span class="txt"></span>
    </a>

	<div class="line"></div>

    <ul>
        <li class="pos_0"><a href="#"><img src="images/8.jpg" width="100" alt="" longdesc="#" /></a></li>
        <li class="pos_1"><a href="#"><img src="images/1.jpg" width="270" alt="" longdesc="#" /></a></li>
        <li class="pos_2"><a href="#"><img src="images/2.jpg" width="510" alt="" longdesc="#" /></a></li>
        <li class="pos_3"><a href="#"><img src="images/3.jpg" width="680" alt="" longdesc="#" /></a></li>
        <li class="pos_4"><a href="#"><img src="images/4.jpg" width="510" alt="" longdesc="#" /></a></li>
        <li class="pos_5"><a href="#"><img src="images/5.jpg" width="270" alt="" longdesc="#" /></a></li>
        <li class="pos_6"><a href="#"><img src="images/6.jpg" width="270" alt="" longdesc="#" /></a></li>
        <li class="pos_6"><a href="#"><img src="images/7.jpg" width="270" alt="" longdesc="#" /></a></li>
    </ul>
</div>

</td>

<td >

    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/bian.jpg" />

</td>

<td >
    <asp:Label ID="Label1" runat="server" 
        Text="员<br />工<br />风<br />采<br />展<br/>示" Font-Bold="True" Font-Names="黑体" 
        Font-Size="XX-Large" ForeColor="White"></asp:Label>
</td>
</tr>
</table>
    </asp:Content>

