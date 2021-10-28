using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSD_Project.Repository;

namespace PSD_Project.View
{
    public partial class ForgotPasswordPage : System.Web.UI.Page
    {   
        private static string newPassword = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Random random = new Random();
            const string al = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            const string num = "0123456789";
            if (lblCaptcha.Text != "")
            {
                newPassword = lblCaptcha.Text;
                lblCaptcha.Text = "";
            }
            for (int i = 0; i < 3; i++)
            {
                lblCaptcha.Text += al[random.Next(26)];
            }
            for (int i = 0; i < 3; i++)
            {
                lblCaptcha.Text += num[random.Next(10)];
            }
            
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            if (MemberRepository.checkMemberEmail(tbEmail.Text) == true 
                && tbPassword.Text.Equals(newPassword)
                )
            {
                MemberRepository.changeMemberPassword(tbEmail.Text, tbPassword.Text);
                Response.Redirect("LoginPage.aspx");
            }
            else
            {
                lblIncorrect.Text = "Email doesn't exist/Wrong password";
            }
        }
    }
}