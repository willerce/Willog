using System;
using System.Dynamic;
using Nancy;
using Nancy.Authentication.Forms;
using Nancy.Extensions;
using Willog.Services;

namespace Willog.Module
{
    public class AuthenticationModule: WillogModule
    {
        public AuthenticationModule() : base("/admin")
        {
            Get["/login"] = _ =>
            {
                dynamic model = new ExpandoObject();
                model.Errored = Request.Query.error.HasValue;

                return View["login", model];
            };

            Post["/login"] = x =>
            {
                var userGuid = UserMapper.ValidateUser((string)Request.Form.Username, (string)Request.Form.Password);

                if (userGuid == null)
                {
                    return Context.GetRedirect("~/admin/login?error=true&username=" + (string)Request.Form.Username + "&returnUrl=" + (string)Request.Query.returnUrl);
                }

                DateTime? expiry = null;
                if (Request.Form.RememberMe.HasValue)
                {
                    expiry = DateTime.Now.AddDays(7);
                }

                return this.LoginAndRedirect(userGuid.Value, expiry);
            };


            Get["/logout"] = _ =>
            {
                return Response.AsRedirect("/login");
            };
        }
    }
}