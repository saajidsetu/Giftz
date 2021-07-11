using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Giftz.Business_Layer;

namespace Giftz.Presentation_Layer
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Request.QueryString["alert"] == "success")
                {
                    Response.Write("<script>alert('Record saved successfully.');</script>");
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtPassword.Text == txtConfirmPass.Text)
            {
                customer c = new customer
                {
                    username = txtUsername.Text,
                    fullname = txtFullname.Text,
                    email = txtEmail.Text,
                    religion = txtReligion.Text,
                    dob = txtDOB.Text,
                    gender = RadioGender.SelectedItem.Text.ToString(),
                    password =txtPassword.Text
                };

                c.saveRegister();

                
            }
            else
            {
                Response.Write("<script>alert('please upload photo');</script>");
            }

        }

        protected void txtPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtDOB_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtConfirmPass_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtUsername_TextChanged(object sender, EventArgs e)
        {

        }
    }
}