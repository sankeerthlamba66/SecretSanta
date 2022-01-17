using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using SecretSanta.Models.Logger;

namespace SecretSanta.Data.Ado
{
    internal class ConnectionManager
    {
        public static SqlConnection GetConnection()
        {
            try
            {
                SqlConnection NewConnection = new SqlConnection("Data Source=Tekfriday282;Initial Catalog=secret_santa;Persist Security Info=True;User ID=sa;Password=friday123!");
                return NewConnection;
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public static SqlConnection GetNewOpenConnection()
        {
            try
            {
                SqlConnection NewConnection = GetConnection();

                NewConnection.Open();

                return NewConnection;
            }
            catch(Exception ex)
            {
                throw;
            }
        }

        public static void CloseConnectionIfOpen(SqlConnection? Conn)
        {
            if (Conn is not null && Conn.State == System.Data.ConnectionState.Open)
            {
                Conn.Close();
            }
        }

        public static void CloseReaderIfOpen(SqlDataReader Reader)
        {
            if (Reader != null && !Reader.IsClosed)
            {
                Reader.Close();
            }
        }
        public static SqlConnection GetConnectionLog()
        {
            try
            {
                SqlConnection NewConnection = new SqlConnection("Data Source=TEKFRIDAY282;Initial Catalog=Error_Log;User ID=sa;Password=friday123!;Connect Timeout=60;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
                return NewConnection;
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        public static SqlConnection GetNewOpenConnectionLog()
        {
            try
            {
                SqlConnection NewConnection = GetConnectionLog();

                NewConnection.Open();

                return NewConnection;
            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}
