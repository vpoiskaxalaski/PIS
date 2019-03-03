<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <asp:Label ID="someLabel" runat="server">My first application</asp:Label>
    <hr />
    <input type="checkbox" />
    <br />
    <select>
        <option>Alexey</option>
        <option>Alena</option>
        <option>Diana</option>
    </select>
    <br />
    <br />
    <asp:TextBox ID="someInput" runat="server"></asp:TextBox>
    <asp:Button OnClick="HandleClick" runat="server" Text="Click"></asp:Button>
</body>
</html>

</asp:Content>
