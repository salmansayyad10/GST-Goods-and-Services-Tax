using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class sendm : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write(Session["user"]);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand cmd = new SqlCommand("delete from send WHERE email='" + Session["user"] + "'AND id='" + val1.Text + "'", con);
        int k = cmd.ExecuteNonQuery();
        if (k == 1)
        {
            Response.Write("Deleted");
        }
        else
        {
            Response.Write("Invalid ID OR Password");
        }
    }
}