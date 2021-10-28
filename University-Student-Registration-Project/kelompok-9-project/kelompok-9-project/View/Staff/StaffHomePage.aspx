<%@ Page Title="" Language="C#" MasterPageFile="~/View/GlobalMaster.Master" AutoEventWireup="true" CodeBehind="StaffHomePage.aspx.cs" Inherits="kelompok_9_project.View.Staff.StaffHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Staff Dashboard</title>
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
            <th>NIS</th>
            <th >Address</th>
            <th>Phone Number</th>
            <th>Gender</th>
            <th>Parent's Name</th>
            <th>Parent's Number</th>
            <th>Email</th>
            <th>Password</th>
            <th colspan="2">Action</th>
            
        </tr>
        <asp:Repeater ID="Repeater2" runat="server">  
            <ItemTemplate>  
             <tr>
                 <td><%#Eval("Name") %></td>
                 <td><%#Eval("NIS") %></td>
                 <td><%#Eval("Address") %></td>
                 <td><%#Eval("TelephoneNum") %></td>
                 <td><%#Eval("Gender") %></td>
                 <td><%#Eval("ParentName") %></td>
                 <td><%#Eval("ParentTelNum") %></td>
                 <td><%#Eval("Email") %></td>
                 <td><%#Eval("Password") %></td>
                 <td>
                     <a href='updateStudent.aspx?StudentID=<%#Eval("StudentID") %>'>Update</a>
                     <a href='deleteStudent.aspx?StudentID=<%#Eval("StudentID") %>'>Delete</a>
                 </td>                 
                 
             </tr>
            </ItemTemplate>  
        </asp:Repeater> 
    </table>
</asp:Content>
