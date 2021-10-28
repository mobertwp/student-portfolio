using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PSD_Project.Controller
{
    public class FlowerController
    {
        public static string ValidateName(string name)
        {
            if (name != "")
            {
                if (name.Length < 5) return "Name must have minimal 5 characters";
                else return "";
            }
            else return "Name may not be empty";
        }
    }
}