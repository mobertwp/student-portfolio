using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PSD_Project.Model;
using PSD_Project.Repository;
using PSD_Project.Factory;

namespace PSD_Project.Handler
{
    public class FlowerHandler
    {
        public static List<MsFlower> getGetAllFlower()
        {
            return FlowerRepository.GetAllFlower();
        }
        public static void insertFlower(MsFlower f)
        {
            FlowerRepository.InsertFlower(f);
        }
        public static MsFlower createFlower(string name, string image, string description,
            int flowerTypeID, int price)
        {
            return FlowerFactory.createFlower(name, image, description,flowerTypeID, price);
        }
        public static int getFlowerTypeIDbyFlowerTypeName(string name)
        {
            return FlowerRepository.GetFlowerTypeIDbyFlowerTypeName(name);
        }
        public static string getFlowerTypeNameByFlowerTypeID(int id)
        {
            return FlowerRepository.GetFlowerTypeNamebyFlowerTypeID(id);
        }
        public static MsFlower getFlowerByFlowerID(int flowerID)
        {
            return FlowerRepository.getFlowerByFlowerID(flowerID);
        }
        public static void updateFlower(int id, string name, string image, string description, 
            int flowerTypeID, int price)
        {
            FlowerRepository.UpdateFlower(id, name, image, description, flowerTypeID, price);
        }
        public static void deleteFlower(int flowerID)
        {
            TransactionRepository.deleteDetailByFlowerID(flowerID);
            FlowerRepository.deleteFlower(flowerID);
        }
    }
}