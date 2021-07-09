using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class status : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
      
        con.Open();
        DateTime DT = DateTime.Now.ToUniversalTime();   //Time And Date
        String ipAddress = System.Web.HttpContext.Current.Request.UserHostAddress;   //IP Address
        SqlCommand cmd1 = new SqlCommand("insert into online values('" + DT + "','" + ipAddress + "','" + "status.aspx" + "')", con);
        cmd1.ExecuteNonQuery();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String sql = "SELECT * FROM pay WHERE email='" + username.Text + "'AND id='" + sid.Text + "'";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader rd;
        rd = cmd.ExecuteReader();
        Session["user"] = username.Text;
        while (rd.Read())
        {
            Application["idx"] = sid.Text;

            Response.Redirect("app.aspx");
        }

        rd.Close();
        cmd.Dispose();
        con.Close();
        


    }
}