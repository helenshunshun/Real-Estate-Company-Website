<%@ Page Title="" Language="C#" MasterPageFile="~/母板1.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="User1_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
<table>
<tr>
<td>
<p>
        hi</p>
    <p>
        <a href="个人资料.aspx" target="right">个人资料</a></p>
    <p>
        <a href="工资管理.aspx" target="right">工资管理</a></p>
    <p>
        <a href="项目管理.aspx" target="right">项目管理</a></p>
</td>
<td  height="500">
    <iframe name="right"  src="right.aspx" height="500" ></iframe>
</td>
</tr>

</table>
</asp:Content>

