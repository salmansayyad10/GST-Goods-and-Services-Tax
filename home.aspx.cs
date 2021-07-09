using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class home : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
   


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"]=="")
        {
            Response.Redirect("login.aspx");
        }
        con.Open();
        String ipAddress =System.Web.HttpContext.Current.Request.UserHostAddress; 
       

        Response.Write(Session["user"]);
        DateTime DT= DateTime.Now.ToUniversalTime();
        SqlCommand cmd2 = new SqlCommand("insert into userinfo values('" + DT + "','" + ipAddress + "','" + Session["user"] + "')", con);
        cmd2.ExecuteNonQuery();
        Response.Write("<br>Date and Time:" +DT);

        Response.Write("<br>IP=" + ipAddress);
        con.Close();
    }
}