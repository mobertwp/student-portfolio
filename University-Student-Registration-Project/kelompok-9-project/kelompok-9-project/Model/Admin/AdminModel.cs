using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace kelompok_9_project.Model.Admin
{
    public static class AdminModel
    {
        private static string email = "admin";
        private static string password = "admin";
        private static string picture = "~/Picture/admin-profile-picture.png";

        public static string getPicture()
        {
            return picture;
        }
        public static string getEmail()
        {
            return email;
        }
        public static string getPassword()
        {
            return password;
        }
    }
}