using PSD_Project.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PSD_Project.Repository
{
    public class TransactionRepository
    {
        public static void insertIntoHeader(TrHeader header)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            db.TrHeaders.Add(header);
            db.SaveChanges();
        }

        public static void insertIntoDetail(TrDetail detail)
        { 
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            db.TrDetails.Add(detail);
            db.SaveChanges();
        }

        // bagian roma
        public static List<int> getAllTransactionIDBasedOnMemberID(int memberID)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            var list = db.TrHeaders.Where(x => x.MemberID == memberID).Select(x => x.TransactionID).ToList();
            return list;
        }
        public static void deleteDetailByTransactionIDBasedOnMemberID(int memberID)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            List<int> transactionIDToBeDeleted = getAllTransactionIDBasedOnMemberID(memberID);
           
            var trDetailDeleted = (from x in db.TrDetails where transactionIDToBeDeleted.Contains(x.TransactionID) select x).ToList();
            foreach (var removed in trDetailDeleted)
            {
                db.TrDetails.Remove(removed);
                db.SaveChanges();
            }
        }
        public static void deleteTrHeaderByMemberID(int memberID)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            var trHeaderToBeDeleted = (from x in db.TrHeaders where x.MemberID == memberID select x).ToList();

            foreach (var removed in trHeaderToBeDeleted)
            {
                db.TrHeaders.Remove(removed);
                db.SaveChanges();
            }
        }
        public static bool checkPrimaryInTRDetail(int transactionID, int flowerID)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            var a = (from x in db.TrDetails where x.TransactionID == transactionID &&
                     x.FlowerID == flowerID select x).FirstOrDefault();
            if (a != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public static void updateQuantity(int transactionID, int flowerID, int quantity)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            TrDetail tr = (from x in db.TrDetails
                           where x.TransactionID == transactionID &&
x.FlowerID == flowerID
                           select x).FirstOrDefault();
            tr.Quantity = quantity;
            db.SaveChanges();
        }
        public static bool checkTransactionIDInDetail(int transactionID) {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            TrDetail tr = (from data in db.TrDetails
                           where data.TransactionID == transactionID select data).FirstOrDefault();
            if(tr != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public static void deleteTrHeaderbyTransactionID(int transactionID)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            TrHeader tr = (from data in db.TrHeaders
                           where data.TransactionID == transactionID
                           select data).FirstOrDefault();
            if (tr != null)
            {
                db.TrHeaders.Remove(tr);
                db.SaveChanges();
            }
        }
        public static void deleteDetailByFlowerID(int flowerID)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities(); 
            
            var trDetailDeleted = (from x in db.TrDetails where x.FlowerID == flowerID select x).ToList();
            bool otherPreOrder;
            int transactionID;
            foreach (var removed in trDetailDeleted)
            {
                transactionID = (int)removed.TransactionID;
                db.TrDetails.Remove(removed);
                db.SaveChanges();
                otherPreOrder = checkTransactionIDInDetail(transactionID);
                if (otherPreOrder == false) {
                    deleteTrHeaderbyTransactionID(transactionID);
                    db.SaveChanges();
                }
            }
        }

        public static List<TrHeader> getAllTrHeader(int memberID)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            List<TrHeader> trheaders = (from data in db.TrHeaders
                                        where data.MemberID == memberID
                                        select data).ToList();
            return trheaders;
        }

        public static List<TrDetail> getAllTrDetailAccordingToTransactionID(int transactionID)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            List<TrDetail> trdetails = (from data in db.TrDetails
                                        where data.TransactionID == transactionID
                                        select data).ToList();
            return trdetails;
        }

        public static int getSubTotal(List<TrDetail> trdetails)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            int grandTotal = 0;
            foreach(TrDetail tr in trdetails)
            {
                int qty = tr.Quantity;
                MsFlower flower = FlowerRepository.getFlowerByFlowerID(tr.FlowerID);
                int flowerPrice = flower.FlowerPrice;
                grandTotal += (qty * flowerPrice);
            }
            return grandTotal;
        }

        public static NeinteenFlowerDS getDS(List<TrHeader> trHeaders)
        {
            NeinteenFlowerDS dataset = new NeinteenFlowerDS();
            var trheader = dataset.TrHeader;
            var details = dataset.TrDetailReport;
            int grandTotal = 0;

            foreach (TrHeader th in trHeaders)
            {
                var thRow = trheader.NewRow();
                thRow["TransactionID"] = th.TransactionID;
                thRow["TransactionDate"] = th.TransactionDate;
                int subTotal = getSubTotal(getAllTrDetailAccordingToTransactionID(th.TransactionID));
                grandTotal += subTotal;
                thRow["GrandTotal"] = "Rp." + grandTotal;
                trheader.Rows.Add(thRow);

                List<TrDetail> trdetails = getAllTrDetailAccordingToTransactionID(th.TransactionID);
                foreach(TrDetail tr in trdetails)
                {
                    var detailRow = details.NewRow();
                    detailRow["TransactionID"] = tr.TransactionID;
                    MsFlower flower = FlowerRepository.getFlowerByFlowerID(tr.FlowerID);
                    detailRow["FlowerName"] = flower.FlowerName;
                    detailRow["Quantity"] = tr.Quantity;
                    detailRow["FlowerPrice"] = flower.FlowerPrice;
                    details.Rows.Add(detailRow);
                }
            }
            return dataset;
        }
    }
}