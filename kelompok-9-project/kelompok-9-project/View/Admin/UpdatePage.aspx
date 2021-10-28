<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePage.aspx.cs" Inherits="kelompok_9_project.View.Admin.UpdatePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .form {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: space-around;
            width: 20%;
            margin: 100px auto 0px auto;
            height: 250px;
        }
        .form-item {
            display: flex;
            flex-direction: row;
            width: 100%;
            justify-content: center;
        }
        #btnSubmit {
            background-color: #6096BA;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-item">
                <label>Name</label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </div>
            <div class="form-item">
                <label>Password</label>
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            </div>
            <div class="form-item">
                <label>Phone Number</label>
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            </div>
            <div class="form-item">
                <label>Gender</label>
                <div>
                    <asp:RadioButton ID="rbMale" runat="server" Text="Male" GroupName="Gender"/>
                    <asp:RadioButton ID="rbFemale" runat="server" Text="Female" GroupName="Gender"/>
                </div>
            </div>
            <div class="form-item">
                <label>Age</label>
                <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            </div>
            <div class="form-item">
                <div></div>
                <asp:Button ID="btnSubmit" runat="server" Text="Update" OnClick="Update_Click"/>
            </div>
    </form>
</body>
</html>
