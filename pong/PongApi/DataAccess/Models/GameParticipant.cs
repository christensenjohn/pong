using System;
namespace DataAccess.Models
{
    public class GameParticipant
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public int GameId { get; set; }
        public bool Accepted { get; set; }
        public bool Won { get; set; }
        public int CreatedByUserId { get; set; }
        public int UpdatedByUserId { get; set; }
        public int DeletedByUserId { get; set; }
        public DateTime Created { get; set; }
        public DateTime Updated { get; set; }
        public DateTime Deleted { get; set; }
    }
}
