using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class usend : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    DateTime DT = DateTime.Now.ToUniversalTime();   //Time And Date
    String ipAddress = System.Web.HttpContext.Current.Request.UserHostAddress;   //IP Address
    int em = 0;

    protected void Page_Load(object sender, EventArgs e)
    {

        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

           SqlCommand command = new SqlCommand("SELECT * FROM registration WHERE email='" + email.Text +"'", con);

            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    if (email.Text == reader.GetString(7))
                    {
                        Label1.Text = reader.GetString(7);
                        em = 1;
                    }
                }
                reader.Close();

            }

            if (em == 1)
            {
                SqlCommand cmd = new SqlCommand("insert into inbox values('" + ipAddress + "','" + DT + "','" + email.Text + "','" + subject.Text + "','" + message.Text + "')", con);
               cmd.ExecuteNonQuery();
               SqlCommand cmd1 = new SqlCommand("insert into inbox2 values('" + DT + "','" + email.Text + "','" + subject.Text + "','" + message.Text + "')", con);
               cmd1.ExecuteNonQuery();
                 Label1.Text = "Message Has Been Send";
                  con.Close();
            }
            else
            {
                Label1.Text = "Invalid Email ID";
            }
    }
}