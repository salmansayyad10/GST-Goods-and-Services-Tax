using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class utime : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("UPDATE online SET " + cal.Text + "='" + value.Text + "'WHERE id= '" + val.Text + "'", con);
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("delete from online where id='" + val1.Text + "'", con);
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