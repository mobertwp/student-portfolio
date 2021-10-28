using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PSD_Project.Model;

namespace PSD_Project.Repository
{
    public class EmployeeRepository
    {
        public static bool checkEmployeeEmail(string email)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            MsEmployee employee = (from x in db.MsEmployees
                                   where x.EmployeeEmail.Equals(email)
                                   select x).FirstOrDefault();
            if (employee == null)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        public static bool checkEmployee(string email, string password)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            MsEmployee employee = (from x in db.MsEmployees
                               where x.EmployeeEmail.Equals(email)
        && x.EmployeePassword.Equals(password)
                               select x).FirstOrDefault();
            if (employee == null)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        public static List<MsEmployee> getAllEmployee()
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            return (from x in db.MsEmployees select x).ToList();
        }
        public static void insertEmployee(MsEmployee employee)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            db.MsEmployees.Add(employee);
            db.SaveChanges();
        }
        public static MsEmployee getEmployeeByEmployeeID(int employeeID)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            return (from x in db.MsEmployees where x.EmployeeID == employeeID select x).FirstOrDefault();

        }
        public static void updateEmployee(int employeeID,
            string email, string password, string name, DateTime DOB, string gender, string phone, string address, int salary)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();

            MsEmployee employee = (from x in db.MsEmployees where x.EmployeeID == employeeID select x).FirstOrDefault();
            employee.EmployeeEmail = email;
            employee.EmployeePassword = password;
            employee.EmployeeName = name;
            employee.EmployeeDOB = DOB;
            employee.EmployeeGender = gender;
            employee.EmployeePhone = phone;
            employee.EmployeeAddress = address;
            employee.EmployeeSalary = salary;
            db.SaveChanges();

        }
        public static void deleteEmployee(int employeeID)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            MsEmployee employee = (from x in db.MsEmployees
                                   where x.EmployeeID == employeeID
                                   select x).FirstOrDefault();
            if (employee != null)
            {
                db.MsEmployees.Remove(employee);
                db.SaveChanges();
            }
        }
    }
}