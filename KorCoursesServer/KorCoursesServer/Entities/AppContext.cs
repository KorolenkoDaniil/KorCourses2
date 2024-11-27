using KorCoursesServer.Entities;
using Microsoft.EntityFrameworkCore;

public class ApplicationContext : DbContext
{
    public DbSet<User> Users { get; set; } = null!;

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseSqlServer("Server=Danila\\MSSQLSERVER001;Database=KorCoursesServer;Trusted_Connection=True;TrustServerCertificate=True");
    }
}
