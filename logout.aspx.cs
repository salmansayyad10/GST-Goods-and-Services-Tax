using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class logout : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
         
        DateTime DT = DateTime.Now.ToUniversalTime();   //Time And Date
        String ipAddress = System.Web.HttpContext.Current.Request.UserHostAddress;   //IP Address
        SqlCommand cmd1 = new SqlCommand("insert into logout values('" + DT + "','" + ipAddress + "','" + Session["user"] + "')", con);
        cmd1.ExecuteNonQuery();
        con.Close();

        Session.Abandon();
        Response.Redirect("login.aspx");
    }
}