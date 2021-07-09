using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class feedback : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    DateTime DT = DateTime.Now.ToUniversalTime();   //Time And Date
    String ipAddress = System.Web.HttpContext.Current.Request.UserHostAddress;   //IP Address
     
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
           SqlCommand cmd1 = new SqlCommand("insert into online values('" + DT + "','" + ipAddress + "','" + "feedback.aspx" + "')", con);
        cmd1.ExecuteNonQuery();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand cmd = new SqlCommand("insert into feedback values('" +ipAddress+ "','" + DT + "','" +name.Text + "','" + email.Text + "','" + subject.Text + "','" + feed.Text + "')",con);
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.DataBind();
        Label1.Visible = true;
        Label1.Text = "Datat inserted";
    }
}