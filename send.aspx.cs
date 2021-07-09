using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class send : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    DateTime DT = DateTime.Now.ToUniversalTime();   //Time And Date
    String ipAddress = System.Web.HttpContext.Current.Request.UserHostAddress;   //IP Address

    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write(Session["user"]);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand cmd = new SqlCommand("insert into send values('" + ipAddress + "','" + DT + "','" + Session["user"] + "','" + subject.Text + "','" + message.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Label1.Text = "Message Has Been Send";
    }
}