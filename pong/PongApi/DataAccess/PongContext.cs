using System;
using Microsoft.EntityFrameworkCore;
using DataAccess.Models;

namespace DataAccess
{
    public class PongContext : DbContext
    {
        public PongContext(DbContextOptions<PongContext> options) : base(options)
        {
        }

        public DbSet<User> Users { get; set; }
        public DbSet<Game> Games { get; set; }
        public DbSet<GameParticipant> GamePartcipants { get; set; }
        public DbSet<Rank> Ranks { get; set; }
    }

}
    