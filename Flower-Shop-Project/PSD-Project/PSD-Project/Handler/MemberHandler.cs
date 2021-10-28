using PSD_Project.Model;
using PSD_Project.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PSD_Project.Handler
{
    public class MemberHandler
    {
        public static int getMemberIDbyEmail(string email)
        {
            return MemberRepository.getMemberIDbyEmail(email);
        }
        // bagian roma
        public static List<MsMember> showAllMember()
        {
            return MemberRepository.showAllMember();
        }

        public static MsMember getMemberByMemberID(int memberID)
        {
            return MemberRepository.getMemberByMemberID(memberID);
        }
        public static void deleteMember(int memberID)
        {
            TransactionRepository.deleteDetailByTransactionIDBasedOnMemberID(memberID);
            TransactionRepository.deleteTrHeaderByMemberID(memberID);
            MemberRepository.deleteMember(memberID);
        }
        public static void updateMember(int memberID, 
            string email,  string password, string name, DateTime DOB, string gender, string phone, string address)
        {
            MemberRepository.updateMember(memberID, email, password, name, DOB, gender, phone, address);
        }
    }
}