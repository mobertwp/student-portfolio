<%@ Page Title="" Language="C#" MasterPageFile="~/View/Master.Master" AutoEventWireup="true" CodeBehind="PreOrderPage.aspx.cs" Inherits="PSD_Project.View.PreOrderPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Pre Order</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <br />
        <asp:Label ID="LblQuantity" runat="server" Text="Quantity"></asp:Label>
        <asp:TextBox ID="TbQuantity" TextMode="Number" runat="server"></asp:TextBox>
        <asp:Button ID="BtnOrder" OnClick="BtnOrder_Click" runat="server" Text="Preorder" />
        <asp:Button ID="btnUpdate" OnClick="btnUpdate_Click" runat="server" Visible="false" Text="Update PreOrder" />
        <asp:Label ID="LblError" Visible="true" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
