using PSD_Project.Controller;
using PSD_Project.Handler;
using PSD_Project.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PSD_Project.View
{
    public partial class PreOrderPage : System.Web.UI.Page
    {
        static int memberID;
        static int flowerID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["role"] != "member")
            {
                Response.Redirect("LoginPage.aspx");
            }

            if((string)Session["OrderMsg"] != "")
            {
                LblError.Text = Session["OrderMsg"].ToString();
                Session["OrderMsg"] = "";
            }

            string email = (string)Session["email"];
            memberID = MemberHandler.getMemberIDbyEmail(email);
            flowerID = int.Parse(Request.QueryString["ID"]);

            int transactionID = (int)Session["cartTransactionID"];

            if (TransactionHandler.checkPrimaryInTrDetail(transactionID, flowerID) == true)
            {
                BtnOrder.Visible = false;
                btnUpdate.Visible = true;
            }
            else
            {
                btnUpdate.Visible = false;
            }
        }

        protected void BtnOrder_Click(object sender, EventArgs e)
        {
            int qty = int.Parse(TbQuantity.Text);
            int transactionID = (int)Session["cartTransactionID"];
            if (TransactionController.isValidQuantity(qty))
            {
                if (transactionID == 0)
                {
                    TrHeader header = TransactionHandler.insertIntoHeader(memberID);
                    transactionID = header.TransactionID;
                    Session["cartTransactionID"] = transactionID;
                }
                TransactionHandler.insertIntoDetail(flowerID, qty, transactionID);

                Session.Add("OrderMsg", "Preorder Success");
            }
            else
            {
                Session.Add("OrderMsg", "Preorder Failed, Quantity must be between 1 to 100");
            }
            Response.Redirect("PreOrderPage.aspx?ID=" + flowerID);
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            

            int transactionID = (int)Session["cartTransactionID"];

            TransactionHandler.updateQuantity(transactionID, flowerID, int.Parse(TbQuantity.Text));
            
        }
    }
}