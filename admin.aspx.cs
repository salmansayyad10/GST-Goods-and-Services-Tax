using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        DateTime DT = DateTime.Now.ToUniversalTime();   //Time And Date
        String ipAddress = System.Web.HttpContext.Current.Request.UserHostAddress;   //IP Address
        SqlCommand cmd1 = new SqlCommand("insert into online values('" + DT + "','" + ipAddress + "','" + "admin.aspx" + "')", con);
        cmd1.ExecuteNonQuery();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (username.Text == "Iamadmin" && password.Text =="admin")
        {
            Session["user"] = username.Text;
            Response.Redirect("sourcehpeiSUxdXbHuMIjTvwSg6Y7ACQqgstoqgstgslpsyab30i131j0j0i131j0j0i131j0l2j0i131l2j02136240929000003729030j3j0j101gwswizv3FdqJu8Wwed0ahUKEwjxtsTqjZTkAhWI6Y8KHaC0A5gQ4dUDCAUuact5.aspx");

        }


    }
}