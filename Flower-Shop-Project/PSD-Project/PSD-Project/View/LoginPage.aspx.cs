using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSD_Project.Controller;
using PSD_Project.Handler;
using PSD_Project.Repository;

namespace PSD_Project.View
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie info = Request.Cookies["info"];
            if (info != null)
            {
                tbEmail.Text = info["email"];
                tbPassword.Text = info["password"];
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string role = "";
            bool isAMember = MemberRepository.checkMember(tbEmail.Text, tbPassword.Text);
            bool isEmployee = EmployeeRepository.checkEmployee(tbEmail.Text, tbPassword.Text);

            if (tbEmail.Text.Equals("admin@gmail.com") &&
                tbPassword.Text.Equals("admin"))
            {
                role = "admin";
                Session.Add("role", role);
                Session.Add("email", tbEmail.Text);
                Response.Redirect("HomePage.aspx");
            }
            else if (isAMember == true)
            {
                if (cbRemember.Checked == true)
                {
                    HttpCookie info = new HttpCookie("info");
                    info["email"] = tbEmail.Text;
                    info["password"] = tbPassword.Text;
                    info.Expires = DateTime.Now.AddHours(24);
                    Response.Cookies.Add(info);
                }
                role = "member";
                Session.Add("role", role);
                Session.Add("email", tbEmail.Text);
                Session.Add("cartTransactionID", 0);
                Session.Add("OrderMsg", "");
                Response.Redirect("HomePage.aspx");
            }
            else if (isEmployee == true)
            {
                if (cbRemember.Checked == true)
                {
                    HttpCookie info = new HttpCookie("info");
                    info["email"] = tbEmail.Text;
                    info["password"] = tbPassword.Text;
                    info.Expires = DateTime.Now.AddHours(24);
                    Response.Cookies.Add(info);
                }
                role = "employee";
                Session.Add("role", role);
                Session.Add("email", tbEmail.Text);
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                lblIncorrect.Text = "Incorrect email/password!";
            }
        }
    }
}