using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class lname : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write(Session["user"]);
        con.Open();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("UPDATE registration SET lname='" + t2.Text + "'WHERE email='" + Session["user"] + "'AND password='" + t3.Text + "'", con);

        int k = cmd.ExecuteNonQuery();
        if (k > 0)
        {
            Label1.Text = "Last Name Updated";
        }
        else
        {
            Label1.Text = "Invalid Password";
        }


        con.Close();


    }
}