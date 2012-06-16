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

            Get["/"] = _ =>  View["AdminHome"];

            Get["/post"] = _ =>
            {
                var currentPage = Request.Query.page.HasValue ? (int)Request.Query.page : 1;
                var type = Request.Query.type.HasValue ? Request.Query.type+"" : "post";
                var postList = GetPostList(currentPage, type);


                dynamic model = new
                {
                    postList, 
                    type, 
                    currentPage,
                    hasNext = true,
                    hasPrevious = currentPage > 1
                };

                return View["PostHome", model];
            };

            Get["/post/add"] = _ => View["PostAdd"];

            Post["/post/add"] = _ =>
            {
                string type = Request.Query.type.HasValue ? Request.Query.type + "" : "post";
                var post = this.Bind<Post>("title", "slug","created","content");
                post.Type = type;
                post.Author = "willerce";
                DB.Post.Insert(post);

                return Response.AsRedirect("/admin/post?type=" + type);
            };

            Get["/post/edit/{id}"] = _ =>
            {
                var post = DB.Post.Get(_.id);
                return View["PostEdit", post];
            };

            Post["/post/edit/{id}"] = _ =>
            {
                var id = (int)_.id;
                string type = Request.Query.type.HasValue ? Request.Query.type + "" : "post";
                if(id!=0)
                {
                    var post = this.Bind<Post>("title", "slug", "content", "created");
                    post.Type = type;
                    DB.Post.Update(post);
                }
                return Response.AsRedirect("/admin/post?type="+type);
            };

            Get["/post/del/{id}"] = _ =>
            {
                var post = DB.Post.Get(_.id);
                if (post == null)
                {
                    return Response.AsRedirect("/admin");
                }
                DB.Post.DeleteById(post.Id);
                return Response.AsRedirect("/admin/post?type=" + (string)post.Type);
      
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
        /// <param name="type"></param>
        /// <returns></returns>
        public List<Post> GetPostList(int page, string type)
        {
            if (page == 0)
                page = 1;
            int take = Convert.ToInt32(30);

            int skip = (page - 1) * take;


            var postList = DB.Post.FindAll(DB.Post.Type == type).OrderByCreatedDescending().Skip(skip).Take(take); ;
            postList = postList.ToList<Post>();

            return postList;
        }
    }
}