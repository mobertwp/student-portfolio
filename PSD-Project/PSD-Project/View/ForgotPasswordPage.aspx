<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPasswordPage.aspx.cs" Inherits="PSD_Project.View.ForgotPasswordPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label>Email: </label>
            <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
        </div>
        <div>
            <label>Captcha: </label>
            <asp:Label ID="lblCaptcha" runat="server" Text=""></asp:Label>
        </div>
        <div>
            <label>New Password: </label>
            <asp:TextBox ID="tbPassword" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblIncorrect" runat="server" Text=""></asp:Label>
        </div>
        <div>
            <asp:Button ID="btnConfirm" runat="server" Text="Confirm" OnClick="btnConfirm_Click"/>
        </div>
    </form>
</body>
</html>
