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
        public readonly ILoggerManager _logger;

        public ConnectionManager(ILoggerManager logger)
        {
            _logger = logger;
        }

        public static SqlConnection GetConnection()
        {
            try
            {
                SqlConnection NewConnection = new SqlConnection("Data Source=Tekfriday282;Initial Catalog=secret_santa;Persist Security Info=True;User ID=sa;Password=friday123!");
                return NewConnection;
            }
            catch (Exception ex)
            {
                _logger.LogError(ex.ToString());
                return ("")
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
    }
}
