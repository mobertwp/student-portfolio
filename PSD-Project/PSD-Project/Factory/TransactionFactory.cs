using PSD_Project.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PSD_Project.Factory
{
    public class TransactionFactory
    {
        public static TrHeader createHeader(int memberID)
        {
            TrHeader header = new TrHeader();
            header.MemberID = memberID;
            header.TransactionDate = DateTime.Now;

            return header;
        }

        public static TrDetail createDetail(int flowerID, int qty, int transactionID)
        {
            TrDetail detail = new TrDetail();
            detail.FlowerID = flowerID;
            detail.Quantity = qty;
            detail.TransactionID = transactionID;

            return detail;
        }
    }
}