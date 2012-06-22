using System;
using System.Collections.Generic;
using MarkdownSharp;
using Nancy;
using Willog.Models;
using Willog.Services;
using System.Xml;
using System.Xml.Linq;
using System.Text;

namespace Willog.Module
{
    public class MainModule : WillogModule
    {
        public MainModule(IDBFactory dbFactory) : base(dbFactory)
        {
            Get["/"] = _ =>
            {
                var postList = GetPostList(1, 5);

                var maxPage = GetMaxPage(5);
                dynamic model = new
                {
                    postList = (dynamic) postList,
                    currentPage =(dynamic) 1,
                    hasNext = maxPage > 1,
                    hasPrevious = false,
                    maxPage = maxPage
                };

                return View["Home", model];
            };

            Get[@"/page/(?<id>[\d]{1,2})"] = _ =>
            {
                
                int page = (int) _.id;

                var postList = GetPostList(page, 5);
                var maxPage = GetMaxPage(5);

                dynamic model = new
                {
                    postList,
                    currentPage = _.id,
                    hasNext = page < maxPage,
                    hasPrevious = page > 1,
                    maxPage = maxPage
                };

                return View["Home", model];
            };

            Get["/post/{slug}"] = _ =>
            {
                var model = DB.Post.FindBySlug(_.slug);
                var lastPostList = GetPostList(1, 5);
                model.Content = new Markdown().Transform(model.Content);
                model.LastPost = lastPostList;
                return View["Post", model];
            };

            Get["/feed"] = _ =>
            {
                var markDown = new Markdown();
                var list = GetPostList(1, 100);

                return View["Feed", list].WithContentType("application/xml");
            };

            Get[@"/(?<page>[a-z]+)"] = _ =>
            {
                var model = DB.Post.FindBySlugAndType(_.page, "page");
                model.Content = new Markdown().Transform(model.Content);
                return View["Page", model];
            };
        }
        
        /// <summary>
        /// Get Post List
        /// </summary>
        /// <param name="page"></param>
        /// <returns></returns>
        public List<Post> GetPostList(int page, int take)
        {
            int skip = (page - 1) * take;
            
            var postList = DB.Post.FindAll(DB.Post.Type == "post").OrderByCreatedDescending().Skip(skip).Take(take); ;
            postList = postList.ToList<Post>();
            var markdown = new Markdown();
            foreach (var post in postList)
            {
                post.Content = markdown.Transform(post.Content);
            }

            return postList;
        }

        public int GetMaxPage(int take)
        {
            double maxPage = DB.Post.All().ToList().Count / Convert.ToDouble(take);

            if (maxPage > (int)maxPage)
                maxPage++;

            return (int)maxPage;
        }
    }
}