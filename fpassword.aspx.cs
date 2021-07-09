using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class fpassword : System.Web.UI.Page
{
 
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        DateTime DT = DateTime.Now.ToUniversalTime();   //Time And Date
        String ipAddress = System.Web.HttpContext.Current.Request.UserHostAddress;   //IP Address
        SqlCommand cmd1 = new SqlCommand("insert into online values('" + DT + "','" + ipAddress + "','" + "fpassword.aspx" + "')", con);
        cmd1.ExecuteNonQuery();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand command = new SqlCommand("SELECT * FROM registration WHERE email='" + email.Text + "'AND que='"+que.Text+"'AND answer='"+ans.Text+"'", con);
                                                                                 
        SqlDataReader reader = command.ExecuteReader();
        if (reader.HasRows)
        {
            while (reader.Read())
            {

                Response.Write(reader.GetString(17));
            }

        }



    }
}