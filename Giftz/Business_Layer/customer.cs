using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Giftz.Data_Layer;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Giftz.Business_Layer
{
    public class customer
    {
        public string username { get; set; }
        public string fullname { get; set; }
        public string email { get; set; }
        public string dob { get; set; }
        public string religion { get; set; }
        public string gender { get; set; }
        public string password { get; set; }


        public void saveRegister()
        {
            string date = dob.ToString();
            string.Format("{0: dd/MM/yyyy}", date);
            SqlParameter[] parameter = new SqlParameter[7];
            parameter[0] = Data_Layer.DataAccess.AddParameter("@username", username, System.Data.SqlDbType.VarChar, 200);
            parameter[1] = Data_Layer.DataAccess.AddParameter("@fullname", fullname, System.Data.SqlDbType.VarChar, 500);
            parameter[2] = Data_Layer.DataAccess.AddParameter("@email", email, System.Data.SqlDbType.VarChar, 500);
            parameter[3] = Data_Layer.DataAccess.AddParameter("@religion", religion, System.Data.SqlDbType.VarChar, 40);
            parameter[4] = Data_Layer.DataAccess.AddParameter("@dob", date, System.Data.SqlDbType.VarChar, 40);
            parameter[5] = Data_Layer.DataAccess.AddParameter("@gender", gender, System.Data.SqlDbType.VarChar, 40);
            parameter[6] = Data_Layer.DataAccess.AddParameter("@password", password, System.Data.SqlDbType.VarChar, 40);

            DataTable dt = Data_Layer.DataAccess.ExecuteDTByProcedure("SP_saveInfo", parameter);
        }
    }
}