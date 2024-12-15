<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Register</h2>
        <label for="Username">Username:</label>
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br />
        <label for="Password">Password:</label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />
        <label for="ConfirmPassword">Confirm Password:</label>
        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox><br />
        <asp:Button ID="btnRegister" Text="Register" OnClick="btnRegister_Click" runat="server" />
        <asp:Label ID="lblMessage" ForeColor="Red" runat="server"></asp:Label>
        <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="Login.aspx">
            Already have an account? Login here
        </asp:HyperLink>
    </form>
</body>
</html>
