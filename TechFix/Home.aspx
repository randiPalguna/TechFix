<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
</head>
<body>
    <h1>Welcome, <asp:Label ID="lblUsername" runat="server"></asp:Label></h1>
    <ul>
        <li><a href="Service.aspx">Manage Services</a></li>
        <li><a href="javascript:window.location='Home.aspx?logout=true';">Logout</a></li>
    </ul>
</body>
</html>
