using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void signup_Click(object sender, EventArgs e)
    {
        try
        {
            string con_string = WebConfigurationManager.ConnectionStrings["virtualhighsConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(con_string);
            string qry = "insert into vh_login values(@name,@game_name,@email_id,@password,@contact_no)";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@name", name.Text.Trim());
            cmd.Parameters.AddWithValue("@game_name", gamingname.Text.Trim());
            cmd.Parameters.AddWithValue("@email_id", emailid.Text.Trim());
            cmd.Parameters.AddWithValue("password", password.Text.Trim());
            cmd.Parameters.AddWithValue("contact_no", contact.Text.Trim());
            con.Open();
         
            int res = cmd.ExecuteNonQuery();
            con.Close();
            if (res != 0)
            {
                Response.Write("<script>alert('Regiested Successfully')</script>");

            }
            else
                Response.Write("<script>alert('There was some error')</script>");
        }
        catch(Exception ex)
        {
            Response.Write("<script>alert('Sorry ther was some error plese try again later')</script>");
        }

    }
}