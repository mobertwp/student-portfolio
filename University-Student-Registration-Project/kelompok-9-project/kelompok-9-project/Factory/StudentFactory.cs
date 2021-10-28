using kelompok_9_project.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace kelompok_9_project.Factory
{
    public class StudentFactory
    {
        public static Student CreateStudent(string Name,
                                            string NIS,
                                            string Address,
                                            string NoTelp,
                                            string Gender,
                                            string ParentName,
                                            string ParentTelNum)
        {
            Student student = new Student();
            student.Name = Name;
            student.NIS = NIS;
            student.Address = Address;
            student.TelephoneNum = NoTelp;
            student.Gender = Gender;
            student.ParentName = ParentName;
            student.ParentTelNum = ParentTelNum;

            string firstName = "";
            string temp = Name.Replace(" ",null);
            if(temp.Length == Name.Length)
            {
                student.Email = Name + "@university.ac.id";
            }
            else
            {
                firstName = Name.Substring(0, Name.IndexOf(" "));
                student.Email = firstName + "@university.ac.id";
            }
            student.Password = ParentName;

            return student;
        }
    }
}