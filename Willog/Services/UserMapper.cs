using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using Nancy;
using Nancy.Authentication.Forms;
using Nancy.Security;
using Willog.Models;

namespace Willog.Services
{
    public class UserMapper: IUserMapper
    {
        private static List<Tuple<string, string, Guid>> users = new List<Tuple<string, string, Guid>>();

        static UserMapper()
        {
            var userANDpwd = ConfigurationManager.AppSettings["userANDpwd"].Split('+');
            users.Add(new Tuple<string, string, Guid>(userANDpwd[0], userANDpwd[1], Guid.NewGuid()));
        }

        public IUserIdentity GetUserFromIdentifier(Guid identifier, NancyContext context)
        {
            var userRecord = users.FirstOrDefault(u => u.Item3 == identifier);

            return userRecord == null
                       ? null
                       : new UserIdentity
                       {
                           UserName = userRecord.Item1
                       };
        }

        public static Guid? ValidateUser(string username, string password)
        {
            var userRecord = users.FirstOrDefault(u => u.Item1 == username && u.Item2 == password);

            if (userRecord == null)
            {
                return null;
            }

            return userRecord.Item3;
        }
    }
}