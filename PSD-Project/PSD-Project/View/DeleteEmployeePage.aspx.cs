using PSD_Project.Handler;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PSD_Project.View
{
    public partial class DeleteEmployeePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["role"] != "admin")
            {
                Response.Redirect("LoginPage.aspx");
            }

            int employeeID = int.Parse(Request.QueryString["ID"]);
            EmployeeHandler.deleteEmployee(employeeID);
            Response.Redirect("ManageEmployeePage.aspx");
        }
    }
}