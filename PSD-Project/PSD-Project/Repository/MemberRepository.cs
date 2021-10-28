using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PSD_Project.Model;

namespace PSD_Project.Repository
{
    public class MemberRepository
    {
        public static bool checkMember(string email, string password)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            MsMember member = (from x in db.MsMembers
                               where x.MemberEmail.Equals(email)
        && x.MemberPassword.Equals(password)
                               select x).FirstOrDefault();
            if (member == null)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        public static bool checkMemberEmail(string email)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            MsMember member = (from x in db.MsMembers
                               where x.MemberEmail.Equals(email)
                               select x).FirstOrDefault();
            if (member == null)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        
        public static void changeMemberPassword(string email, string password)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            MsMember member = (from x in db.MsMembers
                               where x.MemberEmail.Equals(email)
                               select x).FirstOrDefault();
            member.MemberPassword = password;
            db.SaveChanges();
        }

        public static void insertMember(MsMember m)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            db.MsMembers.Add(m);
            db.SaveChanges();
        }

        public static int getMemberIDbyEmail(string email)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            return (from data in db.MsMembers
                      where data.MemberEmail.Equals(email)
                      select data.MemberID).FirstOrDefault();
        }

        //bagian roma
        public static List<MsMember> showAllMember()
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            return (from x in db.MsMembers select x).ToList();
        }
        public static MsMember getMemberByMemberID(int memberID)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();
            return (from x in db.MsMembers where x.MemberID == memberID select x).FirstOrDefault();

        }
        public static void deleteMember(int memberID)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();

            MsMember m = (from x in db.MsMembers where x.MemberID == memberID select x).FirstOrDefault();

            if (m != null)
            {
                db.MsMembers.Remove(m);
                db.SaveChanges();
            }
        }
        public static void updateMember(int memberID, 
            string email, string password, string name, DateTime DOB, string gender, string phone, string address)
        {
            NeinteenFlowerEntities db = new NeinteenFlowerEntities();

            MsMember m = (from x in db.MsMembers where x.MemberID == memberID select x).FirstOrDefault();
            m.MemberEmail = email;
            m.MemberPassword = password;
            m.MemberName = name;
            m.MemberDOB = DOB;
            m.MemberGender = gender;
            m.MemberPhone = phone;
            m.MemberAddress = address;
            db.SaveChanges();

        }
    }
}