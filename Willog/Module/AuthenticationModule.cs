using Nancy;
using Willog.Services;

namespace Willog.Module
{
    public class AuthenticationModule: WillogModule
    {
        public AuthenticationModule()
        {
            Get["/login"] = _ =>
            {
                return "Display the login form";
            };

            Post["/login"] = _ =>
            {
                return Response.AsRedirect("/admin/photos");
            };

            Post["/logout"] = _ =>
            {
                return Response.AsRedirect("/login");
            };
        }
    }
}