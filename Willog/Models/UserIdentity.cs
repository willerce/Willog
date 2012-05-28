using System.Collections.Generic;
using Nancy.Security;

namespace Willog.Models
{
    public class UserIdentity : IUserIdentity
    {
        public string UserName { get; set; }
        public IEnumerable<string> Claims { get; set; }
    }
}