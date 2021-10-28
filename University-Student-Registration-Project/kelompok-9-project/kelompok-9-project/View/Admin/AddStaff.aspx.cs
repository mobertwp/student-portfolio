using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using kelompok_9_project.Model;
using kelompok_9_project.Repository;
using kelompok_9_project.Factory;

namespace kelompok_9_project.View.Admin
{
    public partial class AddStaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string password = txtPassword.Text;
            string email = txtEmail.Text;
            string phoneNumber = txtPhone.Text;
            string gender = (rbMale.Checked) ? "Male" : "Female";
            int age = int.Parse(txtAge.Text);

            StaffRepository.InsertStaff(StaffFactory.CreateStaff(name, password, email, phoneNumber, gender, age));
            Response.Redirect("AddStaff.aspx");
        }
    }
}