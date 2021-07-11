using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Giftz.Data_Layer
{
    public class DataAccess
    {
        public static string ConnectionString
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString.ToString();
            }
        }

        public static SqlParameter AddParameter(string parameterName, object value, SqlDbType DbType, int size)
        {
            SqlParameter param = new SqlParameter();
            param.ParameterName = parameterName;
            param.Value = value.ToString();
            param.SqlDbType = DbType;
            param.Size = size;
            param.Direction = ParameterDirection.Input;
            return param;
        }

        public static DataTable ExecuteDTByProcedure(string ProcedureName, SqlParameter[] Params)
        {
            SqlConnection conn = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = ProcedureName;
            cmd.Parameters.AddRange(Params);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter adopter = new SqlDataAdapter(cmd);
            DataTable dTable = new DataTable();

            try
            {
                adopter.Fill(dTable);
            }
            catch (Exception ex)
            {

            }
            finally
            {
                //Displaying objects

                adopter.Dispose();
                cmd.Parameters.Clear();
                cmd.Dispose();
                conn.Dispose();
            }
            return dTable;
        }
        public static DataSet GetAllData()
        {
            SqlConnection conn = new SqlConnection(ConnectionString);
            string sqlCommand = "Select * from Product";
            //SqlCommand cmd = new SqlCommand(sqlCommand,conn);
            //SqlDataReader reader=cmd.EndExecuteReader();
            SqlDataAdapter ad = new SqlDataAdapter(sqlCommand, conn);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            return ds;


        }
    }
}
