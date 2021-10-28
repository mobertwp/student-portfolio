<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="PSD_Project.View.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label>Email: </label>
            <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
        </div>
        <div>
            <label>Password: </label>
            <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div>
            <label>Remember Me</label>
            <asp:CheckBox ID="cbRemember" runat="server" />
        </div>
        <div>
            <asp:Label ID="lblIncorrect" runat="server" Text=""></asp:Label>
        </div>
        <div>
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"/>
        </div>
        <div>
            <a href="RegisterPage.aspx">Register</a>
            <a href="ForgotPasswordPage.aspx">Forgot Password</a>
        </div>
    </form>
</body>
</html>
