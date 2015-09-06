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
        try {
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
                Response.Write("<script>alert('Log-In Successful')</script>");

            }
            else
            {
                con.Close();
                Response.Write("<script>alert('Wrong Email id or Password')</script>");
            }
        }
        catch(Exception err)
        {
            Response.Write("<script>alert('Sorry some error have occured please try again later')</script>");
        }
    }

    protected void Book_Click(object sender, EventArgs e)
    {
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