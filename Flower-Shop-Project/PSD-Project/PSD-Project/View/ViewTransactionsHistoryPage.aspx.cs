using CrystalDecisions.CrystalReports.Engine;
using PSD_Project.Handler;
using PSD_Project.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PSD_Project.View
{
    public partial class ViewTransactionsHistoryPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if ((string)Session["role"] != "member")
                {
                    Response.Redirect("LoginPage.aspx");
                }

                string email = Session["email"].ToString();
                int memberID = MemberRepository.getMemberIDbyEmail(email);

                ReportDocument rpdoc = new ReportDocument();
                rpdoc.Load(Server.MapPath("~/NeinteenFlowerCR.rpt"));

                NeinteenFlowerDS ds = TransactionHandler.getDS(memberID);
                rpdoc.SetDataSource(ds);

                CR.ReportSource = rpdoc;
                CR.DataBind();
                CR.RefreshReport();
                Session["myReport"] = rpdoc;
            }
            else
            {
                ReportDocument doc = (ReportDocument)Session["myReport"];
                CR.ReportSource = doc;
            }
        }
    }
}