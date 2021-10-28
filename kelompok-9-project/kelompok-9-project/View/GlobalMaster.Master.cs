using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kelompok_9_project.View
{
    public partial class GlobalMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = (string)(Session["email"]);
            string username = email.Substring(0, email.IndexOf("@"));
            LblHello.Text = "Hello, " + username;
        }
    }
}