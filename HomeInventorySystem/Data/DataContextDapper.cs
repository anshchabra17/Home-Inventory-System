using System.Data;
using Dapper;
using Microsoft.Data.SqlClient;

namespace HomeInventorySystem
{
    public class DataContextDapper
    {
        private string _ConnectionString = "Server=localhost;Database=HomeInventorySystem;TrustServerCertificate=true;Trusted_Connection=true;";


        //Execute data Method and return Row count

        public int ExecutewithRowCount(string sql)
        {
            IDbConnection dbConnection = new SqlConnection(_ConnectionString);
            return dbConnection.Execute(sql);
        }

        //Execute data Method and tell and row affected or not if return Row count >0

        public bool Execute(string sql)
        {

            IDbConnection dbConnection = new SqlConnection(_ConnectionString);
            return (dbConnection.Execute(sql) > 0);


        }

        // load data

        public IEnumerable<T> LoadData<T>(string sql)
        {
            IDbConnection dbConnection = new SqlConnection(_ConnectionString);
            return dbConnection.Query<T>(sql);

        }
        // LoadData single 

        public T LoadDataSingle<T>(string sql)
        {
            IDbConnection dbConnection = new SqlConnection(_ConnectionString);
            return dbConnection.QuerySingle<T>(sql);
        }
    }
}