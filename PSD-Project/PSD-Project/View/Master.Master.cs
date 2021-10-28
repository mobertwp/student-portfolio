using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PSD_Project.View
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["email"] != null)
            {
                string email = (string)Session["email"];
                LblUsername.Text = email.Substring(0, email.IndexOf("@"));
            }
        }

        protected void BtnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Session.Remove("role");
            Session.Remove("email");
            HttpCookie cookie = Response.Cookies.Get("info");
            cookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(cookie);
            Response.Redirect("LoginPage.aspx");
        }
    }
}