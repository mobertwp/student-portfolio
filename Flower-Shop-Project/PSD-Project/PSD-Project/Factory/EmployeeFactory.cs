﻿using PSD_Project.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PSD_Project.Factory
{
    public class EmployeeFactory
    {
        public static MsEmployee createEmployee(string email, string password, string name,
            DateTime DOB, string gender, string phone, string address, int salary)
        {
            MsEmployee employee = new MsEmployee();
            employee.EmployeeEmail = email;
            employee.EmployeePassword = password;
            employee.EmployeeName = name;
            employee.EmployeeDOB = DOB;
            employee.EmployeeGender = gender;
            employee.EmployeePhone = phone;
            employee.EmployeeAddress = address;
            employee.EmployeeSalary = salary;

            return employee;
        }
    }
}