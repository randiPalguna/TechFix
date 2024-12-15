<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Service.aspx.cs" Inherits="_Service" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Services</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Manage Services</h2>

        <fieldset>
            <legend>Add New Service</legend>
            <label for="txtDescription">Description:</label>
            <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox><br />
            <label for="txtPrice">Price:</label>
            <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox><br />
            <asp:Button ID="btnAdd" Text="Add Service" OnClick="btnAdd_Click" runat="server" />
            <asp:Label ID="lblMessage" ForeColor="Green" runat="server"></asp:Label>
        </fieldset>

        <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id"
            OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"
            OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" />
                <asp:BoundField DataField="description" HeaderText="Description" />
                <asp:BoundField DataField="price" HeaderText="Price" DataFormatString="Rp{0:N2}" />
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
