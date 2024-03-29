﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace SecretSanta.Data.Ado
{
    internal class ConnectionManager
    {
        public static SqlConnection GetConnection()
        {
            SqlConnection NewConnection = new SqlConnection("Data Source=TEJU;Initial Catalog=secret_santa;Integrated Security=True");
            return NewConnection;
        }

        public static SqlConnection GetNewOpenConnection()
        {
            SqlConnection NewConnection = GetConnection();

            NewConnection.Open();

            return NewConnection;
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
