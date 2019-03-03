<%@ Page Title="Home Page"
         Language="C#"  
         AutoEventWireup="true" 
         CodeBehind="Default.aspx.cs" 
         Inherits="WebApplication2._Default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            width: 326px;
        }
        #form2 {
            width: 654px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="true"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button"/>
        <br />
        <asp:ListBox ID="EventListBox" runat="server" Height="322px" Width="324px"></asp:ListBox>
    </form>

    </body>
</html>