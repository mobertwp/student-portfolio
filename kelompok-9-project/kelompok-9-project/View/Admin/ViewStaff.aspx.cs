using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using kelompok_9_project.Model;
using kelompok_9_project.Repository;

namespace kelompok_9_project.View.Admin
{
    public partial class ViewStaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Model.Staff> staffs = StaffRepository.GetAllStaffs();
            Repeater1.DataSource = staffs;
            Repeater1.DataBind();
            
        }
        
    }
}