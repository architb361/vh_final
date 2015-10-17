using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class ActivateUser : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Request.QueryString["username"] != null)
        {
            string emailid = Request.QueryString["username"].ToString();
            string qry = "update vh_login set verified=@verified where email_id=@email_id";
            string con_string = WebConfigurationManager.ConnectionStrings["virtualhighsConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(con_string);
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@verified", "true");
            cmd.Parameters.AddWithValue("@email_id", emailid);
            con.Open();
            int res = cmd.ExecuteNonQuery();
            con.Close();
            if (res != 0)
            {
                ClientScript.RegisterStartupScript(GetType(), "Message", "callAlert('Your account have been verified'); window.location='Default.aspx';", true);
            }
        }
        else
            Response.Redirect("~/Default.aspx");
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}