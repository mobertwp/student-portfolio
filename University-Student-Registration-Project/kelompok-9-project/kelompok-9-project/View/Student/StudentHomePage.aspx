<%@ Page Title="" Language="C#" MasterPageFile="~/View/GlobalMaster.Master" AutoEventWireup="true" CodeBehind="StudentHomePage.aspx.cs" Inherits="kelompok_9_project.View.Student.StudentHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Student Dashboard</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form">
        Data Diri
        <br /><br />
        <div class="form-item">
            <label>Name: <asp:Label ID="LblName" runat="server" Text="Label"></asp:Label></label>
        </div>
        <div class="form-item">
            <label>NIS: <asp:Label ID="LblNIS" runat="server" Text="Label"></asp:Label></label>
        </div>
        <div class="form-item">
            <label>Address: <asp:Label ID="LblAddress" runat="server" Text="Label"></asp:Label></label>
        </div>
        <div class="form-item">
            <label>Telphone num: <asp:Label ID="LblGender" runat="server" Text="Label"></asp:Label></label>
        </div>
        <div class="form-item">
            <label>Gender: <asp:Label ID="LblNoTelp" runat="server" Text="Label"></asp:Label></label>
        </div>
        <div class="form-item">
            <label>Parent's Name: <asp:Label ID="LblParentName" runat="server" Text="Label"></asp:Label></label>
        </div>
        <div class="form-item">
            <label>Parent's Telphone num: <asp:Label ID="LblParentNoTelp" runat="server" Text="Label"></asp:Label></label>
        </div>
        <br />
        <div class="form-item">
            <label>Registration Status: <asp:Label ID="LblStatus" runat="server" Text=""></asp:Label></label>
        </div>
    </div>
</asp:Content>
