using System;
using System.Collections.Generic;
using kelompok_9_project.Model;
using kelompok_9_project.Repository;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kelompok_9_project.View.Staff
{
    public partial class StaffHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Model.Student> students = StudentRepository.GetAllStudents();
            Repeater2.DataSource = students;
            Repeater2.DataBind();
        }
    }
}