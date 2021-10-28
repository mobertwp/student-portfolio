using PSD_Project.Controller;
using PSD_Project.Handler;
using PSD_Project.Model;
using PSD_Project.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PSD_Project.View
{
    public partial class UpdateEmployeePage : System.Web.UI.Page
    {
        static int employeeID = -1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["role"] != "admin")
            {
                Response.Redirect("LoginPage.aspx");
            }

            employeeID = int.Parse(Request.QueryString["ID"]);
            MsEmployee employee = EmployeeHandler.getEmployeeByEmployeeID(employeeID);

            lblEmail.Text = employee.EmployeeEmail;
            lblAddress.Text = employee.EmployeeAddress;
            lblDOB.Text = employee.EmployeeDOB.ToShortDateString();
            lblPassword.Text = employee.EmployeePassword;
            lblPhone.Text = employee.EmployeePhone;
            lblName.Text = employee.EmployeeName;
            lblGender.Text = employee.EmployeeGender;
            lblSalary.Text = (employee.EmployeeSalary).ToString();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string msg = "";
            int count = 0;


            var parsedDate = DateTime.Now;
            if (tbDOB.Text != "")
            {
                parsedDate = DateTime.Parse(tbDOB.Text);
            }

            if (tbEmail.Text.Equals(lblEmail.Text) == true)
            {
                count++;
            }
            else
            {
                if (MemberRepository.checkMemberEmail(tbEmail.Text) == true ||
                EmployeeRepository.checkEmployeeEmail(tbEmail.Text) == true ||
                (tbEmail.Text.Equals("admin@gmail.com") && tbPassword.Text.Equals("admin")))
                {
                    msg += "Email must be unique/Email must be filled/Wrong format" + "<br>";
                }
                else
                {
                    count++;
                }
            }

            if (tbPassword.Text.Length >= 3 && tbPassword.Text.Length <= 20)
            {
                count++;
            }
            else
            {
                msg += "Password's length must be between 3 and 20 (inclusive)" + "<br>";
            }

            if (tbName.Text.Length >= 3 && tbName.Text.Length <= 20)
            {
                count++;
            }
            else
            {
                msg += "Name's length must be between 3 and 20 (inclusive)" + "<br>";
            }

            // calculate age
            //var DOB = cdrDOB.SelectedDate;
            int age = EmployeeController.calculateAge(parsedDate);

            if (age < 17)
            {
                msg += "You must be 17 years old or above to register" + "<br>";
            }
            else
            {
                count++;
            }

            if (rbFemale.Checked == false && rbMale.Checked == false)
            {
                msg += "Gender must be chosen" + "<br>";
            }
            else
            {
                count++;
            }

            if (EmployeeController.isNumeric(tbPhone.Text) == false)
            {
                msg += "Phone number must be numeric" + "<br>";
            }
            else
            {
                count++;
            }

            if (tbAddress.Text.Contains("Street") || tbAddress.Text.Contains("street"))
            {
                count++;
            }
            else
            {
                msg += "Please enter a valid address" + "<br>";
            }

            if (EmployeeController.isNumeric(tbSalary.Text) == false)
            {
                msg += "Salary must be numeric" + "<br>";
            }
            else
            {
                int salary = 0;
                if (tbSalary.Text != "") salary = int.Parse(tbSalary.Text);
                
                if (salary >= 100 && salary <= 1000)
                {
                    count++;
                }
                else
                {
                    msg += "Salary must be between 100 to 1000" + "<br>";
                }
            }

            lblMessage.Text = msg + count.ToString();
            if (count == 8)
            {
                lblMessage.Text = "Updated";
                EmployeeHandler.updateEmployee(employeeID, tbEmail.Text, tbPassword.Text,
                    tbName.Text, parsedDate, (rbMale.Checked == true) ? "Male" : "Female", tbPhone.Text, 
                    tbAddress.Text, int.Parse(tbSalary.Text));

            }
        }
    }
}