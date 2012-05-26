namespace Willog.Models
{
    public class Comment
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Url { get; set; }
        public string Content { get; set; }
        public int Parent { get; set; }
    }
}