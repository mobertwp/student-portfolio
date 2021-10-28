using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using kelompok_9_project.Repository;
using kelompok_9_project.Model;

namespace kelompok_9_project.View.Staff
{
    public partial class updateStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["StudentID"]);
            Model.Student s = StudentRepository.getStudentDatabyId(id);
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["StudentID"]);

            string Name = txtName.Text;
            string NIS = txtNIS.Text;
            string Address = txtAddress.Text;
            string PhoneNumber = txtPhone.Text;
            string Gender = (rbMale.Checked) ? "Male" : "Female";
            string Pname = txtPname.Text;
            string Pnumber = txtPnumber.Text;
            string Password = txtPassword.Text;
            StudentRepository.UpdateStudentById(id, Name,NIS,Address,PhoneNumber,
                Gender,Pname,Pnumber, Password);
            Response.Redirect("StaffHomePage.aspx");
        }
    }
}