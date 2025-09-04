using System;
using System.Data;
using Dapper;
using Microsoft.Data.SqlClient;

namespace HomeInventorySystem
{
    internal class Program
    {
        static void Main(string[] args)
        {
            DataContextDapper dapper = new DataContextDapper();

            DateTime result = dapper.LoadDataSingle<DateTime>("SELECT GETDATE();");
            System.Console.WriteLine(result);

        }
    }
}