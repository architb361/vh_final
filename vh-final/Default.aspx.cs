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
            g_name.Visible = true;
            Welcome.Visible = true;
            gammerprofile.Visible = true;
            ForgotPassword.Visible = false;
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
        string qry = "select * from vh_login where email_id=@id and password=@pwd";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@id", emailid.Text.Trim());
        cmd.Parameters.AddWithValue("@pwd", password.Text.Trim());
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
            ClientScript.RegisterStartupScript(GetType(), "Message", "callAlert('Loged in successfully')", true);
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "none", "<script>$('#mymodal').modal('show');</script>", false);

        }
        else
        {
            con.Close();
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
        Response.Redirect("~/Default.aspx");

    }

    protected void Book_Click(object sender, EventArgs e)
    {
        DateTime now = DateTime.Now;
        if (now.Hour == 23 && now.Minute > 30)
            Response.Write("<script>alert('Booking not allowed between 11:30 to 12:00')</script>");

        if (Session["logedin"] != null)
        {
            Response.Redirect("~/Booking.aspx");
        }
        else
        {
            Response.Write("<script>alert('Please Log-In to book')</script>");
        }
    }
}