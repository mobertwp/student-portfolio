using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSD_Project.Model;
using PSD_Project.Handler;

namespace PSD_Project.View
{
    public partial class ManageFlowerPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string role = (string)Session["role"];
            if (role == "employee")
            {
                List<MsFlower> flowerList = FlowerHandler.getGetAllFlower();
                FlowerRepeater.DataSource = flowerList;
                FlowerRepeater.DataBind();
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
            
        }
    }
}