using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSD_Project.Controller;
using PSD_Project.Handler;

namespace PSD_Project.View
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string role = (string)Session["role"];
            if (role != "employee") Response.Redirect("LoginPage.aspx");
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            string name = NameTxt.Text;
            string fileLoc = "";
            string description = DescriptionTxt.Text;
            string flowerType = FlowerTypeTxt.Text;
            string priceTxt = PriceTxt.Text;
            int price = 0;

            string msg = "";
            int count = 0;

            if (name != "")
            {
                if (name.Length < 5) msg += "Name must have minimal 5 characters" + "<br>";
                else count++;
            }
            else msg += "Name may not be empty" + "<br>";

            if (ImageFile.HasFile)
            {
                var file = ImageFile.PostedFile;
                if (file.FileName.Contains(".jpg"))
                {
                    var filePath = HttpContext.Current.Server.MapPath("~/Picture/" + file.FileName);
                    file.SaveAs(filePath);
                    fileLoc = "../Picture/" + file.FileName;
                    count++;
                }
                else msg += "Image must be in .jpg format" + "<br>";
            }
            else msg += "You must upload an image" + "<br>";

            if (description != "")
            {
                if (description.Length <= 50) msg += "Description must be longer than 50 characters" + "<br>";
                else count++;
            }
            else msg += "Description may not be empty" + "<br>";

            if (flowerType != "")
            {
                if (!flowerType.Equals("Daisies") && !flowerType.Equals("Lilies") && !flowerType.Equals("Roses"))
                {
                    msg += "Flower type must be either Daisies, Lilies or Roses" + "<br>";
                }
                else count++;
            }
            else msg += "Flower type may not be empty" + "<br>";

            if (priceTxt != "")
            {
                try
                {
                    price = int.Parse(priceTxt);
                    if (price < 20 || price > 100) msg += "Price must between 20 and 100 inclusively" + "<br>";
                    else count++;
                }
                catch
                {
                    msg += "Price must be numeric" + "<br>";
                }
            }
            else msg += "Price may not be empty" + "<br>";

            if(count == 5)
            {
                int flowerTypeID = FlowerHandler.getFlowerTypeIDbyFlowerTypeName(flowerType);
                FlowerHandler.insertFlower(FlowerHandler.createFlower(name, fileLoc, description, flowerTypeID, price));
                msg += "Success Insert";
            }
            MsgLbl.Text = msg;
        }
    }
}