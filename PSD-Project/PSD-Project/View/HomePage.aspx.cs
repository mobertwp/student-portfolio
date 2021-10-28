using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSD_Project.Model;
using PSD_Project.Repository;

namespace PSD_Project.View
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string role = (string)Session["role"];
            if(role == "admin")
            {
                DivAdmin.Visible = true;
            }
            else if(role == "employee")
            {
                DivEmployee.Visible = true;
            }
            else if(role == "member")
            {
                DivMember.Visible = true;
                List<MsFlower> listFlower = FlowerRepository.GetAllFlower();
                Repeater1.DataSource = listFlower;
                Repeater1.DataBind();
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }

        protected void BtnViewTransaction_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewTransactionsHistoryPage.aspx");
        }

        protected void BtnManageMember_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageMemberPage.aspx");
        }

        protected void BtnManageEmployee_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageEmployeePage.aspx");
        }

        protected void BtnManageFlower_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageFlowerPage.aspx");
        }
    }
}