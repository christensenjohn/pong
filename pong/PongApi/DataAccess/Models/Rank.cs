using System;
namespace DataAccess.Models
{
    public class Rank
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public int RankScore { get; set; }
        public DateTime Created { get; set; }
        public DateTime Updated { get; set; }
        public DateTime Deleted { get; set; }
    }
}
