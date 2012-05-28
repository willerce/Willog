using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Willog.Models
{
    public class User
    {
        public string Username { get; private set; }

        public User(string username)
        {
            Username = username;
        }
    }
}