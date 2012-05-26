using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Willog.Services
{
    public interface IDBFactory
    {
        dynamic DB();
    }
}