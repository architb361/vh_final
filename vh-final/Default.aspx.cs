using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {

    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void login_Click(object sender, EventArgs e)
    {
        string con_string = WebConfigurationManager.ConnectionStrings["virtualhighsConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(con_string);
        string qry = "select * from vh_login where email_id=@id and password=@pwd";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@id", emailid.Text.Trim());
        cmd.Parameters.AddWithValue("@pwd", password.Text.Trim());
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();

        if (rd.HasRows)
        {
            Session["logedin"] = "true";
            Session["email-id"] = emailid.Text.Trim();
            con.Close();
            
        }
        else
        {
            con.Close();
            Response.Write("<script>alert('Wrong Email id or Password')</script>");
        }
    }
}