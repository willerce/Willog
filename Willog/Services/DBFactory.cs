using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using Simple.Data;

namespace Willog.Services
{
    public class DBFactory : IDBFactory
    {
        protected dynamic _db;

        public dynamic DB()
        {
            return _db ?? (_db = Database.Open());
        }
    }
}