using kelompok_9_project.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace kelompok_9_project.Repository
{
    public class StudentRepository
    {
        public static void insertStudent(Student student)
        {
            DatabaseEntities db = new DatabaseEntities();
            db.Students.Add(student);
            db.SaveChanges();
        }

        public static void DeleteStudent(int id)
        {
            DatabaseEntities db = new DatabaseEntities();
            Student s = (from x in db.Students where x.StudentID.Equals(id) select x).FirstOrDefault();
            if (s != null)
            {
                db.Students.Remove(s);
                db.SaveChanges();
            }
        }

        public static void UpdateStudentById(int id, String NewName,string NewNIS,
            string NewAddress, String NewNumber,String NewGender,string NewPname,
            string NewPnumber,String NewPassword)
        {
            DatabaseEntities db = new DatabaseEntities();
            Student s = (from x in db.Students where x.StudentID.Equals(id) select x).FirstOrDefault();
            s.Name = NewName;
            s.NIS = NewNIS;
            s.Address = NewAddress;
            s.TelephoneNum = NewNumber;
            s.Gender = NewGender;
            s.ParentName = NewPname;
            s.ParentTelNum = NewPnumber;
            s.Password = NewPassword;
            db.SaveChanges();
        }
        public static bool checkRegisteredStudent(string email)
        {
            DatabaseEntities db = new DatabaseEntities();
            Student student = (from data in db.Students
                               where data.Email.Equals(email)
                               select data).FirstOrDefault();
            if (student == null)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        public static List<Student> GetAllStudents()
        {
            DatabaseEntities db = new DatabaseEntities();
            return (from x in db.Students select x).ToList();
        }

        public static bool checkStudent(string email, string password)
        {
            DatabaseEntities db = new DatabaseEntities();
            Student student = (from data in db.Students
                           where data.Email.Equals(email) && data.Password.Equals(password)
                           select data).FirstOrDefault();
            if (student == null)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        public static int getStudentIDbyEmail(string email)
        {
            DatabaseEntities db = new DatabaseEntities();
            Student student = (from data in db.Students
                               where data.Email.Equals(email)
                               select data).FirstOrDefault();
            return student.StudentID;
        }

        public static Student getStudentDatabyEmail(string email)
        {
            DatabaseEntities db = new DatabaseEntities();
            Student student = (from data in db.Students
                               where data.Email.Equals(email)
                               select data).FirstOrDefault();
            return student;
        }

        public static Student getStudentDatabyId(int id)
        {
            DatabaseEntities db = new DatabaseEntities();
            Student student = (from data in db.Students
                               where data.StudentID.Equals(id)
                               select data).FirstOrDefault();
            return student;
        }
    }
}