using kelompok_9_project.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kelompok_9_project.View.Staff
{
    public partial class deleteStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["StudentID"]);
            StudentRepository.DeleteStudent(id);
            System.Diagnostics.Debug.Print(id.ToString());
            Response.Redirect("StaffHomePage.aspx");
        }
    }
}