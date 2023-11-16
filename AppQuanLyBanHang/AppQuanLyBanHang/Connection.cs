using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace AppQuanLyBanHang
{
    internal class Connection
    {
        private static string stringConnection = @"Data Source=LAPTOP-RHGDOGMA\DUC;Initial Catalog=WebsiteBanHang;Integrated Security=True;User ID=MyLogin;Password=123";
        public static SqlConnection GetSqlConnection()
        {
            return new SqlConnection(stringConnection);
        }

    }
}