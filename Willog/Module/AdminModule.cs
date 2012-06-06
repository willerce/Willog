using System;
using System.Collections.Generic;
using System.Configuration;
using Nancy;
using Nancy.ModelBinding;
using Nancy.Security;
using Simple.Data;
using Willog.Models;
using Willog.Services;

namespace Willog.Module
{
    public class AdminModule : WillogModule
    {
        public AdminModule(IDBFactory dbFactory) : base(dbFactory,"/admin")
        {
            this.RequiresAuthentication();

            Get["/"] = _ =>
            {
                return View["AdminHome"];
            };

            Get["/post"] = _ =>
            {
                var page = Request.Query.page ?? 1;
                var postList = GetPostList((int)page);

                dynamic model = new
                {
                    postList,
                    currentPage = page,
                    hasNext = true,
                    hasPrevious = (int)page > 1
                };

                return View["PostHome", model];
            };

            Get["/post/add"] = _ => View["PostAdd"];

            Post["/post/add"] = _ =>
            {
                var post = this.Bind<Post>("title", "slug","created","content");
                post.Author = "willerce";
                DB.Post.Insert(post);

                return View["PostAdd"];
            };

            Get["/post/edit/{id}"] = _ =>
            {
                var post = DB.Post.Get(_.id);
                return View["PostEdit", post];
            };

            Post["/post/edit/{id}"] = _ =>
            {
                var id = (int)_.id;
                if(id!=0)
                {
                    var post = this.Bind<Post>("title", "slug", "content", "created");
                    DB.Post.Update(post);
                }
                return Response.AsRedirect("/admin/post");
            };

            #region Convert Wp to willog
            /* 
            Get["/convert"] = _ =>
            {

                var wbDB =
                    Database.OpenConnection(
                        "server=127.0.0.1;user=root;database=willerce_blog;password=root;Charset=utf8;Allow Zero Datetime=true");

                var postlist = wbDB.wp_posts.All();

                foreach (var p in postlist)
                {
                    if (p.post_status == "publish" & p.post_type == "post")
                    {
                        DB.Post.Insert(new
                        {
                            Slug = p.post_name,
                            Title = p.post_title,
                            Content = p.post_content,
                            Created = Convert.ToDateTime(p.post_date),
                            Author = "willerce"
                        });
                    }
                }

                return Response.AsRedirect("/");
            };*/
            #endregion
        }

        /// <summary>
        /// Get Post List
        /// </summary>
        /// <param name="page"></param>
        /// <returns></returns>
        public List<Post> GetPostList(int page)
        {
            if (page == 0)
                page = 1;
            int take = Convert.ToInt32(30);

            int skip = (page - 1) * take;


            var postList = DB.Post.FindAll(DB.Post.Type == "post").OrderByCreatedDescending().Skip(skip).Take(take); ;
            postList = postList.ToList<Post>();

            return postList;
        }
    }
}