using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class email : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write(Session["user"]);
        con.Open();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        SqlCommand command = new SqlCommand("SELECT * FROM registration WHERE email='" + t2.Text + "'", con);

            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    /* if (Session["user"] == reader.GetString(7))
                     {
                         Label1.Text = reader.GetString(7) + "=Email ID Already Used";
                     }*/
                    Label1.Text = "Email Id Already Used";
                }
                
            }
                
            else
            {
                reader.Close();
                                      

                SqlCommand cmd = new SqlCommand("UPDATE registration SET email='" + t2.Text + "'WHERE email='" + Session["user"] + "'AND password='" + t3.Text + "'", con);
                int k = cmd.ExecuteNonQuery();
              
                if (k == 0)
                {
                    Label1.Text = "Invalid Password";

                }
                else
                   {
                       Application["idx"] = "Your Email Has Changed Successfully";
                       Response.Redirect("msg.aspx");
                }
                

            }
        con.Close();


    }
}