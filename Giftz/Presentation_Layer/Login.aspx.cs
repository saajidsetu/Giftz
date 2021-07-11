using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Giftz.Presentation_Layer
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=ARIF-PC\SQLEXPRESS;Initial Catalog=Giftz;Integrated Security=True");
            con.Open();

            string query = "sp_checkLogin";

            SqlCommand cmd = new SqlCommand(query,con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@user", txtLoginID.Text);
            cmd.Parameters.AddWithValue("@pass", txtPassword.Text);
            

            string output = cmd.ExecuteScalar().ToString();

            if (output == "1")
            {
                Response.Redirect("");
            }

            else
            {
                lbl_alert.Text = "failed";
                con.Close();
            }

          


        }
    }
}