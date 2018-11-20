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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tbl_User", con);
            SqlDataReader rd = cmd.ExecuteReader();
            while(rd.Read())
            {
                if (txt_Username.Text==rd["User"].ToString() && txt_Password.Text==rd["Pass"].ToString())
                {
                    Session["UserStatus"] = txt_Username.Text;
                    rd.Close();
                    con.Close();
                    Response.Redirect("Default.aspx");
                }
            }
            rd.Close();
            con.Close();
        }
    }
}