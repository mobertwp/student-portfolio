<%@ Page Title="" Language="C#" MasterPageFile="~/View/Master.Master" AutoEventWireup="true" CodeBehind="UpdateFlowerPage.aspx.cs" Inherits="PSD_Project.View.EditFlowerPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Update Flower</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="NameLbl" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="NameTxt" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="ImageLbl" runat="server" Text="Image"></asp:Label>
        <asp:FileUpload ID="ImageFile" runat="server" />
    </div>
    <div>
        <asp:Label ID="DescriptionLbl" runat="server" Text="Description"></asp:Label>
        <asp:TextBox ID="DescriptionTxt" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="FlowerTypeLbl" runat="server" Text="Flower Type"></asp:Label>
        <asp:TextBox ID="FlowerTypeTxt" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="PriceLbl" runat="server" Text="Price"></asp:Label>
        <asp:TextBox ID="PriceTxt" runat="server"></asp:TextBox>
    </div>
    <asp:Label ID="MsgLbl" runat="server" Text=""></asp:Label>
    <asp:Button ID="BtnUpdate" OnClick="BtnUpdate_Click" runat="server" Text="Update" />
</asp:Content>
