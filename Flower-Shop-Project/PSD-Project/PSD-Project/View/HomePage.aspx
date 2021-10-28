<%@ Page Title="" Language="C#" MasterPageFile="~/View/Master.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="PSD_Project.View.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Home</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div ID="DivAdmin" runat="server" visible="false">
        <asp:Button ID="BtnManageMember" OnClick="BtnManageMember_Click" runat="server" Text="Manage Member" />
        <asp:Button ID="BtnManageEmployee" OnClick="BtnManageEmployee_Click" runat="server" Text="Manage Employee" />
    </div>
    <div ID="DivEmployee" runat="server" visible="false">
        <asp:Button ID="BtnManageFlower" OnClick="BtnManageFlower_Click" runat="server" Text="Manage Flower" />
    </div>
    <div ID="DivMember" runat="server" visible="false">
        <br />
        <asp:Button ID="BtnViewTransaction" onclick="BtnViewTransaction_Click" runat="server" Text="View Transaction" />
        <br /><br />
        <table class="staff-data">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Image</th>
                <th colspan="1">Action</th>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">  
                <ItemTemplate>  
                 <tr>
                     <td><%#Eval("FlowerID") %></td>
                     <td><%#Eval("FlowerName") %></td>
                     <td><%#Eval("FlowerDescription") %></td>
                     <td><%#Eval("FlowerPrice") %></td>
                     <td>
                         <asp:Image Width="100px" ID="ImgFlower" ImageUrl='<%# Eval("FlowerImage") %>' runat="server" />
                     </td>
                     <td>
                         <a href='PreOrderPage.aspx?ID=<%#Eval("FlowerID") %>' class="button">Pre Order</a>
                     </td>
                 </tr>
                </ItemTemplate>  
            </asp:Repeater> 
        </table>
    </div>
</asp:Content>
