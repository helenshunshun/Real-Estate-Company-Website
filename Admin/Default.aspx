<%@ Page Title="" Language="C#" MasterPageFile="~/母板1.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
<div align="left">
    <asp:Button ID="Button1" runat="server" Text="角色管理"   PostBackUrl="~/Admin/角色管理.aspx" />
    
    <br />
    <asp:Button ID="Button2" runat="server" PostBackUrl="~/Admin/主页框架.htm" 
        Text="数据管理" />
    
</div>
</asp:Content>

