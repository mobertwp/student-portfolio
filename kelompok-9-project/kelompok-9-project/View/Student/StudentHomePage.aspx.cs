using kelompok_9_project.Model;
using kelompok_9_project.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kelompok_9_project.View.Student
{
    public partial class StudentHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = (string)(Session["email"]);

            Model.Student student = new Model.Student();
            student = StudentRepository.getStudentDatabyEmail(email);
            LblName.Text = student.Name;
            LblNIS.Text = student.NIS;
            LblAddress.Text = student.Address;
            LblGender.Text = student.Gender;
            LblNoTelp.Text = student.TelephoneNum;
            LblParentName.Text = student.ParentName;
            LblParentNoTelp.Text = student.ParentTelNum;
            
            bool registered = StudentRepository.checkRegisteredStudent(email);
            if (registered) 
            { 
                LblStatus.Text = "Accepted"; 
                LblStatus.Attributes.Add("style", "color: green;");
            }
            else
            {
                LblStatus.Text = "Rejected";
                LblStatus.Attributes.Add("style", "color: red;");
            }
        }
    }
}