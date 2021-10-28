using PSD_Project.Controller;
using PSD_Project.Factory;
using PSD_Project.Model;
using PSD_Project.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PSD_Project.Handler
{
    public class TransactionHandler
    {
        public static TrHeader insertIntoHeader(int memberID)
        {
            TrHeader header = TransactionFactory.createHeader(memberID);
            TransactionRepository.insertIntoHeader(header);

            return header;
        }

        public static void insertIntoDetail(int flowerID, int qty, int transactionID)
        {
                TrDetail detail = TransactionFactory.createDetail(flowerID, qty, transactionID);
                TransactionRepository.insertIntoDetail(detail);
        }
        public static bool checkPrimaryInTrDetail(int transactionID, int flowerID)
        {
            return TransactionRepository.checkPrimaryInTRDetail(transactionID, flowerID);
        }
        public static void updateQuantity(int transactionID, int flowerID, int quantity)
        {
            TransactionRepository.updateQuantity(transactionID, flowerID, quantity);
        }

        public static NeinteenFlowerDS getDS(int memberID)
        {
            return TransactionRepository.getDS(TransactionRepository.getAllTrHeader(memberID));
        }
    }
}