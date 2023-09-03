using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using WebApplication2.Models;

namespace WebApplication2.Data
{
    public class RainbowSchoolManagementContext : DbContext
    {
        public RainbowSchoolManagementContext (DbContextOptions<RainbowSchoolManagementContext> options)
            : base(options)
        {
        }

        public DbSet<WebApplication2.Models.Class> Class { get; set; } = default!;

        public DbSet<WebApplication2.Models.Student>? Student { get; set; }

        public DbSet<WebApplication2.Models.Subject>? Subject { get; set; }
    }
}
