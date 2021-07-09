using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class ulogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["user"] == "Iamadmin")
        {
            Response.Redirect("admin.aspx");
        }
        else
        {
            con.Open();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("UPDATE userinfo SET " + cal.Text + "='" + value.Text + "'WHERE id= '" + val.Text + "'", con);
        int k = cmd.ExecuteNonQuery();
        if (k == 1)
        {
            Response.Write("Updated");
        }
        else
        {
            Response.Write("Invalid ID");
        }
    }

    
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("UPDATE logout SET " + cal0.Text + "='" + value0.Text + "'WHERE id= '" + val2.Text + "'", con);
        int k = cmd.ExecuteNonQuery();
        if (k == 1)
        {
            Response.Write("Updated");
        }
        else
        {
            Response.Write("Invalid ID");
        }


    }
    protected void Button4_Click(object sender, EventArgs e)
    {

        SqlCommand cmd = new SqlCommand("delete from logout where id='" + val3.Text + "'", con);
        int k = cmd.ExecuteNonQuery();
        if (k == 1)
        {
            Response.Write("Deleted");
        }
        else
        {
            Response.Write("Invalid ID");
        }
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("delete from userinfo where id='" + val1.Text + "'", con);
        int k = cmd.ExecuteNonQuery();
        if (k == 1)
        {
            Response.Write("Deleted");
        }
        else
        {
            Response.Write("Invalid ID");
        }

    }
}