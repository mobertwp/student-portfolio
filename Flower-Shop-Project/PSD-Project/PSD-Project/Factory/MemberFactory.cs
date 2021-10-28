using PSD_Project.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PSD_Project.Factory
{
    public class MemberFactory
    {
        public static MsMember createMember(string email, string password, string name,
            DateTime DOB, string gender, string phone, string address)
        {
            MsMember m = new MsMember();
            m.MemberEmail = email;
            m.MemberPassword = password;
            m.MemberName = name;
            m.MemberDOB = DOB;
            m.MemberGender = gender;
            m.MemberPhone = phone;
            m.MemberAddress = address;

            return m;
        }
    }
}