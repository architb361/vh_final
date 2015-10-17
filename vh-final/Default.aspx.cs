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
            gammername= Session["game_name"].ToString();
            g_name.Visible = true;
            Welcome.Visible = true;
            gammerprofile.Visible = true;
            ForgotPassword.Visible = false;
            ClientScript.RegisterStartupScript(GetType(), "", "myFunction('Log-out'); myheader('Log-out'); mygamename(\'" + gammername + "\');", true);
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
            ClientScript.RegisterStartupScript(GetType(), "", "myFunction('Log-out'); myheader('Log-out'); mygamename(\'" + gammername + "\');", true);
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

    protected void Book_Click(object sender, EventArgs e)
    {
        DateTime now = DateTime.Now;
        DateTime us = now.AddHours(11);
        DateTime US = us.AddMinutes(30);
        if (US.Hour == 23 && US.Minute > 30)
            ClientScript.RegisterStartupScript(GetType(), "Message", "callAlert('Booking is not allowed between 11:30 pm to 12:00 am'); window.location='Default.aspx';", true);
        else
        {
            if (Session["logedin"] != null)
            {
                Response.Redirect("~/Booking.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "Message", "callAlert('Please Log-In to book'); window.location='Default.aspx'", true);
            }
        }
    }
}