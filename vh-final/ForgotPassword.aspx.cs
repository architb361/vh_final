using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Check_Click(object sender, EventArgs e)
    {
        string con_string = WebConfigurationManager.ConnectionStrings["virtualhighsConnectionString"].ConnectionString;
        string qry = "select * from vh_login where email_id="+"\'"+emailid.Text.Trim()+ "\'";
        SqlDataAdapter ad = new SqlDataAdapter(qry, con_string);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        if(dt.Rows.Count>0)
        {
            Enter_Email_id.Visible = false;
            emailid.Enabled = false;
            Check.Visible = false;
            lable_password.Visible = true;
            lable_cnfpassword.Visible = true;
            password.Visible = true;
            cnfpassword.Visible = true;
            Update.Visible = true;
        }
        else
        {
            ClientScript.RegisterStartupScript(GetType(), "Message", "callAlert('Email-id does not exists')", true);
        }

    }

    protected void Update_Click(object sender, EventArgs e)
    {
        string con_string = WebConfigurationManager.ConnectionStrings["virtualhighsConnectionString"].ConnectionString;
        string qry = "select * from vh_login where email_id=" + "\'" + emailid.Text.Trim() + "\'";
        SqlDataAdapter ad = new SqlDataAdapter(qry, con_string);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            SqlConnection con = new SqlConnection(con_string);
            qry = "update vh_login set password=@password where email_id=@email_id";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@password", password.Text.Trim());
            cmd.Parameters.AddWithValue("@email_id", emailid.Text.Trim());
            con.Open();
            int g = cmd.ExecuteNonQuery();
            con.Close();
            if (g != 0)
            {
                ClientScript.RegisterStartupScript(GetType(), "Message", "callAlert('Password successfully changed'); window.location='Default.aspx';", true);
            }
            else
                ClientScript.RegisterStartupScript(GetType(), "Message", "callAlert('There was some error')", true);
        }
    }
}