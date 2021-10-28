using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using kelompok_9_project.Model;

namespace kelompok_9_project.Factory
{
    public class StaffFactory
    {
        public static Staff CreateStaff(string name, string password, string email, 
            string phoneNumber, string gender, int age)
        {
            Staff st = new Staff();
            st.Name = name;
            st.Password = password;
            st.Email = email;
            st.PhoneNumber = phoneNumber;
            st.Gender = gender;
            st.Age = age;
            return st;
        }
    }
}