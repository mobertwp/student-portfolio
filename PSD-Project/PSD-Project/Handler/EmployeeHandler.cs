using PSD_Project.Model;
using PSD_Project.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PSD_Project.Handler
{
    public class EmployeeHandler
    {
        public static List<MsEmployee> getAllEmployee()
        {
            return EmployeeRepository.getAllEmployee();
        }
        public static MsEmployee getEmployeeByEmployeeID(int employeeID)
        {
            return EmployeeRepository.getEmployeeByEmployeeID(employeeID);
        }
        public static void updateEmployee(int employeeID,
           string email, string password, string name, DateTime DOB, string gender, string phone, string address, int salary)
        {
            EmployeeRepository.updateEmployee(employeeID, email, password, name, DOB, gender, phone, address, salary);
        }
        public static void deleteEmployee(int employeeID)
        {
            EmployeeRepository.deleteEmployee(employeeID);
        }
    }
}