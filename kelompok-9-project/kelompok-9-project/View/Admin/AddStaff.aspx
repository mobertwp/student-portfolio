<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddStaff.aspx.cs" Inherits="kelompok_9_project.View.Admin.AddStaff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
            justify-content: space-between;
        }
        #btnSubmit {
            background-color: #6096BA;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form">
            <div class="form-item">
                <label>Name</label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </div>
            <div class="form-item">
                <label>Email</label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
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
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
            </div>
            
    </div>
</asp:Content>
