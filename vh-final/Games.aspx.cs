using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Games : System.Web.UI.Page
{
    string gammername = "";
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Session["logedin"] != null)
        {
            lable_email.Visible = false;
            lable_password.Visible = false;
            emailid.Visible = false;
            password.Visible = false;
            login.Visible = false;
            logout.Visible = true;
            g_name.Text = Session["game_name"].ToString();
            gammername = Session["game_name"].ToString();
            g_name.Visible = true;
            Welcome.Visible = true;
            gammerprofile.Visible = true;
            ForgotPassword.Visible = false;
            ClientScript.RegisterStartupScript(GetType(), "Message", "myFunction(\'" + gammername + "\');", true);
        }
        else
        {
            lable_email.Visible = true;
            lable_password.Visible = true;
            emailid.Visible = true;
            password.Visible = true;
            login.Visible = true;
            logout.Visible = false;
            g_name.Visible = false;
            Welcome.Visible = false;
            gammerprofile.Visible = false;
            ForgotPassword.Visible = true;
        }

    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void login_Click(object sender, EventArgs e)
    {
        //  try {
        string con_string = WebConfigurationManager.ConnectionStrings["virtualhighsConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(con_string);
        string qry = "select * from vh_login where email_id=@id and password=@pwd and verified=@verified";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@id", emailid.Text.Trim());
        cmd.Parameters.AddWithValue("@pwd", password.Text.Trim());
        cmd.Parameters.AddWithValue("@verified", "true");
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();

        if (rd.HasRows)
        {
            rd.Read();
            Session["logedin"] = "true";
            Session["email-id"] = emailid.Text.Trim();
            gammername = rd["game_name"].ToString();
            Session["game_name"] = gammername;
            con.Close();

            lable_email.Visible = false;
            lable_password.Visible = false;
            emailid.Visible = false;
            password.Visible = false;
            login.Visible = false;
            logout.Visible = true;
            g_name.Text = gammername;
            g_name.Visible = true;
            Welcome.Visible = true;
            gammerprofile.Visible = true;
            ForgotPassword.Visible = false;
            con.Close();
            ClientScript.RegisterStartupScript(GetType(), "Message", "myFunction(\'" + gammername + "\');", true);
            ClientScript.RegisterStartupScript(GetType(), "Message", "callAlert('Loged in successfully'); window.location='Default.aspx';", true);

        }
        else
        {
            con.Close();
            ClientScript.RegisterStartupScript(GetType(), "Message", "callAlert('Wrong credentials or Email-Id not verified'); window.location='Default.aspx';", true);
        }
        // }
        //  catch(Exception err)
        // {
        //    Response.Write("<script>alert('Sorry some error have occured please try again later')</script>");
        //  }
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["logedin"] = null;
        Session["email-id"] = null;
        Session["game_name"] = null;
        Response.Redirect("~/Default.aspx");

    }
}