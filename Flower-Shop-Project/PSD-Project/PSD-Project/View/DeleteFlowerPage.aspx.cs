using PSD_Project.Handler;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PSD_Project.View
{
    public partial class DeleteFlowerPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string role = (string)Session["role"];
            if (role != "employee") Response.Redirect("LoginPage.aspx");

            int flowerID = int.Parse(Request.QueryString["ID"]);
            FlowerHandler.deleteFlower(flowerID);
            Response.Redirect("ManageFlowerPage.aspx");
        }
    }
}