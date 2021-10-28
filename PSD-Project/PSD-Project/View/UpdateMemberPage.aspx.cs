using PSD_Project.Controller;
using PSD_Project.Factory;
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
    public partial class UpdateMemberPage : System.Web.UI.Page
    {
        static int memberID = -1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["role"] != "admin")
            {
                Response.Redirect("LoginPage.aspx");
            }

            memberID = int.Parse(Request.QueryString["ID"]);
            MsMember m = MemberHandler.getMemberByMemberID(memberID);

            lblEmail.Text = m.MemberEmail;
            lblAddress.Text = m.MemberAddress;
            lblDOB.Text = m.MemberDOB.ToShortDateString();
            lblPassword.Text = m.MemberPassword;
            lblPhone.Text = m.MemberPhone;
            lblName.Text = m.MemberName;
            lblGender.Text = m.MemberGender;
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
            int age = MemberController.calculateAge(parsedDate);

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

            if (MemberController.isNumeric(tbPhone.Text) == false)
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

            lblMessage.Text = msg + count.ToString();
            if (count == 7)
            {
                lblMessage.Text = "Updated";
                MemberHandler.updateMember(memberID, tbEmail.Text, tbPassword.Text,
                    tbName.Text, parsedDate, (rbMale.Checked == true) ? "Male" : "Female", tbPhone.Text, tbAddress.Text);

            }
        }
    }
}