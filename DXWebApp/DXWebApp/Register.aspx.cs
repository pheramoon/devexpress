using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DXWebApp
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Register_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(string.Format("INSERT INTO [tbl_User] ([User], [Pass], [Mail], [Address], [Tel]) VALUES ('{0}','{1}','{2}','{3}','{4}')", txt_Username.Text, txt_Password.Text, txt_Mail.Text, txt_Address.Text, txt_Tel.Text), con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Register.aspx?msg=Your registration was successful");
        }
    }
}