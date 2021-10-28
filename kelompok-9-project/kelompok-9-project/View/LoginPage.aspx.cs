using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using kelompok_9_project.Model.Admin;
using kelompok_9_project.Repository;

namespace kelompok_9_project.View
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string password = txtPassword.Text;


            bool isStaff = StaffRepository.checkStaff(email, password);
            bool isStudent = StudentRepository.checkStudent(email, password);

            if (email.Equals(AdminModel.getEmail()) && password.Equals(AdminModel.getPassword())) {
                Response.Redirect("~/View/Admin/AdminHomepage.aspx");
            }
            else if (isStaff)
            {
                Session.Add("email", email);
                Response.Redirect("./Staff/StaffHomePage.aspx");
            }else if (isStudent)
            {
                Session.Add("email", email);
                Response.Redirect("./Student/StudentHomePage.aspx");
            }
            else
            {
                DivError.Visible = true;
                LblError.Text = "Incorrect Email/Password or Account has not been created";
            }

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterPage.aspx");
        }
    }
}