<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Login</h2>
        <label for="Username">Username:</label>
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br />
        <label for="Password">Password:</label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />
        <asp:Button ID="btnLogin" Text="Login" OnClick="btnLogin_Click" runat="server" />
        <asp:Label ID="lblMessage" ForeColor="Red" runat="server"></asp:Label>
        <asp:HyperLink ID="hlRegister" runat="server" NavigateUrl="Register.aspx">
            Don't have an account? Register here
        </asp:HyperLink>
    </form>
</body>
</html>