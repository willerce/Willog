using System;
using System.Collections.Generic;
using System.Configuration;
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
                var postList = GetPostList(1);

                dynamic model = new
                {
                    postList = (dynamic) postList,
                    currentPage =(dynamic) 1,
                    hasNext = true,
                    hasPrevious = false,
                };

                return View["Home", model];
            };

            Get[@"/page/(?<id>[\d]{1,2})"] = _ =>
            {
                int page = (int) _.id;

                var postList = GetPostList(page);

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
        
        /// <summary>
        /// Get Post List
        /// </summary>
        /// <param name="page"></param>
        /// <returns></returns>
        public List<Post> GetPostList(int page)
        {
            int take = Convert.ToInt32(ConfigurationManager.AppSettings["PostNum"]);

            int skip = (page - 1) * take;

            
            var postList = DB.Post.All().OrderByCreatedDescending().Skip(skip).Take(take); ;
            postList = postList.ToList<Post>();
            var markdown = new Markdown();
            foreach (var post in postList)
            {
                post.Content = markdown.Transform(post.Content);
            }

            return postList;
        }
    }
}