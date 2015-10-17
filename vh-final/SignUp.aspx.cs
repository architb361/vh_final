using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Net;
using System.Net.Mail;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {

    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void signup_Click(object sender, EventArgs e)
    {
        //try
        //{
        string con_string = WebConfigurationManager.ConnectionStrings["virtualhighsConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(con_string);
        string qry = "insert into vh_login values(@name,@game_name,@email_id,@password,@date_of_birth,@contact_no,@verified,@no_of_hrs_played,@free_hrs,@gammer_level,@medals,@other1,@other2,@other3)";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@name", name.Text.Trim());
        cmd.Parameters.AddWithValue("@game_name", gamingname.Text.Trim());
        cmd.Parameters.AddWithValue("@email_id", emailid.Text.Trim());
        cmd.Parameters.AddWithValue("password", password.Text.Trim());
        cmd.Parameters.AddWithValue("@date_of_birth", DOB.Text.Trim());
        cmd.Parameters.AddWithValue("contact_no", contact.Text.Trim());
        cmd.Parameters.AddWithValue("@verified", "false");
        cmd.Parameters.AddWithValue("@no_of_hrs_played", "0");
        cmd.Parameters.AddWithValue("free_hrs", "0");
        cmd.Parameters.AddWithValue("@gammer_level", 1);
        cmd.Parameters.AddWithValue("@medals", "");
        cmd.Parameters.AddWithValue("@other1", "");
        cmd.Parameters.AddWithValue("@other2", "");
        cmd.Parameters.AddWithValue("@other3", "");
        con.Open();

        int res = cmd.ExecuteNonQuery();
        con.Close();
        if (res != 0)
        {
            MailMessage msg = new MailMessage();
            MailAddress frm = new MailAddress("confirmation@virtualhighs.com");
            msg.From = frm;
            MailAddress to = new MailAddress(emailid.Text.Trim());
            msg.To.Add(to);
            msg.Subject = "testing";
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "mail.virtualhighs.com";
            smtp.Port = 25;
            string smsg = "<html><body><h1>Virtual Highs</h1><p>New Registration on our website, find your details below:";
            smsg += "<br/>Name:" + name.Text.Trim();
            smsg += "<br/>Email-id:" + emailid.Text.Trim();
            smsg += "<br/>Password: " + password.Text.Trim();
            smsg += "<br/>Your account is not activated still, please activate it by clicking here:";
            smsg += "<a href=" + "www.virtualhighs.com/ActivateUser.aspx" + "?username=" + emailid.Text + ">" + "Activate</a></p></body></html>";
            msg.Body = smsg;
            msg.IsBodyHtml = true;
            smtp.UseDefaultCredentials = false;
            NetworkCredential nkc = new NetworkCredential("confirmation@virtualhighs.com", "14casper");
            smtp.Credentials = nkc;
            try
            {
                smtp.Send(msg);
            }
            catch (Exception ex)
            {

            }
            ClientScript.RegisterStartupScript(GetType(), "Message", "callAlert('Regiested Successfully'); window.location='Default.aspx';", true);

        }
        else
            ClientScript.RegisterStartupScript(GetType(), "Message", "callAlert('There was some error'); window.location='SignUp.aspx';", true);
        //}
        //catch(Exception ex)
        //{
        //  Response.Write("<script>alert('Sorry ther was some error plese try again later')</script>");
        //  }

    }
}