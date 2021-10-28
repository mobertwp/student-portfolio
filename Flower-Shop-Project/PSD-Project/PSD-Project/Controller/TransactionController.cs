using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PSD_Project.Controller
{
    public class TransactionController
    {
        public static bool isValidQuantity(int quantity)
        {
            if (quantity >= 1 && quantity <= 100) return true;
            return false;
        }
    }
}