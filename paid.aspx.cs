using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class paid : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
    
        con.Open();

        Response.Write(Session["user"]);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("delete from pay where id='" + id.Text + "'AND email='"+Session["user"]+"'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.DataBind();
        Label1.Visible = true;
        Label1.Text = "deleted";



    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Application["idx"] = id.Text;
        Response.Redirect("form.aspx");
    }
}