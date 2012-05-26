using System;
using System.Collections.Generic;
using MarkdownSharp;
using Nancy;
using Willog.Models;
using Willog.Services;

namespace Willog.Module
{
    public class RootModule : WillogModule
    {
        public RootModule(IDBFactory dbFactory) : base(dbFactory)
        {
            Get["/"] = _ =>
            {
                var postList = DB.Post.All().OrderByCreatedDescending().Skip(0).Take(10); ;

                var markdown = new Markdown();
                foreach (var post in postList)
                {
                    post.Content = markdown.Transform(post.Content);
                }

                dynamic model = new
                {
                    postList,
                    currentPage = 1,
                    hasNext = true,
                    hasPrevious = false,
                };

                return View["Home", model];
            };

            Get[@"/page/(?<id>[\d]{1,2})"] = _ =>
            {
                int take = 10;
                int skip = ((int) _.id - 1)*take;

                if (skip<=0)
                {
                    return Response.AsRedirect("/");
                }

                var postList = DB.Post.All().OrderByCreatedDescending().Skip(skip).Take(take); ;

                var markdown = new Markdown();
                foreach (var post in postList)
                {
                    post.Content = markdown.Transform(post.Content);
                }

                dynamic model = new
                {
                    postList,
                    currentPage = _.id,
                    hasNext = true,
                    hasPrevious = true,
                };

                return View["Home", model];
            };

            Get["/post/{slug}"] = _ =>
            {
                var model = (Post)DB.Post.FindBySlug(_.slug);
                model.Content = new Markdown().Transform(model.Content);
                return View["Post", model];
            };
        }
    }
}