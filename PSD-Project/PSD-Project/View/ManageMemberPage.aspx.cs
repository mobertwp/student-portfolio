using PSD_Project.Handler;
using PSD_Project.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PSD_Project.View
{
    public partial class ManageMemberPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["role"] != "admin")
            {
                Response.Redirect("LoginPage.aspx");
            }

            List<MsMember> members = MemberHandler.showAllMember();
            Repeater1.DataSource = members;
            Repeater1.DataBind();
        }
    }
}