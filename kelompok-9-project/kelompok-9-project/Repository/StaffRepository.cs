using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using kelompok_9_project.Model;

namespace kelompok_9_project.Repository
{
    public class StaffRepository
    {
        public static int GetTotalStaff()
        {
            DatabaseEntities db = new DatabaseEntities();
            return (from x in db.Staffs select x).Count();
        }
        public static void InsertStaff(Staff st)
        {
            DatabaseEntities db = new DatabaseEntities();
            db.Staffs.Add(st);
            db.SaveChanges();
        }
        public static List<Staff> GetAllStaffs()
        {
            DatabaseEntities db = new DatabaseEntities();
            return (from x in db.Staffs select x).ToList();
        }
        public static Staff GetStaffByName(string Name)
        {
            DatabaseEntities db = new DatabaseEntities();
            return (from x in db.Staffs where x.Name.Equals(Name) select x).FirstOrDefault();
        }
        public static void UpdateStaffByEmail(String email, String NewName, String NewPhoneNumber, String NewGender, int NewAge, String NewPassword)
        {
            DatabaseEntities db = new DatabaseEntities();
            Staff s = (from x in db.Staffs where x.Email.Equals(email) select x).FirstOrDefault();
            s.Name = NewName;
            s.PhoneNumber = NewPhoneNumber;
            s.Gender = NewGender;
            s.Age = NewAge;
            s.Password = NewPassword;
            db.SaveChanges();
        }
        public static void DeleteStaff(string Email)
        {
            DatabaseEntities db = new DatabaseEntities();
            Staff s = (from x in db.Staffs where x.Email.Equals(Email) select x).FirstOrDefault();
            if (s != null)
            {
                db.Staffs.Remove(s);
                db.SaveChanges();
            }
        }
        public static bool checkStaff(string email, string password)
        {
            DatabaseEntities db = new DatabaseEntities();
            Staff staff = (from data in db.Staffs
                                   where data.Email.Equals(email) && data.Password.Equals(password)
                                   select data).FirstOrDefault();
            if (staff == null)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
    }
}