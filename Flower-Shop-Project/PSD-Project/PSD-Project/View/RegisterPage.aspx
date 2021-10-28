<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="PSD_Project.View.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label>Email</label>
            <asp:TextBox ID="tbEmail" runat="server" TextMode="Email"></asp:TextBox>
        </div>
        <div>
            <label>Password</label>
            <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div>
            <label>Name</label>
            <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="birthday">Birthday:</label>
            <asp:TextBox ID="tbDOB" runat="server" TextMode="Date"></asp:TextBox>
        </div>
        <div>
            <label>Gender </label>
            <br />
            Male
            <asp:RadioButton ID="rbMale" runat="server"/>
            Female
            <asp:RadioButton ID="rbFemale" runat="server"/>
        </div>
        <div>
            <label>Phone Number</label>
            <asp:TextBox ID="tbPhone" TextMode="Phone" runat="server"></asp:TextBox>
        </div>
        <div>
            <label>Address</label>
            <asp:TextBox ID="tbAddress" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        </div>
        <div>
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
        </div>
        <div>
            <asp:Button ID="btnLogin" runat="server" Text="Go to Login Page" OnClick="btnLogin_Click" Visible="false" />
        </div>
    </form>
</body>
</html>
