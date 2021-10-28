<%@ Page Title="" Language="C#" MasterPageFile="~/View/Master.Master" AutoEventWireup="true" CodeBehind="ManageEmployeePage.aspx.cs" Inherits="PSD_Project.View.ManageEmployeePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Manage Employee</title>
     <style>
        td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
    .employee-data {
        margin: 30px auto 0px auto;
    }
    th[colspan="3"] {
    text-align: center;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HyperLink ID="InsertEmployeeLink" NavigateUrl="InsertEmployeePage.aspx" runat="server">Insert Employee</asp:HyperLink>
    <table class="employee-data">
        <tr>
            <th>Email</th>
            <th>Password</th>
            <th>Name</th>
            <th>DOB</th>
            <th>Gender</th>
            <th>Phone Number</th>
            <th>Address</th>
            <th>Salary</th>
            <th colspan="2">Action</th>
            
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">  
            <ItemTemplate>  
                <tr>
                    <td><%#Eval("EmployeeEmail") %></td>
                    <td><%#Eval("EmployeePassword") %></td>
                    <td><%#Eval("EmployeeName") %></td>
                    <td><%#Eval("EmployeeDOB") %></td>
                    <td><%#Eval("EmployeeGender") %></td>
                    <td><%#Eval("EmployeePhone") %></td>
                    <td><%#Eval("EmployeeAddress") %></td>
                    <td><%#Eval("EmployeeSalary") %></td>
                    <td>
                        <a href='UpdateEmployeePage.aspx?ID=<%#Eval("EmployeeID") %>' class="button">Update</a>
                        <a href='DeleteEmployeePage.aspx?ID=<%#Eval("EmployeeID") %>' class="button">Delete</a>
                    </td>
                 
                 
                </tr>
            </ItemTemplate>  
        </asp:Repeater> 
    </table>
</asp:Content>
