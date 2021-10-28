<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="kelompok_9_project.View.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet" />
    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            margin: 0;
            background-color: #E7ECEF;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;

            height: 50px;
            background-color: #274C77;
        }
        .h-left {
            margin-left: 20px;
        }
        .h-right {
            display: flex;
            align-items: center;
            justify-content: space-between;
            
            width: 95px;
            margin-right: 20px;
        }

        .form {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: space-around;
            width: 20%;
            margin: 100px auto 0px auto;
            height: 150px;
        }
        .form-item {
            display: flex;
            flex-direction: row;
            width: 100%;
            justify-content: space-between;
        }
        #btnSubmit {
            background-color: #6096BA;
        }
        #LblError{
            color: red;
            font-size: 12px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <div class="h-left">"LOGO"</div>
            <div class="h-right">
                <asp:Image ID="imgPicture" runat="server" />
                <asp:Label ID="lblName" runat="server" ></asp:Label>
            </div>
        </div>

        <div class="form">
            <div class="form-item">
                <label>Email</label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </div>
            <div class="form-item">
                <label>Password</label>
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            </div>
            <div id="DivError" runat="server" class="form-item" visible="false">
                <asp:Label ID="LblError" runat="server" Text=""></asp:Label>
            </div>
            <div class="form-item">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
            </div>
            <div class="form-item">
                <asp:Button ID="btnRegister" runat="server" Text="Register as Student" OnClick="btnRegister_Click"/>
            </div>
        </div>
    </form>
</body>
</html>
