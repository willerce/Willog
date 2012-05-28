using Nancy;
using Willog.Services;

namespace Willog.Module
{
    public class WillogModule : NancyModule
    {
        protected dynamic DB;

        public WillogModule()
        {
        }

        public WillogModule(string modulePath) : base(modulePath)
        {
        }

        public WillogModule(IDBFactory dbFactory)
        {
            DB = dbFactory.DB();
        }

        public WillogModule(IDBFactory dbFactory,string modulePath)
            : base(modulePath)
        {
            DB = dbFactory.DB();
        }
    }
}