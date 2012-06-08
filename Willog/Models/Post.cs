using System;
using Simple.Data;

namespace Willog.Models
{
    public class Post
    {
        public int Id { get; set; }
        public string Slug { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public DateTime Created { get; set; }
        public string Author { get; set; }
        public string Type { get; set; }
    }
}