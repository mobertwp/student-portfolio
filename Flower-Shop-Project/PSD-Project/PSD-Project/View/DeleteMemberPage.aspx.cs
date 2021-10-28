using PSD_Project.Handler;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PSD_Project.View
{
    public partial class DeleteMemberPage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["role"] != "admin")
            {
                Response.Redirect("LoginPage.aspx");
            }

            int memberID = int.Parse(Request.QueryString["ID"]);
            MemberHandler.deleteMember(memberID);
            Response.Redirect("ManageMemberPage.aspx");

        }
    }
}