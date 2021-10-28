using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using kelompok_9_project.Model.Admin;
using kelompok_9_project.Repository;

namespace kelompok_9_project.View.Admin
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            imgPicture.ImageUrl = AdminModel.getPicture();
            lblName.Text = AdminModel.getEmail();

            lblTotalStaff.Text = StaffRepository.GetTotalStaff().ToString();
        }
        protected void btnAddStaff_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddStaff.aspx");
        }
        protected void btnViewStaff_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewStaff.aspx");
        }
    }
}