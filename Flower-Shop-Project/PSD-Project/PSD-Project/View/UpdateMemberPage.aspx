<%@ Page Title="" Language="C#" MasterPageFile="~/View/Master.Master" AutoEventWireup="true" CodeBehind="UpdateMemberPage.aspx.cs" Inherits="PSD_Project.View.UpdateMemberPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Update Member</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Old Member Information</h1>
    <div>
        <label>Email:</label>
        <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
    </div>
    <div>
        <label>Password:</label>
        <asp:Label ID="lblPassword" runat="server" Text="Label"></asp:Label>
    </div>
    <div>
        <label>Name:</label>
        <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
    </div>
    <div>
        <label>DOB:</label>
        <asp:Label ID="lblDOB" runat="server" Text="Label"></asp:Label>
    </div>
    <div>
        <label>Gender:</label>
        <asp:Label ID="lblGender" runat="server" Text="Label"></asp:Label>
    </div>
    <div>
        <label>Phone Number:</label>
        <asp:Label ID="lblPhone" runat="server" Text="Label"></asp:Label>
    </div>
    <div>
        <label>Address:</label>
        <asp:Label ID="lblAddress" runat="server" Text="Label"></asp:Label>
    </div>
    <h1>New Member Information</h1>
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
            <asp:Button ID="btnUpdate" runat="server" Text="Update Member" OnClick="btnUpdate_Click" />
        </div>
</asp:Content>
