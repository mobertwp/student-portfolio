<%@ Page Title="" Language="C#" MasterPageFile="~/View/Master.Master" AutoEventWireup="true" CodeBehind="ManageMemberPage.aspx.cs" Inherits="PSD_Project.View.ManageMemberPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Manage Member</title>
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
    <a href="InsertMemberPage.aspx">Insert Member</a>
    <table class="staff-data">
        <tr>
            <th>Email</th>
            <th>Password</th>
            <th>Name</th>
            <th>DOB</th>
            <th>Gender</th>
            <th>Phone Number</th>
            <th>Address</th>
            <th colspan="2">Action</th>
            
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">  
            <ItemTemplate>  
             <tr>
                 <td><%#Eval("MemberEmail") %></td>
                 <td><%#Eval("MemberPassword") %></td>
                 <td><%#Eval("MemberName") %></td>
                 <td><%#Eval("MemberDOB") %></td>
                 <td><%#Eval("MemberGender") %></td>
                 <td><%#Eval("MemberPhone") %></td>
                 <td><%#Eval("MemberAddress") %></td>
                 <td>
                     <a href='UpdateMemberPage.aspx?ID=<%#Eval("MemberID") %>' class="button">Update</a>
                     <a href='DeleteMemberPage.aspx?ID=<%#Eval("MemberID") %>' class="button">Delete</a>
                 </td>
                 
                 
             </tr>
            </ItemTemplate>  
        </asp:Repeater> 
    </table>
</asp:Content>
