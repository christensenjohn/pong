using System;
namespace DataAccess.Models
{
    public class Game
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int TeamSize { get; set; }
        public int CreatedByUserId { get; set; }
        public int UpdatedByUserId { get; set; }
        public int DeletedByUserId { get; set; }
        public DateTime Created { get; set; }
        public DateTime Updated { get; set; }
        public DateTime Deleted { get; set; }
    }
}
