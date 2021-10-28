using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PSD_Project.Model;

namespace PSD_Project.Factory
{
    public class FlowerFactory
    {
        public static MsFlower createFlower(string name, string image, string description, 
            int flowerTypeID, int price)
        {
            MsFlower f = new MsFlower();
            f.FlowerName = name;
            f.FlowerImage = image;
            f.FlowerDescription = description;
            f.FlowerTypeID = flowerTypeID;
            f.FlowerPrice = price;
            return f;
        }
    }
}