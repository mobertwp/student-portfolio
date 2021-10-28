using kelompok_9_project.Factory;
using kelompok_9_project.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kelompok_9_project.View
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string msg = "";
            int count = 0;

            if (txtName.Text != "")
            {
                count++;
            }
            else
            {
                msg += "Name must be filled.";
                msg += "<br>";
            }

            if (txtNIS.Text != "")
            {
                count++;
            }
            else
            {
                msg += "NIS must be filled.";
                msg += "<br>";
            }

            if (txtAddress.Text != "")
            {
                count++;
            }
            else
            {
                msg += "Address must be filled.";
                msg += "<br>";
            }

            if (txtNoTelp.Text != "")
            {
                count++;
            }
            else
            {
                msg += "Telphone number must be filled.";
                msg += "<br>";
            }

            if (rbFemale.Checked == false && rbMale.Checked == false)
            {
                msg += "Gender must be chosen.";
                msg += "<br>";
            }
            else
            {
                count++;
            }

            if (txtParentName.Text != "")
            {
                count++;
            }
            else
            {
                msg += "Parent's name must be filled.";
                msg += "<br>";
            }

            if (txtParentNoTelp.Text != "")
            {
                count++;
            }
            else
            {
                msg += "Parent's telephone number must be filled.";
                msg += "<br>";
            }

            DivMsg.Visible = true;
            LblMsg.Text = msg;
            if (count == 7)
            {
                DivBack.Visible = true;
                LblBack.Text = "Registered" + "<br>" +
                "Your given email is: your First Name + @university.ac.id" + "<br>" +
                    "Your given password is: your Parent's Name" + "<br>";
                StudentRepository.insertStudent(StudentFactory.CreateStudent(txtName.Text, txtNIS.Text, txtAddress.Text, txtNoTelp.Text,
                    (rbMale.Checked == true) ? "Male" : "Female", txtParentName.Text, txtParentNoTelp.Text));
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}