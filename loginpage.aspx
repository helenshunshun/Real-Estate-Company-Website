<%@ Page Title="" Language="C#" MasterPageFile="~/母板1.master" AutoEventWireup="true" CodeFile="loginpage.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
    <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/User2/主管页面.aspx" 
        onauthenticate="Login1_Authenticate" onloggedin="Login1_LoggedIn">
    </asp:Login>
</asp:Content>

