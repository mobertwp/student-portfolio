using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using kelompok_9_project.Repository;

namespace kelompok_9_project.View.Admin
{
    public partial class UpdatePage : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Update_Click(object sender, EventArgs e)
        {
            string emailQuery = (Request.QueryString["email"]);

            string Name = txtName.Text;
            string PhoneNumber = txtPhone.Text;
            string Gender = (rbMale.Checked) ? "Male" : "Female";
            string Age = txtAge.Text;
            string Password = txtPassword.Text;
            StaffRepository.UpdateStaffByEmail(emailQuery, Name, PhoneNumber,
                Gender, int.Parse(Age), Password);
            Response.Redirect("ViewStaff.aspx");
        }
    }
}