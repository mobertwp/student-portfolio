<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="kelompok_9_project.View.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Page</title>
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
            width: 30%;
            margin: 100px auto 0px auto;
            height: 300px;
        }
        .form-item {
            display: flex;
            flex-direction: row;
            width: 100%;
            justify-content: space-between;
        }
        .form-register{
            align-content: center;
        }
        #btnRegister {
            background-color: #6096BA;
        }
        #btnBack{
            background-color: #6096BA;
        }
        #LblMsg{
            color:red;
            font-size: 10px;
        }
        #LblBack{
            color:green;
            font-size: 10px;
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
                <label>Name</label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </div>
            <div class="form-item">
                <label>NIS</label>
                <asp:TextBox ID="txtNIS" runat="server"></asp:TextBox>
            </div>
            <div class="form-item">
                <label>Address</label>
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="170px" Height="100px"></asp:TextBox>
            </div>
            <div class="form-item">
                <label>No. Telp</label>
                <asp:TextBox ID="txtNoTelp" runat="server"></asp:TextBox>
            </div>
            <div class="form-item">
                <label>Gender </label>
            </div>
            <div class="form-item">
                Male
                <asp:RadioButton ID="rbMale" runat="server"/>
                Female
                <asp:RadioButton ID="rbFemale" runat="server"/>
            </div>
            <div class="form-item">
                <label>Parent's Name</label>
                <asp:TextBox ID="txtParentName" runat="server"></asp:TextBox>
            </div>
            <div class="form-item">
                <label>Parent's No. Telp</label>
                <asp:TextBox ID="txtParentNoTelp" runat="server"></asp:TextBox>
            </div>
            <div class="form-register">
                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click"/>
            </div>
            <div id="DivMsg" runat="server" class="form-item" visible="false">
                <asp:Label ID="LblMsg" runat="server" Text=""></asp:Label>
            </div>
            <div id="DivBack" runat="server" class="form-item" visible="false">
                <asp:Label ID="LblBack" runat="server" Text=""></asp:Label>
                <asp:Button ID="btnBack" runat="server" Text="Go to Login Page" OnClick="btnBack_Click" />
            </div>
        </div>
    </form>
</body>
</html>
