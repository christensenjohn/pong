﻿using System;
namespace DataAccess.Models
{
    public class User
    {
        public int Id {get; set;}
        public string Name { get; set; }
        public string Email { get; set; }
        public DateTime Created { get; set; }
        public DateTime Updated { get; set; }
        public DateTime Deleted { get; set; }
    }
}
