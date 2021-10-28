using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PSD_Project.Controller
{
    public class EmployeeController
    {
        public static int calculateAge(DateTime DOB)
        {
            int age = 0;
            age = DateTime.Now.Year - DOB.Year;
            if (DateTime.Now.DayOfYear < DOB.DayOfYear)
                age = age - 1;

            return age;
        }
        public static bool isNumeric(string str)
        {
            foreach (char c in str)
            {
                if (c < '0' || c > '9')
                    return false;
            }

            return true;
        }
    }
}