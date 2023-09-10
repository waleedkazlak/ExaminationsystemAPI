using Dapper;
using ExaminationsystemAPI.Domain;
using ExaminationsystemAPI.Domain.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace ExaminationsystemAPI.Services
{
    public class CountryService : ICountryService
    {
        private readonly DapperDbContext context;
       
        public CountryService(DapperDbContext context)
        {
            this.context = context;
        }
        public int Add(Country Country)
        {

            string query = @"insert into [dbo].[Country] (
                            [CountryName]
                           ,[NationalityArabic]
                           ,[Sort]
                           ,[UserID_Add]
                           ,[Date_Add])
                            OUTPUT INSERTED.CountryID
                           values(
                            @CountryName, 
                             @NationalityArabic ,
                             @Sort,
                             1,
                             getdate()) ";
            using (var connection = this.context.CreateConnection())
            {
                DynamicParameters dynamicParameters = new DynamicParameters();
                dynamicParameters.Add("NationalityArabic", Country.NationalityArabic, DbType.String);
                dynamicParameters.Add("CountryName", Country.CountryName, DbType.String);
                dynamicParameters.Add("Sort", Country.Sort, DbType.Int32);
                
               return connection.ExecuteScalar<int>(query, dynamicParameters);
                

            }
        }

        public void Delete(int Id)
        {
            string query = @"update dbo.Country set Date_Delete=getdate(),UserID_Edit = @UserID_Edit 
                            where CountryID = @CountryID";
            using (var connection = this.context.CreateConnection())
            {
                DynamicParameters dynamicParameters = new DynamicParameters();
                dynamicParameters.Add("CountryID", Id, DbType.Int32);
                // TODO : get current user Id
                dynamicParameters.Add("UserID_Edit", 1, DbType.Int32);
                connection.Execute(query, dynamicParameters);

            }

        }

        public List<Country> GetAll()
        {
            string query = "select * from dbo.Country where Show = 1 and Date_Delete is null";
            using (var connection = this.context.CreateConnection())
            {
                var list = connection.Query<Country>(query);
                return list.ToList();
            }
            
        }

        public Country GetById(int Id)
        {
            string query = "select * from dbo.Country where Date_Delete is null and CountryID=@Id";
            using (var connection = this.context.CreateConnection())
            {
                var obj = connection.QueryFirstOrDefault<Country>(query, new { Id });
                return obj;
            }
            
           
        }

        public void Update(Country Country)
        {
            string query = @"update dbo.Country set CountryName=@CountryName, 
                            NationalityArabic = @NationalityArabic ,
                            Sort = @Sort , 
                            Show = @Show 
                            where CountryID = @CountryID";
            using (var connection = this.context.CreateConnection())
            {
                DynamicParameters dynamicParameters = new DynamicParameters();
                dynamicParameters.Add("NationalityArabic" , Country.NationalityArabic,DbType.String );
                dynamicParameters.Add("CountryName", Country.CountryName, DbType.String);
                dynamicParameters.Add("Sort", Country.Sort, DbType.Int32);
                dynamicParameters.Add("Show", Country.Show, DbType.Boolean);
                dynamicParameters.Add("CountryID", Country.CountryID, DbType.Int32);
                connection.Execute(query, dynamicParameters);
               
            }
        }
    }
}
