using Microsoft.Extensions.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ExaminationsystemAPI.Domain.Data
{
    public class DapperDbContext
    {
        private readonly IConfiguration configuration;
        private readonly string connectionstring;

        public DapperDbContext(IConfiguration configuration)
        {
            this.configuration = configuration;
            this.connectionstring = this.configuration.GetConnectionString("Default");
        }
        public IDbConnection CreateConnection()
        {
            return new SqlConnection(connectionstring);
        }
    }
}
