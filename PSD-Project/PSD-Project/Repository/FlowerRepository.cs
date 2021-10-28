using PSD_Project.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace PSD_Project.Repository
{
    public class FlowerRepository
    {
        public static List<MsFlower> GetAllFlower()
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            return (from x in db.MsFlowers select x).ToList();
        }
        public static void InsertFlower(MsFlower f)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            db.MsFlowers.Add(f);
            db.SaveChanges();
        }

        public static int GetFlowerTypeIDbyFlowerTypeName(string name)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            MsFlowerType flowerType = (from x in db.MsFlowerTypes where x.FlowerTypeName.Equals(name) select x).FirstOrDefault();
            return flowerType.FlowerTypeID;
        }
        public static string GetFlowerTypeNamebyFlowerTypeID(int id)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            MsFlowerType flowerType = (from x in db.MsFlowerTypes where x.FlowerTypeID.Equals(id) select x).FirstOrDefault();
            return flowerType.FlowerTypeName;
        }

        public static MsFlower getFlowerByFlowerID(int flowerID)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            return (from x in db.MsFlowers where x.FlowerID == flowerID select x).FirstOrDefault();
        }
        
        public static void UpdateFlower(int id, string name, string image, string description,
            int flowerTypeID, int price)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            MsFlower f = (from x in db.MsFlowers where x.FlowerID == id select x).FirstOrDefault();
            f.FlowerName = name;
            f.FlowerImage = image;
            f.FlowerDescription = description;
            f.FlowerTypeID = flowerTypeID;
            f.FlowerPrice = price;
            db.SaveChanges();
        }
        public static void deleteFlower(int flowerID)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();

            MsFlower f = (from x in db.MsFlowers where x.FlowerID == flowerID select x).FirstOrDefault();

            if (f != null)
            {
                db.MsFlowers.Remove(f);
                db.SaveChanges();
            }
        }
    }
}