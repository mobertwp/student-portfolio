<%@ Page Title="" Language="C#" MasterPageFile="~/View/Master.Master" AutoEventWireup="true" CodeBehind="ManageFlowerPage.aspx.cs" Inherits="PSD_Project.View.ManageFlowerPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Manage Flower</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HyperLink ID="InsertFlowerLink" NavigateUrl="InsertFlowerPage.aspx" runat="server">Insert Flower</asp:HyperLink>

    <div>
        <table>
            <tr>
                <th>Flower ID</th>
                <th>Flower Name</th>
                <th>Flower Type ID</th>
                <th>Flower Description</th>
                <th>Flower Price</th>
                <th>Flower Image</th>
                <th>Action</th>
            </tr>
            <asp:Repeater ID="FlowerRepeater" runat="server">
                <ItemTemplate>
                    <tr>
                         <td><%#Eval("FlowerID") %></td>
                         <td><%#Eval("FlowerName") %></td>
                         <td><%#Eval("FlowerTypeID") %></td>
                         <td><%#Eval("FlowerDescription") %></td>
                         <td><%#Eval("FlowerPrice") %></td>
                         <td>
                             <asp:Image Width="100px" ID="ImgFlower" ImageUrl='<%# Eval("FlowerImage") %>' runat="server" />
                         </td>
                         <td>
                             <a href='UpdateFlowerPage.aspx?ID=<%#Eval("FlowerID") %>' class="button">Edit</a>
                             <a href='DeleteFlowerPage.aspx?ID=<%#Eval("FlowerID") %>' class="button">Delete</a>
                         </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>
</asp:Content>
