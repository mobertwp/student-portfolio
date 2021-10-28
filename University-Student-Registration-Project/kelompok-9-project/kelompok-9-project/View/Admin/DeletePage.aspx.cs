using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using kelompok_9_project.Repository;

namespace kelompok_9_project.View.Admin
{
    public partial class DeletePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string emailQuery = (Request.QueryString["email"]);
            StaffRepository.DeleteStaff(emailQuery);
            Response.Redirect("ViewStaff.aspx");
        }
    }
}