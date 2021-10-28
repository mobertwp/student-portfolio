<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ViewStaff.aspx.cs" Inherits="kelompok_9_project.View.Admin.ViewStaff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
    .staff-data {
        margin: 30px auto 0px auto;
    }
    th[colspan="3"] {
    text-align: center;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="staff-data">
        <tr>
            <th>Name</th>
            <th>Password</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>Gender</th>
            <th>Age</th>
            <th colspan="2">Action</th>
            
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">  
            <ItemTemplate>  
             <tr>
                 <td><%#Eval("Name") %></td>
                 <td><%#Eval("Password") %></td>
                 <td><%#Eval("Email") %></td>
                 <td><%#Eval("PhoneNumber") %></td>
                 <td><%#Eval("Gender") %></td>
                 <td><%#Eval("Age") %></td>
                 <td>
                     <a href='UpdatePage.aspx?email=<%#Eval("Email") %>'>Update</a>
                     <a href='DeletePage.aspx?email=<%#Eval("Email") %>'>Delete</a>
                 </td>
                 
                 
             </tr>
            </ItemTemplate>  
        </asp:Repeater> 
    </table>
</asp:Content>
